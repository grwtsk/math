# exists_measure_iInter_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a210000d-e873-6115-ae88-9d884c5d834a",
  "kind": "theorem",
  "lexical_name": "exists_measure_iInter_lt",
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
  "slug": "exists-measure-iinter-lt--848c5d7e89491f4a9941a358",
  "source": {
    "blob": "f7621ea0cbd1c55629c3137116a8b39e42899703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848c5d7e89491f4a9941a358a22e988451591840dde1a32f9bfd0a48df9df8a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a210000d-e873-6115-ae88-9d884c5d834a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measure_iInter_lt [SemilatticeSup ι] [Countable ι]
    (hm : ∀ i, NullMeasurableSet (s i) μ) {ε : ℝ≥0∞} (hε : 0 < ε) (hfin : ∃ i, μ (s i) ≠ ∞)
    (hfem : ⋂ n, s n = ∅) : ∃ m, μ (⋂ n ≤ m, s n) < ε := by
  let F m := μ (⋂ n ≤ m, s n)
  have hFAnti : Antitone F :=
      fun i j hij => measure_mono (biInter_subset_biInter_left fun k hki => le_trans hki hij)
  suffices Filter.Tendsto F Filter.atTop (𝓝 0) by
    let _ := hfin.nonempty
    rw [ENNReal.tendsto_atTop_zero_iff_lt_of_antitone hFAnti] at this
    exact this ε hε
  have hzero : μ (⋂ n, s n) = 0 := by
    simp only [hfem, measure_empty]
  rw [← hzero]
  exact tendsto_measure_iInter_le hm hfin

/-- The measure of the intersection of a decreasing sequence of measurable
sets indexed by a linear order with first countable topology is the limit of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7621ea0cbd1c55629c3137116a8b39e42899703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
