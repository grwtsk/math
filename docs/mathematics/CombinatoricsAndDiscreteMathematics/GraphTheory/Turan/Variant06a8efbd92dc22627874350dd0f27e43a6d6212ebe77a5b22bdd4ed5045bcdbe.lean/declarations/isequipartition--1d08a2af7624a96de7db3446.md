# isEquipartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8adcef78-35ce-494d-32eb-139a1d6c60e4",
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
  "slug": "isequipartition--1d08a2af7624a96de7db3446",
  "source": {
    "blob": "6afebd8124fc17000606b5d9d12696fc6e7fea40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 218,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d08a2af7624a96de7db34463444dc20b74d4461a3f45152de6af2f4d7a480c8",
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

Occurrence: `result:8adcef78-35ce-494d-32eb-139a1d6c60e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–237.

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
  rw [IsTuranMaximal]; push_neg; intro cf
  use G.replaceVertex v w, inferInstance, cf.replaceVertex v w
  have large_eq := fp.part_eq_of_mem hl hw
  have small_eq := fp.part_eq_of_mem hs hv
  have ha : G.Adj v w := by
    by_contra hn; rw [h.not_adj_iff_part_eq, small_eq, large_eq] at hn
    rw [hn] at ineq; omega
  rw [G.card_edgeFinset_replaceVertex_of_adj ha,
    degree_eq_card_sub_part_card h, small_eq, degree_eq_card_sub_part_card h, large_eq]
  have : #large ≤ Fintype.card V := by simpa using card_le_card large.subset_univ
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variant06a8efbd92dc22627874350dd0f27e43a6d6212ebe77a5b22bdd4ed5045bcdbe.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afebd8124fc17000606b5d9d12696fc6e7fea40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
