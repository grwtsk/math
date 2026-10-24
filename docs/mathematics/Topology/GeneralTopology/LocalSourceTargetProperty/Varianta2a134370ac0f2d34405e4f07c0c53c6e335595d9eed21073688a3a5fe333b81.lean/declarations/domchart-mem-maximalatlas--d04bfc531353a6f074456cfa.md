# domChart_mem_maximalAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72df890c93d70eb2965f0bd7ec30aded4a9b5cfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6190c8b-69f3-0ff5-9704-d457e598670b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1072463d-3989-3639-8f2c-728004358523",
  "kind": "lemma",
  "lexical_name": "domChart_mem_maximalAtlas",
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
  "slug": "domchart-mem-maximalatlas--d04bfc531353a6f074456cfa",
  "source": {
    "blob": "72df890c93d70eb2965f0bd7ec30aded4a9b5cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d04bfc531353a6f074456cfab0061a43b660d8d174e75e805d9630224f458846",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1072463d-3989-3639-8f2c-728004358523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma domChart_mem_maximalAtlas (h : LiftSourceTargetPropertyAt I J n f x P) :
    h.domChart ∈ IsManifold.maximalAtlas I n M :=
  h.localPresentationAt.domChart_mem_maximalAtlas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72df890c93d70eb2965f0bd7ec30aded4a9b5cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
