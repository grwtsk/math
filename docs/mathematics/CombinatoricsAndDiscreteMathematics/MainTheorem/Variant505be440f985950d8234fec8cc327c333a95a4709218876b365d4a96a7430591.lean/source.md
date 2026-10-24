# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MainTheorem.Variant505be440f985950d8234fec8cc327c333a95a4709218876b365d4a96a7430591

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f712e7b10799e49d8acf95479b6cd58526840c8` · SHA-256 `338b6bcae200df4fa6ee954f0dc5d169e901b835479ecbfcc115e5f8d592c88b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedDecouplingInequality.Variant1f24182a113fbc45dd98b758d97b790b6350be55681abd7db4ab4e6bf859c0f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f24182a113fbc45dd98b758d97b790b6350be55681abd7db4ab4e6bf859c0f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.WeightedDecouplingInequality.Variant1f24182a113fbc45dd98b758d97b790b6350be55681abd7db4ab4e6bf859c0f4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1f24182a113fbc45dd98b758d97b790b6350be55681abd7db4ab4e6bf859c0f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/MainTheorem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.Decoupling.ModelCurve


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedDecouplingInequality.Variant1f24182a113fbc45dd98b758d97b790b6350be55681abd7db4ab4e6bf859c0f4

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace MainTheorem

def WeightedDecouplingInequality
    (_phi : ℝ → ℝ)
    (_Z : Finset ℝ)
    (_alpha _p _epsilon _delta _constant : ℝ)
    (_g : ℝ → ℂ) : Prop :=
  False

def mainTheoremStatementSurface : Prop :=
  ∀ {phi : ℝ → ℝ} {Z : Finset ℝ} {alpha p epsilon delta : ℝ},
    (∀ z ∈ Z, z ∈ Set.Icc (0 : ℝ) 1) →
    0 < alpha →
    2 ≤ p →
    p ≤ 6 →
    0 < epsilon →
    0 < delta →
    delta ≤ 1 →
    VanishingCurvature.VanishingCurvatureHypotheses phi Z alpha →
    ∀ g : ℝ → ℂ,
      ModelCurve.IntegrableOnUnitInterval g →
      ∃ constant : ℝ,
        0 < constant ∧
          WeightedDecouplingInequality phi Z alpha p epsilon delta constant g

/-- Theorem 1.3 surface, retained as open residue. -/
def l2_decoupling_vanishing_curvature_finite_exceptional_set :
    DecouplingTheoremSurface :=
  { arxivId := "1812.04760"
    externalLabel := "Theorem 1.3"
    leanNamespace := "Think.Analysis.Decoupling.MainTheorem"
    leanName := "l2_decoupling_vanishing_curvature_finite_exceptional_set"
    theoremStatementRecorded := true
    proofComplete := false
    authority := .openResidue
    unresolvedResidue :=
      "full_vanishing_curvature_decoupling_proof_missing" }

theorem main_theorem_surface_is_open_residue :
    l2_decoupling_vanishing_curvature_finite_exceptional_set.authority =
      .openResidue := rfl

theorem main_theorem_surface_is_not_checked_proof :
    l2_decoupling_vanishing_curvature_finite_exceptional_set.authority ≠
      .checkedProof := by
  intro h
  cases h

end MainTheorem
end Think.Analysis.Decoupling
```
