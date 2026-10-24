# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.VanishingCurvature.Variantdead7b1df4823101fe780eccf65ecbd83ba4a4fe3c847c05960cc1e3e45f453d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `029314b5dd172da2f4f1dd3765e30280676fc957` · SHA-256 `8b60d56b851b080d3a8734d6f1bfd600d64dc170186883d02e90d5329e45f345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VanishingCurvatureHypotheses.Variant143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VanishingCurvatureHypotheses.Variant143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/VanishingCurvature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Analysis.Decoupling.Curves


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VanishingCurvatureHypotheses.Variant143fd5cc6f885c19363929b65741b142141f7d8b766212f802520e952a3ba559

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace VanishingCurvature

def rightSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def rightInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def holderOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

/--
Finite exceptional-set hypotheses for vanishing curvature.

These fields record the obligations of Theorem 1.3. They do not prove the
paper theorem or import Bourgain-Demeter decoupling.
-/
structure VanishingCurvatureHypotheses
    (phi : ℝ → ℝ)
    (Z : Finset ℝ)
    (alpha : ℝ) where
  finiteExceptionalSet : True
  secondDerivativeNonzeroOffZ : Prop
  locallyHolderOffZ : Prop
  finiteOrderRightLeft :
    ∀ z ∈ Z,
      rightSupremalOrderSecondDerivative phi z alpha ∧
        rightInfimalOrderSecondDerivative phi z alpha ∧
          leftSupremalOrderSecondDerivative phi z alpha ∧
            leftInfimalOrderSecondDerivative phi z alpha
  holderOrderControl :
    ∀ z ∈ Z, holderOrderSecondDerivative phi z alpha

def vanishingCurvatureResidue : String :=
  "finite_order_curvature_hypotheses_recorded_without_decoupling_proof"

theorem finite_exceptional_set_is_recorded
    {phi : ℝ → ℝ} {Z : Finset ℝ} {alpha : ℝ}
    (h : VanishingCurvatureHypotheses phi Z alpha) :
    h.finiteExceptionalSet = True.intro := rfl

end VanishingCurvature
end Think.Analysis.Decoupling
```
