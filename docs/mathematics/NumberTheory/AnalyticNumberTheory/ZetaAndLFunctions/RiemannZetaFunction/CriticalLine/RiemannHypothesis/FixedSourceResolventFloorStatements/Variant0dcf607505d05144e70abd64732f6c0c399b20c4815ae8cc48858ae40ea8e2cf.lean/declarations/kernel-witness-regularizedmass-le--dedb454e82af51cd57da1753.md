# kernel_witness_regularizedMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07bcfdda6468395315579f7ddc2e35d68f67cc96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51d2e5e1-2b18-477a-317a-568b88d482ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ae8aff7-066c-141a-d34a-9400076a7676",
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
  "slug": "kernel-witness-regularizedmass-le--dedb454e82af51cd57da1753",
  "source": {
    "blob": "07bcfdda6468395315579f7ddc2e35d68f67cc96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dedb454e82af51cd57da1753f95e7aa25b7768e8af1327752f5851d73cc0fd61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae8aff7-066c-141a-d34a-9400076a7676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–84.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorStatements/Variant0dcf607505d05144e70abd64732f6c0c399b20c4815ae8cc48858ae40ea8e2cf.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07bcfdda6468395315579f7ddc2e35d68f67cc96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
