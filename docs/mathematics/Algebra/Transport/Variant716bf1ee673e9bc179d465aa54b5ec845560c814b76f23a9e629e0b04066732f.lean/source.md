# Complete source: GRWTSK.Algebra.Transport.Variant716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd771ec8f8b64b6f7833938b3f3cef9ba2563f60` · SHA-256 `716bf1ee673e9bc179d465aa54b5ec845560c814b76f23a9e629e0b04066732f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FilesystemHomology.EditComplex
import FilesystemDynamics.FirstReturn
import DAF.Homology.HomologicalLift

/-!
# Conditional homological transport for filesystem first return

The finite first-return construction produces a permutation of every value of
the explicitly declared `Snapshot` model.  It does **not** automatically act
on a separately chosen edit topology.  Homology preservation in this module is
therefore conditional on a `DAF.Homology.HomologicalLift`: an actual integral
chain-complex automorphism whose degree-zero action agrees with the snapshot
permutation.  `FilesystemEditPresentation.Action` is one concrete adapter that
supplies that generic lift.

Applying Mathlib's homology functor to the chain isomorphism gives an
isomorphism in every degree.  Its underlying additive equivalence preserves
both additive order and the integral torsion subgroup.  “Torsion
preservation” is not a claim that homology is torsionless; free and torsion
parts are both transported by the same integral isomorphism.

These results make no SAC, differential-uniformity, propagation-weight,
correlation, branch-number, or cryptographic-diffusion claim.  Cycle structure
likewise does not imply avalanche behavior.  First return proves bijectivity,
not efficiency: an ambient orbit may be long before it next reaches the valid
image.  The construction acts on the lossless valid-packet representation and
does not invert a fixed-width commitment.  Finally, “all filesystems” here
means all values of the selected `Snapshot` model, not unmodeled host operating
system semantics.
-/

namespace FilesystemHomology

open CategoryTheory
open DAF.Homology

universe u v

/-! ## Edit-presentation actions supply homological lifts -/

namespace FilesystemEditPresentation.Action

variable {Snapshot : Type u}
variable {M : FilesystemEditPresentation Snapshot}
variable {H : Equiv.Perm Snapshot}

/-- A compatible edit action supplies the generic chain-lift interface. -/
noncomputable def toHomologicalLift (A : M.Action H) :
    HomologicalLift Snapshot H M.toChainComplex where
  vertex snapshot := Finsupp.single snapshot 1
  chainIso := A.toChainIso
  degreeZero_agrees := A.toChainIso_vertex

end FilesystemEditPresentation.Action

/-! ## The filesystem first-return headline theorem -/

open FilesystemCodec

/--
A compatible action of filesystem first return on an edit presentation induces
an integral homology automorphism in every degree.
-/
noncomputable def filesystemFirstReturn_induces_homologyIso
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat) :
    M.toChainComplex.homology q ≅ M.toChainComplex.homology q :=
  (A.toHomologicalLift).homologyIso q

/--
The induced filesystem first-return homology automorphism preserves and
reflects integral torsion classes.
-/
theorem filesystemFirstReturn_preserves_torsion
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BitMatrix.FiniteField.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat)
    (x : M.toChainComplex.homology q) :
    IsOfFinAddOrder
        ((A.toHomologicalLift).homologyAddEquiv q x) ↔
      IsOfFinAddOrder x :=
  (A.toHomologicalLift).homologyIso_isOfFinAddOrder_iff q x

end FilesystemHomology
```
