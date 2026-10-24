# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModularWave.Variant5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ae49f28544a8f52f3a28f55657ea07833511089` · SHA-256 `5097df3d4ff611f9f28cfb12fd637a033cf5eae708f66624666e14b6877c50ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kernel.Checked

set_option autoImplicit false

namespace FWR.Manuscript.ModularWave

/-
This module formalizes the finite modular-wave to BitMatrix projection layer.
It proves only coherent finite projection from supplied maps. It does not prove
modularity, analytic continuation, RH, FLT, or any automorphic theorem.
-/

universe u

structure Stage where
  L : Type u
  E : Type u
  N : Type u
  B : Type u
  W : Type u
  T : Type u
  C : Type u
  lToE : L -> E
  eToN : E -> N
  nToB : N -> B
  decode : B -> W
  trace : W -> T
  compact : T -> C
  pole : B -> W

namespace Stage

def lowerToBit (S : Stage.{u}) (l : S.L) : S.B :=
  S.nToB (S.eToN (S.lToE l))

def publicTrace (S : Stage.{u}) (l : S.L) : S.T :=
  S.trace (S.decode (S.lowerToBit l))

def publicCompact (S : Stage.{u}) (l : S.L) : S.C :=
  S.compact (S.publicTrace l)

def orderedPoleStream (S : Stage.{u}) (l : S.L) : S.W :=
  S.pole (S.lowerToBit l)

end Stage

structure PublicWitness (S : Stage.{u}) where
  bitstream : S.B
  orderedPoleStream : S.W
  traceQuotient : S.T
  compactShell : S.C

def makePublicWitness (S : Stage.{u}) (l : S.L) : PublicWitness S where
  bitstream := S.lowerToBit l
  orderedPoleStream := S.orderedPoleStream l
  traceQuotient := S.publicTrace l
  compactShell := S.publicCompact l

def coherentProjectionClaim (S : Stage.{u}) : Prop :=
  ∀ l : S.L,
    ∃ w : PublicWitness S,
      w.bitstream = S.lowerToBit l ∧
      w.orderedPoleStream = S.orderedPoleStream l ∧
      w.traceQuotient = S.publicTrace l ∧
      w.compactShell = S.publicCompact l

theorem coherentProjection (S : Stage.{u}) :
    coherentProjectionClaim S := by
  intro l
  exact ⟨makePublicWitness S l, rfl, rfl, rfl, rfl⟩

def finiteModularWaveWitness (S : Stage.{u}) :
    Checked (coherentProjectionClaim S) :=
  Checked.proved (coherentProjection S)

theorem finiteModularWaveWitness_isProved (S : Stage.{u}) :
    (finiteModularWaveWitness S).isProved = true := by
  rfl

structure Attempt where
  HasQWaveTruncation : Prop
  HasCoefficientDomain : Prop
  HasLoweringToEML : Prop
  HasEMLToNAND : Prop
  HasNANDToBitMatrix : Prop
  HasDecoderHooks : Prop
  HasTraceProjection : Prop
  HasCompactProjection : Prop

namespace Attempt

structure Valid (A : Attempt) : Prop where
  qWaveTruncation : A.HasQWaveTruncation
  coefficientDomain : A.HasCoefficientDomain
  loweringToEML : A.HasLoweringToEML
  emlToNAND : A.HasEMLToNAND
  nandToBitMatrix : A.HasNANDToBitMatrix
  decoderHooks : A.HasDecoderHooks
  traceProjection : A.HasTraceProjection
  compactProjection : A.HasCompactProjection

inductive Atom where
  | qWaveTruncation
  | coefficientDomain
  | lfunctionToEML
  | emlToNAND
  | nandToBitMatrix
  | bitMatrixDecoder
  | orderedPoleProjection
  | traceQuotientProjection
  | compactShellProjection
  | noExternalModularityAuthority
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .qWaveTruncation => "qWaveTruncation"
  | .coefficientDomain => "coefficientDomain"
  | .lfunctionToEML => "lfunctionToEML"
  | .emlToNAND => "emlToNAND"
  | .nandToBitMatrix => "nandToBitMatrix"
  | .bitMatrixDecoder => "bitMatrixDecoder"
  | .orderedPoleProjection => "orderedPoleProjection"
  | .traceQuotientProjection => "traceQuotientProjection"
  | .compactShellProjection => "compactShellProjection"
  | .noExternalModularityAuthority => "noExternalModularityAuthority"

def atomResidue (a : Atom) : Residue :=
  { target := Target.ModularWaveBitMatrix
    atomId := Atom.id a
    kind :=
      match a with
      | .qWaveTruncation => ResidueKind.missingFiniteWitness
      | .coefficientDomain => ResidueKind.missingDefinition
      | .lfunctionToEML => ResidueKind.missingLowering
      | .emlToNAND => ResidueKind.missingLowering
      | .nandToBitMatrix => ResidueKind.missingLowering
      | .bitMatrixDecoder => ResidueKind.missingDecode
      | .orderedPoleProjection => ResidueKind.missingDecode
      | .traceQuotientProjection => ResidueKind.missingTraceQuotient
      | .compactShellProjection => ResidueKind.missingDefinition
      | .noExternalModularityAuthority => ResidueKind.externalTheoremNotImported
    blocks := "finite modular-wave BitMatrix projection theorem"
    clearsBy := "a local finite proof object for this atom" }

def allAtoms : List Atom := [
  Atom.qWaveTruncation,
  Atom.coefficientDomain,
  Atom.lfunctionToEML,
  Atom.emlToNAND,
  Atom.nandToBitMatrix,
  Atom.bitMatrixDecoder,
  Atom.orderedPoleProjection,
  Atom.traceQuotientProjection,
  Atom.compactShellProjection,
  Atom.noExternalModularityAuthority
]

def residues : List Residue :=
  allAtoms.map atomResidue

def validate (A : Attempt) : Checked A.Valid :=
  Checked.residue residues

theorem validate_hasResidue (A : Attempt) :
    (validate A).hasResidue = true := by
  rfl

theorem residues_count :
    residues.length = 10 := by
  rfl

theorem residues_targets_correct :
    ∀ r ∈ residues, r.target = Target.ModularWaveBitMatrix := by
  intro r hr
  rw [residues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end Attempt

end FWR.Manuscript.ModularWave
```
