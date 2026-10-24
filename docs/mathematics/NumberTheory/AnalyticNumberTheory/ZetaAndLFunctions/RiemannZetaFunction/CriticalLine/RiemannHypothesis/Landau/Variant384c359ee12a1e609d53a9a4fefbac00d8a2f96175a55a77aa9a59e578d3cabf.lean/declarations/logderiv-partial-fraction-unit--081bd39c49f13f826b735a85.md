# logDeriv_partial_fraction_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ec6a179-1721-fb6e-fbee-33d2f3029d3b",
  "kind": "theorem",
  "lexical_name": "logDeriv_partial_fraction_unit",
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
  "slug": "logderiv-partial-fraction-unit--081bd39c49f13f826b735a85",
  "source": {
    "blob": "3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 307,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:081bd39c49f13f826b735a85424ffd997702176bc409f91587fcb8ccd3b97bd7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ec6a179-1721-fb6e-fbee-33d2f3029d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_partial_fraction_unit {f : ℂ → ℂ} {B : ℝ}
    (hfa : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1)) (hf0 : f 0 = 1)
    (hfin : (SetOfZeros 1 f).Finite) (hB2 : 2 ≤ B)
    (hfB : ∀ w : ℂ, ‖w‖ ≤ 24/25 → ‖f w‖ ≤ B)
    {z : ℂ} (hz : ‖z‖ ≤ 83/100) (hfz : f z ≠ 0) :
    ‖logDeriv f z - ∑ ρ ∈ (finiteSetOfZeros_mono (by norm_num : (22/25:ℝ) < 1) hfin).toFinset,
        (analyticOrderNatAt f ρ : ℂ) / (z - ρ)‖ ≤ 44795000 * Real.log B := by
  have hf0' : f 0 ≠ 0 := by rw [hf0]; exact one_ne_zero
  have hsplit := logDeriv_split hfa hf0' (by norm_num : (22/25:ℝ) < 1) hfin
    (lt_of_le_of_lt hz (by norm_num)) hfz
  rw [hsplit]
  rw [add_sub_cancel_left]
  exact norm_logDeriv_Cf_le hfa hf0 hfin hB2 hfB hz

/-- The zero set of an analytic function (nonvanishing at the centre) in the closed unit ball is
finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant384c359ee12a1e609d53a9a4fefbac00d8a2f96175a55a77aa9a59e578d3cabf.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9c80530a90ef7c15f46b2ef6b7fee38a116e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
