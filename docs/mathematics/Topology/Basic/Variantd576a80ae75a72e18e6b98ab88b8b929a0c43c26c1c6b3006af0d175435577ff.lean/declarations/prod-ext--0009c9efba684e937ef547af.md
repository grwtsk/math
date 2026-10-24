# prod_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "263c7daadfb7d402ec094fdf8ad03049d5491729",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 326,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37857d94-b72c-afc9-e140-980c4f6900c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9068183b-b09c-773c-3ef1-9a97acaaba24",
  "kind": "theorem",
  "lexical_name": "prod_ext",
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
  "slug": "prod-ext--0009c9efba684e937ef547af",
  "source": {
    "blob": "263c7daadfb7d402ec094fdf8ad03049d5491729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 326,
    "path": "GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0009c9efba684e937ef547af3730770eec73e55ac0b890c5ab2766276193f344",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9068183b-b09c-773c-3ef1-9a97acaaba24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_ext {f g : ContinuousMultilinearMap R M₁ (M₂ × M₃)}
    (h₁ : (ContinuousLinearMap.fst _ _ _).compContinuousMultilinearMap f =
      (ContinuousLinearMap.fst _ _ _).compContinuousMultilinearMap g)
    (h₂ : (ContinuousLinearMap.snd _ _ _).compContinuousMultilinearMap f =
      (ContinuousLinearMap.snd _ _ _).compContinuousMultilinearMap g) : f = g :=
  prod_ext_iff.mpr ⟨h₁, h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `263c7daadfb7d402ec094fdf8ad03049d5491729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
