# everywherePosSubset_ae_eq_of_measure_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e3ccf51-3c56-6060-610b-01fb91b4acc1",
  "kind": "lemma",
  "lexical_name": "everywherePosSubset_ae_eq_of_measure_ne_top",
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
  "slug": "everywherepossubset-ae-eq-of-measure-ne-top--0231b51f7d683732e90956f2",
  "source": {
    "blob": "8bb2cd49dde4cf9bc0d2c1c217c6761709bf8d33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0231b51f7d683732e90956f267d9feca9f9861dd837f8ca3fb357d9f1526d478",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3ccf51-3c56-6060-610b-01fb91b4acc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma everywherePosSubset_ae_eq_of_measure_ne_top
    [OpensMeasurableSpace α] [InnerRegularCompactLTTop μ] (hs : MeasurableSet s) (h's : μ s ≠ ∞) :
    μ.everywherePosSubset s =ᵐ[μ] s := by
  have A : μ (s \ μ.everywherePosSubset s) ≠ ∞ :=
    ((measure_mono diff_subset).trans_lt h's.lt_top).ne
  simp only [ae_eq_set, diff_eq_empty.mpr (everywherePosSubset_subset μ s), measure_empty,
    true_and, (hs.diff hs.everywherePosSubset).measure_eq_iSup_isCompact_of_ne_top A,
    ENNReal.iSup_eq_zero]
  intro k hk h'k
  exact measure_eq_zero_of_subset_diff_everywherePosSubset h'k hk

/-- In a space with an inner regular measure, the everywhere positive subset of a measurable set
is itself everywhere positive. This is not obvious as `μ.everywherePosSubset s` is defined as
the points whose neighborhoods intersect `s` along positive measure subsets, but this does not
say they also intersect `μ.everywherePosSubset s` along positive measure subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant2cfa7b3aaa8e1fd6e2de0689cc253dd77cfde3f02c54bbc04cb353a7375395d2.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb2cd49dde4cf9bc0d2c1c217c6761709bf8d33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
