# rank_le_finrank_engel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9c5877344913b63037a49a5df28b6e17fa95621",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34180f93-99fb-6cce-9a4e-26a64197e9be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f9a346a-31c1-7150-f13d-a6dcb3629c1d",
  "kind": "lemma",
  "lexical_name": "rank_le_finrank_engel",
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
  "slug": "rank-le-finrank-engel--a8b6ce0a5e3dbcfde537c059",
  "source": {
    "blob": "c9c5877344913b63037a49a5df28b6e17fa95621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b6ce0a5e3dbcfde537c0597ba8827ec533cfc4c45d0c7954f10a2b2ee83925",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f9a346a-31c1-7150-f13d-a6dcb3629c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_le_finrank_engel (x : L) :
    rank K L ≤ finrank K (engel K x) :=
  (rank_le_natTrailingDegree_charpoly_ad K x).trans
    (finrank_engel K x).ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variantfb19dbf9b7461d7ced570deb2d25785c7ce05fc2f20f63a256b754816daef073.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c5877344913b63037a49a5df28b6e17fa95621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
