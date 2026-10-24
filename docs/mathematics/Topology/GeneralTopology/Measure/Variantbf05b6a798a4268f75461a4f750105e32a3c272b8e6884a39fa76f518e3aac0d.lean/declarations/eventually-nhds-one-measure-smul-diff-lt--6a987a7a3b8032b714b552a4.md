# eventually_nhds_one_measure_smul_diff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac0b19d2-59ae-e304-4c66-613fd2b5ccfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ee93e48-707c-8754-9db2-72bae9af3e78",
  "kind": "lemma",
  "lexical_name": "eventually_nhds_one_measure_smul_diff_lt",
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
  "slug": "eventually-nhds-one-measure-smul-diff-lt--6a987a7a3b8032b714b552a4",
  "source": {
    "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 488,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a987a7a3b8032b714b552a462ea51d60c293b5db0c5f1885d918868cb6c6487",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ee93e48-707c-8754-9db2-72bae9af3e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_nhds_one_measure_smul_diff_lt [LocallyCompactSpace G]
    [IsFiniteMeasureOnCompacts μ] [InnerRegularCompactLTTop μ] {k : Set G}
    (hk : IsCompact k) (h'k : IsClosed k) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∀ᶠ g in 𝓝 (1 : G), μ (g • k \ k) < ε := by
  obtain ⟨U, hUk, hU, hμUk⟩ : ∃ (U : Set G), k ⊆ U ∧ IsOpen U ∧ μ U < μ k + ε :=
    hk.exists_isOpen_lt_add hε
  obtain ⟨V, hV1, hVkU⟩ : ∃ V ∈ 𝓝 (1 : G), V * k ⊆ U := compact_open_separated_mul_left hk hU hUk
  filter_upwards [hV1] with g hg
  calc
    μ (g • k \ k) ≤ μ (U \ k) := by
      gcongr
      exact (smul_set_subset_smul hg).trans hVkU
    _ < ε := measure_diff_lt_of_lt_add h'k.nullMeasurableSet hUk hk.measure_lt_top.ne hμUk

/-- Continuity of the measure of translates of a compact set:
Given a closed compact set `k` in a topological group,
the measure of `g • k \ k` tends to zero as `g` tends to `1`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
