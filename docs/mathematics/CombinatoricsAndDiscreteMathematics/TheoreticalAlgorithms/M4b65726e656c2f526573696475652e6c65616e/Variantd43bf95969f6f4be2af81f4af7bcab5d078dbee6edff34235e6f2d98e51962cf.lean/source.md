# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M4b65726e656c2f526573696475652e6c65616e.Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32515887159628b952183f779576a97826929bfe` · SHA-256 `d43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit1.M4b65726e656c2f5461726765742e6c65616e


/- source-tree-label: STL1|L|addr=00101011|role=proof_code_atom|slug=kernel-residue|owner=canonical_owner|core=Kernel/Residue.lean|leaf=M4b65726e656c2f526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace FWR

universe u v

inductive ResidueKind where
  | missingDefinition
  | missingFiniteWitness
  | missingLowering
  | missingDecode
  | missingTraceQuotient
  | missingSection
  | missingTransition
  | missingUniformBound
  | missingContinuumLimit
  | missingAnalyticContinuation
  | missingFunctionalEquation
  | missingAutomorphicAuthority
  | missingSieveEstimate
  | missingDistributionEstimate
  | missingParityBarrierResolution
  | missingPDEEstimate
  | missingGeometricMeasureEstimate
  | missingAsymptoticTransfer
  | externalTheoremNotImported
  | authorityOverclaim
  | replacementOverclaim
  | conjecturalAtom
deriving DecidableEq, Repr

structure Residue where
  target : Target
  atomId : String
  kind : ResidueKind
  blocks : String
  clearsBy : String
deriving Repr, DecidableEq

structure AtomLedger (Ctx : Type u) (Atom : Type v) where
  allAtoms : List Atom
  claim : Ctx -> Atom -> Prop
  residue : Ctx -> Atom -> Residue

structure ResidueFor (Ctx : Type u) (Atom : Type v) where
  atom : Atom
  claim : Ctx -> Prop
  residue : Ctx -> Residue

namespace AtomLedger

def residues {Ctx : Type u} {Atom : Type v}
    (L : AtomLedger Ctx Atom) (ctx : Ctx) :
    List Residue :=
  L.allAtoms.map (L.residue ctx)

end AtomLedger

end FWR
```
