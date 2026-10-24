# Complete source: GRWTSK.Analysis.SpecialFunctions.Curves.Variant75e2472a8f407795b095e25c4c2a63744749c45c08052abd2a93e7c67f53452f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da94a1e50295513585f7c3585b38709160c153a7` · SHA-256 `11616e4a82dcc0064231367f559b3fcec782ae6a7a0d972dca8cd54581208e5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.GraphCurve.Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.GraphCurve.Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/Curves.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Think.SourceTree.Legacy.Analysis.Decoupling.WeightedLp


namespace GRWTSK.Analysis.SpecialFunctions.GraphCurve.Variant6e75387a1ebf3f3ca262d48438bf9952e81ecc078829441b856c549d45e09e33

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Curves

/-- Model curve phase `t |-> t^(1 + nu)`, using real powers. -/
noncomputable def modelCurvePhi (nu : ℝ) (t : ℝ) : ℝ :=
  Real.rpow t (1 + nu)

structure GraphCurve where
  phi : ℝ → ℝ
  domainRecorded : Bool

structure PlaneCurve where
  phiOne : ℝ → ℝ
  phiTwo : ℝ → ℝ
  regularityRecorded : Bool

noncomputable def modelGraphCurve (nu : ℝ) : GraphCurve :=
  { phi := modelCurvePhi nu
    domainRecorded := true }

def CurvatureIdenticallyZero (_phi : ℝ → ℝ) : Prop :=
  False

def RegularPlaneCurve (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  True

def WronskianVanishesOnlyFinitelyToFiniteOrder (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  False

theorem model_curve_domain_recorded (nu : ℝ) :
    (modelGraphCurve nu).domainRecorded = true := rfl

end Curves
end Think.Analysis.Decoupling
```
