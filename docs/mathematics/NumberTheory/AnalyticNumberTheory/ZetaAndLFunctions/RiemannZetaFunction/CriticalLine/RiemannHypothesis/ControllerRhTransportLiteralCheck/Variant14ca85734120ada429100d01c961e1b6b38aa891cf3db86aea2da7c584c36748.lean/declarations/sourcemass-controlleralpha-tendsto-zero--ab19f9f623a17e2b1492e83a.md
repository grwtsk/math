# sourceMass_controllerAlpha_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3afd774-81f0-5a11-7edc-6432481e5b28",
  "kind": "theorem",
  "lexical_name": "sourceMass_controllerAlpha_tendsto_zero",
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
  "slug": "sourcemass-controlleralpha-tendsto-zero--ab19f9f623a17e2b1492e83a",
  "source": {
    "blob": "be0a65622c1774163de1f122338c9c60cc80c6fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportLiteralCheck/Variant14ca85734120ada429100d01c961e1b6b38aa891cf3db86aea2da7c584c36748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab19f9f623a17e2b1492e83a2af764b260649e1a55f4a8ccf2b21d929c0d26d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportLiteralCheck/Variant14ca85734120ada429100d01c961e1b6b38aa891cf3db86aea2da7c584c36748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3afd774-81f0-5a11-7edc-6432481e5b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMass_controllerAlpha_tendsto_zero (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) := by
  apply squeeze_zero'
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_nonneg _ (controllerAlpha_pos q j hj)
  · filter_upwards [eventually_ge_atTop 1] with j hj
    exact sourceMass_controllerAlpha_le q j hj
  · have hinv : Tendsto (fun j : ℕ => 1 / (j : ℝ)) atTop (nhds 0) := by
      simpa only [one_div, Function.comp_def] using
        (tendsto_inv_atTop_zero.comp (tendsto_natCast_atTop_atTop (R := ℝ)))
    simpa only [zero_pow (by decide : 2 ≠ 0), zero_add] using (hres.pow 2).add hinv

end
end FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule

/-!
Conditional transport from an actual vanishing source-mass subsequence to
Mathlib's unchanged RH proposition. The full-residual convergence hypothesis in
the controller specialization remains explicit and is not proved here.
-/
set_option autoImplicit false
namespace ControllerRHTransportScratch
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open FixedSourceResolventFloor ControllerSchedule
noncomputable section

/-- A vanishing subsequence at positive parameters contradicts each actual right-zero floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportLiteralCheck/Variant14ca85734120ada429100d01c961e1b6b38aa891cf3db86aea2da7c584c36748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportLiteralCheck/Variant14ca85734120ada429100d01c961e1b6b38aa891cf3db86aea2da7c584c36748.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0a65622c1774163de1f122338c9c60cc80c6fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
