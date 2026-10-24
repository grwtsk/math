# measure_le_measure_closure_of_levyProkhorovEDist_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db207a3b-d173-a541-a887-a908efccf81e",
  "kind": "lemma",
  "lexical_name": "measure_le_measure_closure_of_levyProkhorovEDist_eq_zero",
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
  "slug": "measure-le-measure-closure-of-levyprokhorovedist-eq-zero--4d92effc27c8ca235796655a",
  "source": {
    "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d92effc27c8ca235796655a188341aaa3770ff664bc2a8c0ec65ab3a017872b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db207a3b-d173-a541-a887-a908efccf81e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_le_measure_closure_of_levyProkhorovEDist_eq_zero {μ ν : Measure Ω}
    (hLP : levyProkhorovEDist μ ν = 0) {s : Set Ω} (s_mble : MeasurableSet s)
    (h_finite : ∃ δ > 0, ν (thickening δ s) ≠ ∞) :
    μ s ≤ ν (closure s) := by
  have key : Tendsto (fun ε ↦ ν (thickening ε.toReal s)) (𝓝[>] (0 : ℝ≥0∞)) (𝓝 (ν (closure s))) := by
    have aux : Tendsto ENNReal.toReal (𝓝[>] 0) (𝓝[>] 0) := by
      apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within (s := Ioi 0) ENNReal.toReal
      · exact tendsto_nhdsWithin_of_tendsto_nhds (continuousAt_toReal zero_ne_top).tendsto
      · filter_upwards [Ioo_mem_nhdsGT zero_lt_one] with x hx
        exact toReal_pos hx.1.ne.symm <| ne_top_of_lt hx.2
    exact (tendsto_measure_thickening h_finite).comp aux
  have obs := Tendsto.add key (tendsto_nhdsWithin_of_tendsto_nhds tendsto_id)
  simp only [id_eq, add_zero] at obs
  apply ge_of_tendsto (b := μ s) obs
  filter_upwards [self_mem_nhdsWithin] with ε ε_pos
  exact left_measure_le_of_levyProkhorovEDist_lt (B_mble := s_mble) (hLP ▸ ε_pos)

/-- Two measures at vanishing Lévy-Prokhorov distance from each other assign the same values to all
closed sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
