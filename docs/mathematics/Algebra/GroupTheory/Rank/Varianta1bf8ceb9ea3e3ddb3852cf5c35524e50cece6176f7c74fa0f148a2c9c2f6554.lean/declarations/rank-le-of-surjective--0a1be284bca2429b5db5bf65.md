# rank_le_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02021506-7dfb-08fa-06aa-c3e72bc2e122",
  "kind": "lemma",
  "lexical_name": "rank_le_of_surjective",
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
  "slug": "rank-le-of-surjective--0a1be284bca2429b5db5bf65",
  "source": {
    "blob": "96fe49aba6cf8e4776066176bcd864930929eaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1be284bca2429b5db5bf659ffe8b3c844717e67025a52c81220268660c9646",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02021506-7dfb-08fa-06aa-c3e72bc2e122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_le_of_surjective [FG G] [FG H] (f : G →* H) (hf : Surjective f) : rank H ≤ rank G := by
  classical
  obtain ⟨S, hS1, hS2⟩ := rank_spec G
  trans (S.image f).card
  · apply rank_le
    rw [Finset.coe_image, ← MonoidHom.map_closure, hS2, Subgroup.map_top_of_surjective f hf]
  · exact Finset.card_image_le.trans_eq hS1

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fe49aba6cf8e4776066176bcd864930929eaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
