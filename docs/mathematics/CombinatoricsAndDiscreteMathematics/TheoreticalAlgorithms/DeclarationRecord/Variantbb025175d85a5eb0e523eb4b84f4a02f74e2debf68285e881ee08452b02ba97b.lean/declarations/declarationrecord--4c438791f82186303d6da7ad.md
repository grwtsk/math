# DeclarationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04d6c60eebdc0acb08629d47d7dfd9abbf88a8e230de71eb6c184f644b29e962",
  "kind": "structure",
  "lexical_name": "DeclarationRecord",
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
  "slug": "declarationrecord--4c438791f82186303d6da7ad",
  "source": {
    "blob": "d30e855901c3cae516a45b2436acfa50069575a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationRecord/Variantbb025175d85a5eb0e523eb4b84f4a02f74e2debf68285e881ee08452b02ba97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c438791f82186303d6da7adef5588361cd0f76ddbf5ef2ffe76b0b142f3701d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationRecord/Variantbb025175d85a5eb0e523eb4b84f4a02f74e2debf68285e881ee08452b02ba97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04d6c60eebdc0acb08629d47d7dfd9abbf88a8e230de71eb6c184f644b29e962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeclarationRecord where
  declarationId : DeclarationId
  nameIdentity : StableId
  statementIdentity : Option StableId
  implementationIdentity : Option StableId
  environmentIdentity : StableId
  canonicalName : Lean.Name
  owningModule : Option Lean.Name
  owningModuleId : Option ModuleId
  packageId : Option PackageId
  ownership : OwnershipClass
  kind : DeclarationKind
  visibility : VisibilityClass
  origin : OriginRecord
  universeParams : Array UniverseParamRecord
  typeExprId : Option ExprId
  valueExprId : Option ExprId
  typeDigest : Option Digest
  valueDigest : Option Digest
  rawTypeDigest : Option Digest
  presentationTypeDigest : Option Digest
  metadataTypeDigest : Option Digest
  declarationDigest : Digest
  reducibility : ReducibilityClass
  safety : SafetyClass
  isPartial : Bool
  isNoncomputable : Option Bool
  mutualBlock : Array Lean.Name
  inductiveData : Option InductiveRecord
  constructorData : Option ConstructorRecord
  recursorData : Option RecursorRecord
  quotientData : Option QuotientRecord
  directTypeDependencies : Array Lean.Name
  directValueDependencies : Array Lean.Name
  directMetadataDependencies : Array Lean.Name
  sourceRecordId : Option SourceRecordId
  docs : Option DocumentationRecord
  attributeIds : Array AttributeId
  diagnosticIds : Array StableId
  adapterNormalizedType : Option String
  adapterReducibleType : Option String
  isExternalReference : Bool
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationRecord/Variantbb025175d85a5eb0e523eb4b84f4a02f74e2debf68285e881ee08452b02ba97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationRecord/Variantbb025175d85a5eb0e523eb4b84f4a02f74e2debf68285e881ee08452b02ba97b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d30e855901c3cae516a45b2436acfa50069575a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
