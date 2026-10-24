# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PointDecomposition.Variant530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae6b5df9177f8931e3ceb211d764b4e1cb7afe41` · SHA-256 `530354be7adbde2f237134b04bfffd53ec3e270c67b9eba6962e548ee34d1d51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.MathematicalPoint

/-!
# Lossless statement, proof, and definition decomposition

Atomization exposes typed point roles while retaining exact source bytes.
Reconstruction is the concatenation of the retained fragments, not a semantic
summary or a model-generated paraphrase.
-/

namespace Mathematics.Concept

inductive StatementRole
  | object
  | structure
  | relation
  | operation
  | quantifier
  | hypothesis
  | conclusion
  | scope
  | authority
  deriving DecidableEq, Repr, Inhabited

inductive ProofRole
  | input
  | lemma
  | transformation
  | case_
  | normalization
  | rewrite
  | witness
  | closure
  deriving DecidableEq, Repr, Inhabited

inductive DefinitionRole
  | genus
  | constraint
  | constructor
  | eliminator
  | equivalence
  | representation
  | boundary
  deriving DecidableEq, Repr, Inhabited

structure SourceFragment where
  pointId : ElementId
  sourceAddressId : StableId
  ordinal : Nat
  bytes : List UInt8
  fragmentDigest : Digest
  deriving DecidableEq, Repr

structure LosslessPointDecomposition where
  sourceAddressId : StableId
  sourceBytes : List UInt8
  fragments : List SourceFragment
  fragments_nonempty : fragments ≠ []
  source_round_trip :
    fragments.flatMap SourceFragment.bytes = sourceBytes
  decompositionDigest : Digest

/-- A statement records the semantic role of every retained fragment. -/
structure StatementDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × StatementRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

/-- A proof records inputs, transformations, cases, witnesses, and closure. -/
structure ProofDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × ProofRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

/-- A definition records genus, constraints, interfaces, and boundaries. -/
structure DefinitionDecomposition where
  lossless : LosslessPointDecomposition
  roles : List (ElementId × DefinitionRole)
  roleCoverage :
    ∀ fragment ∈ lossless.fragments,
      ∃ role, (fragment.pointId, role) ∈ roles

theorem LosslessPointDecomposition.reconstructs_source
    (decomposition : LosslessPointDecomposition) :
    decomposition.fragments.flatMap SourceFragment.bytes =
      decomposition.sourceBytes :=
  decomposition.source_round_trip

end Mathematics.Concept
```
