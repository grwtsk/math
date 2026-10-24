# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variantab56169c75469edfc0d888175d37ecec3ed9ac8d2f17eba46bc4ed7653cdfe65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3844749ba84467126e5cbc0df7790448b5f8114b` · SHA-256 `89415c191d5bbc84bb00b601c089ced1b67dc59890cc9168d94718f3cecbabce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealTendstoPowLogDivPowAtTop.Variantb345f59bff825700221040fb575823d6902383ff1ab340b2ff849d8382460954","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b345f59bff825700221040fb575823d6902383ff1ab340b2ff849d8382460954","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealTendstoPowLogDivPowAtTop.Variantb345f59bff825700221040fb575823d6902383ff1ab340b2ff849d8382460954","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b345f59bff825700221040fb575823d6902383ff1ab340b2ff849d8382460954","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/FromPNTPlus/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Ported from https://github.com/AlexKontorovich/PrimeNumberTheoremAnd
at commit 10e1218932db7e2432aa5881d750acb819e91f19, file
PrimeNumberTheoremAnd/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean.
Copyright the PrimeNumberTheoremAnd contributors; Apache License 2.0
(http://www.apache.org/licenses/LICENSE-2.0).
Local modifications: removed the Architect blueprint
tooling (import Architect, blueprint_comment blocks, @[blueprint ...] attributes),
redirected intra-project imports to Zeta23.FromPNTPlus.*.  Mathematical content unchanged.
Modified 2026 by Anthropic PBC.
-/
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Continuity


namespace GRWTSK.Topology.GeneralTopology.RealTendstoPowLogDivPowAtTop.Variantb345f59bff825700221040fb575823d6902383ff1ab340b2ff849d8382460954

open Filter Real

/-- log^b x / x^a goes to zero at infinity if a is positive. -/
theorem Real.tendsto_pow_log_div_pow_atTop (a : ℝ) (b : ℝ) (ha : 0 < a) :
    Filter.Tendsto (fun x ↦ log x ^ b / x^a) Filter.atTop (nhds 0) := by
  apply Asymptotics.isLittleO_iff_tendsto' _|>.mp <| isLittleO_log_rpow_rpow_atTop _ ha
  filter_upwards [eventually_gt_atTop 0] with x hx
  intro h
  rw [rpow_eq_zero hx.le ha.ne.symm] at h
  exfalso
  linarith
```
