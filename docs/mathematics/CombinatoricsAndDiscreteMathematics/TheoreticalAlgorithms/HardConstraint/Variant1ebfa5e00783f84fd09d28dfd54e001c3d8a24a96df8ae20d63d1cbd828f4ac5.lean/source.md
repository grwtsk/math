# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant1ebfa5e00783f84fd09d28dfd54e001c3d8a24a96df8ae20d63d1cbd828f4ac5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e93cb0b57f52dcd3b590fc1217cbf6e37e701c07` · SHA-256 `8f6598f8b4fac0444f22984e1d2ab90d10cb51144713590fee7136bf5c73e50d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","mathematical_subject":"Computation.DataStructures","original_sha256":"0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/HardConstraint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.State

/-! # Hard constraints -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardConstraint.Variant0b4dff4672137a748a1dd5b27956d3159053e872c8781c167dee60aecdcb6cd5

namespace Mathematics.Relaxation

/-- A named predicate that every admitted relaxation state must preserve. -/
structure HardConstraint where
  constraintId : StableId
  Holds : State → Prop
  statementDigest : Digest

/-- Finite conjunction of hard constraints. -/
def SatisfiesAll
    (constraints : List HardConstraint)
    (state : State) : Prop :=
  ∀ constraint ∈ constraints, constraint.Holds state

end Mathematics.Relaxation
```
