# ModuleRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27edde463232780e93f195ea0fd84155dac0e599a4adfcdfefa1fd1008107a39",
  "kind": "structure",
  "lexical_name": "ModuleRecord",
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
  "slug": "modulerecord--e6342b8c36b8eadb29cfbad1",
  "source": {
    "blob": "8666eaa38d4d70454c2874524afeaf4beed34dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE7f74b0dcac7db37/Variant4d133538f74e5258164a775c7f9e7fb2e2785ba6f4c13f794d8302824d0b8600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6342b8c36b8eadb29cfbad108cd39e7112e5ed82be446557eda4d79addb82ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE7f74b0dcac7db37/Variant4d133538f74e5258164a775c7f9e7fb2e2785ba6f4c13f794d8302824d0b8600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27edde463232780e93f195ea0fd84155dac0e599a4adfcdfefa1fd1008107a39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ModuleRecord where
  moduleId : ModuleId
  moduleName : Lean.Name
  packageId : PackageId
  ownership : OwnershipClass
  sourcePath : Option CanonicalPath
  oleanPath : Option CanonicalPath
  sourceDigest : Option Digest
  oleanDigest : Digest
  directImports : Array ImportRecord
  effectiveImports : Array EffectiveImportRecord
  declarationIds : Array DeclarationId
  extraConstants : Array Lean.Name
  extensionDigest : Digest
  deprecated : Option DeprecationRecord
  shardDigest : Digest
  extractionDigest : Digest
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE7f74b0dcac7db37/Variant4d133538f74e5258164a775c7f9e7fb2e2785ba6f4c13f794d8302824d0b8600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AE7f74b0dcac7db37/Variant4d133538f74e5258164a775c7f9e7fb2e2785ba6f4c13f794d8302824d0b8600.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8666eaa38d4d70454c2874524afeaf4beed34dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
