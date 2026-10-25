# subtheoryModel_models

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abdb7184f4902a89174f8d3d8f967bc191ee7ddbe03f5fd861dc08cbf4e54de0",
  "kind": "instance",
  "lexical_name": "subtheoryModel_models",
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
  "slug": "subtheorymodel-models--ee97af09561ada72fafa28d5",
  "source": {
    "blob": "5fc873f49158a277aa13058846e3ad186fc9044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee97af09561ada72fafa28d55ac6d807ce66c5554d2bd70239001f9872c48e46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abdb7184f4902a89174f8d3d8f967bc191ee7ddbe03f5fd861dc08cbf4e54de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subtheoryModel_models (M : T.ModelType) {T' : L.Theory} (h : T' ⊆ T) :
    M.subtheoryModel h ⊨ T :=
  M.is_model

end ModelType

variable {T}

/-- Bundles `M ⊨ T` as a `T.ModelType`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant55b2362b35f3d355e5fe7ed8fca3615393cc1cab47523693ee6748cd591a181f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc873f49158a277aa13058846e3ad186fc9044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
