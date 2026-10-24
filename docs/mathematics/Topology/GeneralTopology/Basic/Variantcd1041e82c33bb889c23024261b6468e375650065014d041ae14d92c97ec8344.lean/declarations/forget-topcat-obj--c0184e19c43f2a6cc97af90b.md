# forget₂_TopCat_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da0cf20e-ea35-e064-a0e4-e347bdfa63c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ae5353c-af2d-124d-8183-19f3a882befb",
  "kind": "lemma",
  "lexical_name": "forget₂_TopCat_obj",
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
  "slug": "forget-topcat-obj--c0184e19c43f2a6cc97af90b",
  "source": {
    "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0184e19c43f2a6cc97af90b5f8c85407d1fa33acda9983813e846c59a8a2bc8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae5353c-af2d-124d-8183-19f3a882befb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forget₂_TopCat_obj {X : TopModuleCat R} : ((forget₂ _ TopCat).obj X : Type _) = X := rfl

open Limits

section Colimit

variable {R}

variable {M : ModuleCat R} {I : Type*} {X : I → TopModuleCat R} (f : ∀ i, (X i).toModuleCat ⟶ M)

/-- The coinduced topology on `M` from a family of continuous linear maps into `M`, which is the
finest topology that makes it into a topological module and makes every map continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32a9367052e84ebe59e0ed1f2da77ed36d16d05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
