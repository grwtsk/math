# kernel_witness_regularizedMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54d4e14f-d3db-7432-dacb-cce51eb1c66f",
  "kind": "theorem",
  "lexical_name": "kernel_witness_regularizedMass_le",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "kernel-witness-regularizedmass-le--77da164594fedf808f7f50e4",
  "source": {
    "blob": "0c01af6af28938ff650d1090ad2c5797f631af1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant33a38e1916d71af64aff107ecc53839b903ac88e0755a219c82c375b9129a448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77da164594fedf808f7f50e4c5bab5c2d65d65ab7847ef901b386cd701e09eaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant33a38e1916d71af64aff107ecc53839b903ac88e0755a219c82c375b9129a448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54d4e14f-d3db-7432-dacb-cce51eb1c66f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_witness_regularizedMass_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := by
  have hp : ((α : ℂ) • positiveResolvent S α).IsPositive :=
    (positiveResolvent_isPositive S hS α hα).smul_of_nonneg (by exact_mod_cast hα.le)
  have h := positive_fixed_direction_le _ hp r e he
    (regularized_resolvent_kernel_apply S hS α hα e hSe)
  simpa only [regularizedMass, smul_apply, inner_smul_right, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using h

end FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel


/-!
# Actual source resolvents and a joint time/parameter truncation bound

Every inverse below is justified by positivity of the original TT*. The diagonal
comparison controls approximation error; it does not prove vanishing of either
actual or truncated directional mass.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
open MeasureTheory Set Filter
open scoped Topology
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
noncomputable section

/-- The requested directional mass for the actual source TT*. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant33a38e1916d71af64aff107ecc53839b903ac88e0755a219c82c375b9129a448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant33a38e1916d71af64aff107ecc53839b903ac88e0755a219c82c375b9129a448.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c01af6af28938ff650d1090ad2c5797f631af1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
