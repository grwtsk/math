import FilesystemCodec.Codec

/-!
# Graded filesystem packet fibers

Valid filesystem packets have a dependent row count.  This module makes that
count an explicit grade, embeds each fixed-grade valid image into a finite
ambient field-row state, and records validity there as an image predicate.

The ambient state retains the payload-length register but deliberately drops
canonical-padding and serializer-image proofs.  Each row is interpreted only
through the selected `RowFieldEncoding`; its polynomial, basis, coordinate
order, and endianness remain model parameters.  No avalanche property follows
from the field-row permutations defined below.
-/

namespace FilesystemCodec

universe u v

/-! ## Grading the valid packet image -/

/-- Valid packets emitted by `C` whose dependent row count is exactly `k`. -/
def FilesystemMatrixCodec.ValidPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :=
  {p : C.ValidPacketType // p.1.rows = k}

namespace FilesystemMatrixCodec

/-- Split a valid packet into its row grade and its fixed-grade fiber. -/
noncomputable def validPacketGradeEquiv
    (C : FilesystemMatrixCodec Snapshot r) :
    C.ValidPacketType ≃ Σ k, C.ValidPacketFiber k where
  toFun p := ⟨p.1.rows, ⟨p, rfl⟩⟩
  invFun graded := graded.2.1
  left_inv p := rfl
  right_inv graded := by
    rcases graded with ⟨k, p, hp⟩
    subst k
    rfl

/-- The lossless snapshot code with the packet row count exposed as a grade. -/
noncomputable def snapshotGradeEquiv
    (C : FilesystemMatrixCodec Snapshot r) :
    Snapshot ≃ Σ k, C.ValidPacketFiber k :=
  C.snapshotEquivValidPacket.trans C.validPacketGradeEquiv

end FilesystemMatrixCodec

/-!
Stable root-namespace spellings for the grading API.  The method-style
declarations above remain available as `C.ValidPacketFiber`,
`C.validPacketGradeEquiv`, and `C.snapshotGradeEquiv`.
-/

/-- Root-namespace spelling of a codec's fixed valid-packet grade. -/
abbrev ValidPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :=
  FilesystemMatrixCodec.ValidPacketFiber C k

/-- Root-namespace spelling of the valid-packet grading equivalence. -/
noncomputable def validPacketGradeEquiv
    (C : FilesystemMatrixCodec Snapshot r) :
    C.ValidPacketType ≃ Σ k, ValidPacketFiber C k :=
  FilesystemMatrixCodec.validPacketGradeEquiv C

/-- Root-namespace spelling of the lossless snapshot grading equivalence. -/
noncomputable def snapshotGradeEquiv
    (C : FilesystemMatrixCodec Snapshot r) :
    Snapshot ≃ Σ k, ValidPacketFiber C k :=
  FilesystemMatrixCodec.snapshotGradeEquiv C

/-! ## Fixed-grade snapshot presentation -/

/-- Snapshots whose encoded valid packet has exactly row grade `k`. -/
def SnapshotFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :=
  {snapshot : Snapshot // (C.encode snapshot).rows = k}

/--
At a fixed grade, snapshots and valid packet-image values are equivalent.  The
proof uses the existing lossless image equivalence; it does not identify
snapshots with arbitrary packets.
-/
noncomputable def snapshotFiberEquivValidPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    SnapshotFiber C k ≃ C.ValidPacketFiber k where
  toFun snapshot :=
    ⟨C.snapshotEquivValidPacket snapshot.1, snapshot.property⟩
  invFun packet :=
    ⟨C.snapshotEquivValidPacket.symm packet.1, by
      have hpacket :
          C.encode (C.snapshotEquivValidPacket.symm packet.1) = packet.1.1 := by
        change
          (C.snapshotEquivValidPacket
            (C.snapshotEquivValidPacket.symm packet.1)).1 = packet.1.1
        rw [C.snapshotEquivValidPacket.apply_symm_apply]
      rw [hpacket]
      exact packet.property⟩
  left_inv snapshot := by
    apply Subtype.ext
    exact C.snapshotEquivValidPacket.symm_apply_apply snapshot.1
  right_inv packet := by
    apply Subtype.ext
    exact C.snapshotEquivValidPacket.apply_symm_apply packet.1

/-! ## Finite ambient fibers -/

/--
An ambient fixed-row field state.  The finite length coordinate ranges from
zero through the full `k*r`-bit capacity.
-/
structure AmbientPacketFiber
    (F : Type u)
    (r k : Nat) where
  payloadBits : Fin (k * r + 1)
  fieldRows : Fin k → F

/-- Product presentation used to obtain the finite ambient instance. -/
def ambientPacketFiberProdEquiv :
    (Fin (k * r + 1) × (Fin k → F)) ≃ AmbientPacketFiber F r k where
  toFun a := ⟨a.1, a.2⟩
  invFun a := (a.payloadBits, a.fieldRows)
  left_inv _ := rfl
  right_inv _ := rfl

noncomputable instance [Fintype F] : Fintype (AmbientPacketFiber F r k) :=
  Fintype.ofEquiv (Fin (k * r + 1) × (Fin k → F))
    ambientPacketFiberProdEquiv

noncomputable instance [Fintype F] :
    DecidableEq (AmbientPacketFiber F r k) :=
  Classical.decEq _

variable {F : Type v}
variable [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]

/-- Reindex a fixed-grade packet matrix along its certified row equality. -/
private def validPacketFiberMatrix
    (C : FilesystemMatrixCodec Snapshot r)
    {k : Nat}
    (p : C.ValidPacketFiber k) :
    BinMat k r :=
  cast (congrArg (fun rows => BinMat rows r) p.property) p.1.1.matrix

/--
Forget proofs from a fixed-grade packet while retaining its complete finite
payload-length/matrix data.  This supplies finiteness independently of a field
encoding.
-/
private def validPacketFiberToFiniteData
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    C.ValidPacketFiber k ↪
      (Fin (k * r + 1) × BinMat k r) where
  toFun p :=
    (⟨p.1.1.payloadBits, by
      have hcapacity := p.1.1.capacity
      rw [p.property] at hcapacity
      omega⟩,
      validPacketFiberMatrix C p)
  inj' p q h := by
    have hlength := congrArg (fun data => data.1.val) h
    have hmatrix := congrArg (fun data => data.2) h
    apply Subtype.ext
    apply Subtype.ext
    apply Subtype.ext
    apply RawBitPacket.ext
    · exact p.property.trans q.property.symm
    · exact
        (cast_heq
          (congrArg (fun rows => BinMat rows r) p.property)
          p.1.1.matrix).symm.trans
          ((heq_of_eq hmatrix).trans
            (cast_heq
              (congrArg (fun rows => BinMat rows r) q.property)
              q.1.1.matrix))
    · exact hlength

noncomputable instance validPacketFiberFintype
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    Fintype (C.ValidPacketFiber k) :=
  Fintype.ofInjective (validPacketFiberToFiniteData C k)
    (validPacketFiberToFiniteData C k).injective

noncomputable instance validPacketFiberDecidableEq
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    DecidableEq (C.ValidPacketFiber k) :=
  Classical.decEq _

noncomputable instance snapshotFiberFintype
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    Fintype (SnapshotFiber C k) :=
  Fintype.ofEquiv (C.ValidPacketFiber k)
    (snapshotFiberEquivValidPacketFiber C k).symm

noncomputable instance snapshotFiberDecidableEq
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    DecidableEq (SnapshotFiber C k) :=
  Classical.decEq _

/--
Embed a fixed-grade valid packet into the ambient length/field-row state.  The
map forgets only proofs: the payload length and every matrix row are retained.
-/
def validPacketFiberToAmbient
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    C.ValidPacketFiber k ↪ AmbientPacketFiber F r k where
  toFun p :=
    { payloadBits := ⟨p.1.1.payloadBits, by
        have hcapacity := p.1.1.capacity
        rw [p.property] at hcapacity
        omega⟩
      fieldRows := rowVectorEquiv E k (validPacketFiberMatrix C p) }
  inj' p q h := by
    have hlength := congrArg
      (fun a : AmbientPacketFiber F r k => a.payloadBits.val) h
    have hfields := congrArg
      (fun a : AmbientPacketFiber F r k => a.fieldRows) h
    have hmatrix : validPacketFiberMatrix C p =
        validPacketFiberMatrix C q :=
      (rowVectorEquiv E k).injective hfields
    apply Subtype.ext
    apply Subtype.ext
    apply Subtype.ext
    apply RawBitPacket.ext
    · exact p.property.trans q.property.symm
    · exact
        (cast_heq
          (congrArg (fun rows => BinMat rows r) p.property)
          p.1.1.matrix).symm.trans
          ((heq_of_eq hmatrix).trans
            (cast_heq
              (congrArg (fun rows => BinMat rows r) q.property)
              q.1.1.matrix))
    · exact hlength

/-- The image predicate for valid serializer packets inside an ambient fiber. -/
def CodecValidAmbient
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat)
    (a : AmbientPacketFiber F r k) :
    Prop :=
  ∃ p : C.ValidPacketFiber k,
    validPacketFiberToAmbient C E k p = a

/-- Ambient states certified to come from a valid packet of grade `k`. -/
abbrev CodecValidAmbientType
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :=
  {a : AmbientPacketFiber F r k // CodecValidAmbient C E k a}

/-- A fixed-grade packet fiber is exactly equivalent to its ambient image. -/
noncomputable def validPacketFiberEquivAmbientImage
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    C.ValidPacketFiber k ≃ CodecValidAmbientType C E k where
  toFun p := ⟨validPacketFiberToAmbient C E k p, ⟨p, rfl⟩⟩
  invFun a := Classical.choose a.property
  left_inv p := by
    apply (validPacketFiberToAmbient C E k).injective
    exact Classical.choose_spec
      ((show CodecValidAmbient C E k
          (validPacketFiberToAmbient C E k p) from ⟨p, rfl⟩))
  right_inv a := by
    apply Subtype.ext
    exact Classical.choose_spec a.property

noncomputable instance codecValidAmbientTypeFintype
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    Fintype (CodecValidAmbientType C E k) :=
  Fintype.ofEquiv (C.ValidPacketFiber k)
    (validPacketFiberEquivAmbientImage C E k)

noncomputable instance codecValidAmbientTypeDecidableEq
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (k : Nat) :
    DecidableEq (CodecValidAmbientType C E k) :=
  Classical.decEq _

/-! ## Ambient row permutations -/

variable {F : Type u}

/-- Lift a row-vector permutation while leaving the framing length unchanged. -/
def ambientPacketPerm
    (rowPerm : Equiv.Perm (Fin k → F)) :
    Equiv.Perm (AmbientPacketFiber F r k) where
  toFun a := ⟨a.payloadBits, rowPerm a.fieldRows⟩
  invFun a := ⟨a.payloadBits, rowPerm.symm a.fieldRows⟩
  left_inv a := by
    cases a
    simp
  right_inv a := by
    cases a
    simp

@[simp]
theorem ambientPacketPerm_payloadBits
    (rowPerm : Equiv.Perm (Fin k → F))
    (a : AmbientPacketFiber F r k) :
    (ambientPacketPerm rowPerm a).payloadBits = a.payloadBits :=
  rfl

@[simp]
theorem ambientPacketPerm_fieldRows
    (rowPerm : Equiv.Perm (Fin k → F))
    (a : AmbientPacketFiber F r k) :
    (ambientPacketPerm rowPerm a).fieldRows = rowPerm a.fieldRows :=
  rfl

/-- Apply a field permutation independently to every row coordinate. -/
def pointwiseFieldPerm
    (R : F ≃ F)
    (k : Nat) :
    Equiv.Perm (Fin k → F) :=
  Equiv.piCongrRight (fun _ => R)

@[simp]
theorem pointwiseFieldPerm_apply
    (R : F ≃ F)
    (values : Fin k → F)
    (i : Fin k) :
    pointwiseFieldPerm R k values i = R (values i) :=
  rfl

/--
Relabel row coordinates, with source row `i` moving to coordinate `π i`.
-/
def coordinateFieldPerm
    (π : Equiv.Perm (Fin k)) :
    Equiv.Perm (Fin k → F) where
  toFun values i := values (π.symm i)
  invFun values i := values (π i)
  left_inv values := by
    funext i
    simp
  right_inv values := by
    funext i
    simp

@[simp]
theorem coordinateFieldPerm_apply
    (π : Equiv.Perm (Fin k))
    (values : Fin k → F)
    (i : Fin k) :
    coordinateFieldPerm π values i = values (π.symm i) :=
  rfl

end FilesystemCodec
