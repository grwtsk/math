# ModuleRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:126c8be5be52acc4a67f1beef0fdddce753044b71cff39195387e492fe50b5c6",
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
  "slug": "modulerecord--74012ca2663f8bc18c2ecbfb",
  "source": {
    "blob": "4531959aaab0b6ff38f3c113f2090c24a8506382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AA8c38d0d53eded3a/Variant5d86fcc8bd0d66478ec3c2cc6774136cd89646f00d8a50cd83f5ddeb5043e6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74012ca2663f8bc18c2ecbfb7ddc636a6c7cf0ebff846e12da0682dc542718ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AA8c38d0d53eded3a/Variant5d86fcc8bd0d66478ec3c2cc6774136cd89646f00d8a50cd83f5ddeb5043e6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:126c8be5be52acc4a67f1beef0fdddce753044b71cff39195387e492fe50b5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

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

end MathDiscovery.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AA8c38d0d53eded3a/Variant5d86fcc8bd0d66478ec3c2cc6774136cd89646f00d8a50cd83f5ddeb5043e6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AA8c38d0d53eded3a/Variant5d86fcc8bd0d66478ec3c2cc6774136cd89646f00d8a50cd83f5ddeb5043e6d3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4531959aaab0b6ff38f3c113f2090c24a8506382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
