# isEquipartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f887c2d-ce15-c292-372d-22e9e26f1622",
  "kind": "theorem",
  "lexical_name": "isEquipartition",
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
  "slug": "isequipartition--5d40d4ef9876ce4be7ea2cb7",
  "source": {
    "blob": "3f231edf97a6473d17beef716418cc486190271a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d40d4ef9876ce4be7ea2cb717528927b3f428aa470c63a295ddfe94db380200",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f887c2d-ce15-c292-372d-22e9e26f1622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEquipartition [DecidableEq V] : h.finpartition.IsEquipartition := by
  set fp := h.finpartition
  by_contra hn
  rw [Finpartition.not_isEquipartition] at hn
  obtain ⟨large, hl, small, hs, ineq⟩ := hn
  obtain ⟨w, hw⟩ := fp.nonempty_of_mem_parts hl
  obtain ⟨v, hv⟩ := fp.nonempty_of_mem_parts hs
  apply absurd h
  rw [IsTuranMaximal, IsExtremal]; push Not; intro cf
  use G.replaceVertex v w, inferInstance, cf.replaceVertex v w
  have large_eq := fp.part_eq_of_mem hl hw
  have small_eq := fp.part_eq_of_mem hs hv
  have ha : G.Adj v w := by
    by_contra hn; rw [h.not_adj_iff_part_eq, small_eq, large_eq] at hn
    rw [hn] at ineq; lia
  rw [G.card_edgeFinset_replaceVertex_of_adj ha,
    degree_eq_card_sub_part_card h, small_eq, degree_eq_card_sub_part_card h, large_eq]
  have : #large ≤ card V := by simpa using card_le_card large.subset_univ
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant3807063d8df0f3bfe23d66ad6504746af77c0131f6c6503bd5e92bd11a3481d2.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f231edf97a6473d17beef716418cc486190271a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
