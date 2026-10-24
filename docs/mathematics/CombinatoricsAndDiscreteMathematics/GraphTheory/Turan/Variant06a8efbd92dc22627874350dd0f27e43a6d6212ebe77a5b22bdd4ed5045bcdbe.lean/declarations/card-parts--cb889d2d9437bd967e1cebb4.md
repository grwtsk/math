# card_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:266891d0-6c70-25cf-dc8e-d69bfb4bbb5b",
  "kind": "theorem",
  "lexical_name": "card_parts",
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
  "slug": "card-parts--cb889d2d9437bd967e1cebb4",
  "source": {
    "blob": "6afebd8124fc17000606b5d9d12696fc6e7fea40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb889d2d9437bd967e1cebb4f45c4a9813a7da6ecc68e367f139470daf557e23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:266891d0-6c70-25cf-dc8e-d69bfb4bbb5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_parts [DecidableEq V] : #h.finpartition.parts = min (Fintype.card V) r := by
  set fp := h.finpartition
  apply le_antisymm (le_min fp.card_parts_le_card h.card_parts_le)
  by_contra! l
  rw [lt_min_iff] at l
  obtain ⟨x, -, y, -, hn, he⟩ :=
    exists_ne_map_eq_of_card_lt_of_maps_to l.1 fun a _ ↦ fp.part_mem.2 (mem_univ a)
  apply absurd h
  rw [IsTuranMaximal]; push_neg; rintro -
  have cf : G.CliqueFree r := by
    simp_rw [← cliqueFinset_eq_empty_iff, cliqueFinset, filter_eq_empty_iff, mem_univ,
      forall_true_left, isNClique_iff, and_comm, not_and, isClique_iff, Set.Pairwise]
    intro z zc; push_neg; simp_rw [h.not_adj_iff_part_eq]
    exact exists_ne_map_eq_of_card_lt_of_maps_to (zc.symm ▸ l.2) fun a _ ↦
      fp.part_mem.2 (mem_univ a)
  use G ⊔ edge x y, inferInstance, cf.sup_edge x y
  convert Nat.lt.base #G.edgeFinset
  convert G.card_edgeFinset_sup_edge _ hn
  rwa [h.not_adj_iff_part_eq]

/-- **Turán's theorem**, forward direction.

Any `r + 1`-cliquefree Turán-maximal graph on `n` vertices is isomorphic to `turanGraph n r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afebd8124fc17000606b5d9d12696fc6e7fea40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
