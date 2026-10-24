# actual_positive_sixth_stieltjes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00c7800d-d363-1a01-1309-5d4fa9ab4776",
  "kind": "theorem",
  "lexical_name": "actual_positive_sixth_stieltjes",
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
  "slug": "actual-positive-sixth-stieltjes--4e066696d69d7f83db698c15",
  "source": {
    "blob": "e3de419064f36051eeac7d479dc4bf466b32f828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e066696d69d7f83db698c156b38e7a7ee2d4475f57c14ad46bab886e03d76ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00c7800d-d363-1a01-1309-5d4fa9ab4776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_sixth_stieltjes (T : ℝ) (hT : 3/2 ≤ T) :
    PositiveSixthPowerStieltjes T := by
  have hp : 0 < T := by linarith
  refine ⟨actual_positive_sixth_summable T hT,
    actual_positive_count_seventh_integrable T hT, ?_⟩
  have hm : Summable (fun o : PositiveOccurrence => 1/(max T (positiveOrdinate o))^6) :=
    actual_positive_max_sixth_summable T hT
  have hh := positive_closed_count_kernel_summable T (1/T^6)
  calc
    actualPositiveSixthPowerTail T =
        ∑' o : PositiveOccurrence, if T < positiveOrdinate o then
          1/(positiveOrdinate o)^6 else 0 := by
      exact (positive_strict_tail_tsum_transport T hp.le
        (fun o => 1/(ZeroObject.shiftedValue o).im^6)).symm
    _ = ∑' o : PositiveOccurrence,
        (1/(max T (positiveOrdinate o))^6 - positiveClosedCountKernel T (1/T^6) o) := by
      apply tsum_congr
      intro o
      have he := strict_ordinate_weight_eq_closed_integral_sub_endpoint
        T (positiveOrdinate o) hp o.property
      rw [closed_ordinate_kernel_integral T (positiveOrdinate o) hp o.property] at he
      exact he
    _ = (∑' o : PositiveOccurrence, 1/(max T (positiveOrdinate o))^6) -
        ∑' o : PositiveOccurrence, positiveClosedCountKernel T (1/T^6) o := hm.tsum_sub hh
    _ = -actualPositiveZeroCount T/T^6 +
        6*(∫ x : ℝ in Ioi T, actualPositiveZeroCount x/x^7) := by
      rw [actual_positive_count_kernel_integral T hT, positive_closed_count_kernel_tsum]
      unfold actualPositiveZeroCount
      ring

end CommonMeanStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualStieltjes/Variant7b9c101db454fea27cfaeec00da1ee6626beea89fd4fa1311a5d941481885942.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3de419064f36051eeac7d479dc4bf466b32f828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
