# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityStabilization.Varianta1caf53a6364bc731d3c5abfc2c40fa73ec9b7bbd8488de6d7e57cc1ea4f4a3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00c2b6902897dcb9270405781021d6bd750d19af` · SHA-256 `1c753f36ea9cbfdf20a17d3edaedd864e2f812aeb255bdee36ccbf689a5fff63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","mathematical_subject":"Algebra.OrderTheory","original_sha256":"c84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/TorsionCardinalityStabilization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.TorsionLedger
import Mathlib.Order.Monotone.Basic

/-!
# Cardinality stabilization under a uniform finite torsion bound

This elementary result isolates the combinatorial fact from stronger claims
about group structure, generators, transition maps, or Bockstein data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237

namespace Mathematics.Homology

/-- A uniformly bounded monotone sequence of finite cardinalities stabilizes. -/
theorem torsionCardinality_eventuallyConstant
    (cardinality : Nat → Nat) :
    Monotone cardinality →
    (∃ bound, ∀ stage, cardinality stage ≤ bound) →
      ∃ stableStage,
        ∀ stage, stableStage ≤ stage →
          cardinality stage = cardinality stableStage := by
  intro monotoneCardinality bounded
  obtain ⟨bound, boundedBy⟩ := bounded
  obtain ⟨value, stableStage, stable⟩ :=
    converges_of_monotone_of_bounded monotoneCardinality boundedBy
  exact ⟨stableStage, fun stage later ↦
    (stable stage later).trans (stable stableStage (le_refl _)).symm⟩

end Mathematics.Homology
```
