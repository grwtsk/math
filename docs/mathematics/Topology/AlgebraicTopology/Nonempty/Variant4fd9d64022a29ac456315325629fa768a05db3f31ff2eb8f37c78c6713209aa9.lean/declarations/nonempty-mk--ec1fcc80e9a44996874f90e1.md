# Nonempty.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:397cee3f-98a9-bae9-69b1-abd755e99061",
  "kind": "lemma",
  "lexical_name": "Nonempty.mk",
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
  "slug": "nonempty-mk--ec1fcc80e9a44996874f90e1",
  "source": {
    "blob": "5b0dea3060397c203b8b6ed2fef0b3a04318dc9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 39,
    "path": "GRWTSK/Topology/AlgebraicTopology/Nonempty/Variant4fd9d64022a29ac456315325629fa768a05db3f31ff2eb8f37c78c6713209aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1fcc80e9a44996874f90e1832de50748b7d17bb3cf1caa25cee96d975992b4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Nonempty/Variant4fd9d64022a29ac456315325629fa768a05db3f31ff2eb8f37c78c6713209aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:397cee3f-98a9-bae9-69b1-abd755e99061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nonempty.mk {n : SimplexCategoryᵒᵖ} (x : X.obj n) : X.Nonempty :=
  ⟨X.map (SimplexCategory.const _ _ 0).op x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Nonempty/Variant4fd9d64022a29ac456315325629fa768a05db3f31ff2eb8f37c78c6713209aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Nonempty/Variant4fd9d64022a29ac456315325629fa768a05db3f31ff2eb8f37c78c6713209aa9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0dea3060397c203b8b6ed2fef0b3a04318dc9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
