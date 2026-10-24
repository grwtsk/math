# image_ofSnowflaking_image_toSnowflaking

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a199811081de44d2c0f3df3ad7ed430799338a2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44810d31-a836-c846-6ae5-da735eb81287",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2237609e-17dc-9e8e-589a-cd72677b6906",
  "kind": "theorem",
  "lexical_name": "image_ofSnowflaking_image_toSnowflaking",
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
  "slug": "image-ofsnowflaking-image-tosnowflaking--68d9a923d95efacfa80ebba5",
  "source": {
    "blob": "a199811081de44d2c0f3df3ad7ed430799338a2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68d9a923d95efacfa80ebba51e7d6364a7ff108d2bbb8b3c2651e7febdac5256",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2237609e-17dc-9e8e-589a-cd72677b6906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_ofSnowflaking_image_toSnowflaking (s : Set X) :
    ofSnowflaking '' (toSnowflaking '' s : Set (Snowflaking X α hα₀ hα₁)) = s :=
  ofSnowflaking.image_symm_image _

/-!
### Topological space structure

The topology on `Snowflaking X α hα₀ hα₁` is induced from `X`.
-/

section TopologicalSpace

variable [TopologicalSpace X]

/-- The topological space structure on `Snowflaking X α _ _` is induced from the original space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Snowflaking/Variant0444810f98ba660d0719c53cdad0aed3f04174903bb784e0f895f1d846ddb478.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a199811081de44d2c0f3df3ad7ed430799338a2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
