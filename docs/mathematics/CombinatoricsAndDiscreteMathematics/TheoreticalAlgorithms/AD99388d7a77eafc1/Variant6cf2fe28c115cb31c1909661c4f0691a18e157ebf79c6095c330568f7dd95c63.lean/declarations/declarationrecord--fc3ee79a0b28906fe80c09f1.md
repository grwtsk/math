# DeclarationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85d8793e9c4ca2f6119eb15cd5c8b2a32036e7fff7e6ab73acdc07054b324ed1",
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
  "slug": "declarationrecord--fc3ee79a0b28906fe80c09f1",
  "source": {
    "blob": "d8ddda6166e9f81771c124a217af88e93b31b361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AD99388d7a77eafc1/Variant6cf2fe28c115cb31c1909661c4f0691a18e157ebf79c6095c330568f7dd95c63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3ee79a0b28906fe80c09f1fa03e28d58aafa026ed500b5a6df207568d37d43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AD99388d7a77eafc1/Variant6cf2fe28c115cb31c1909661c4f0691a18e157ebf79c6095c330568f7dd95c63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85d8793e9c4ca2f6119eb15cd5c8b2a32036e7fff7e6ab73acdc07054b324ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–114.

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

end MathDiscovery.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AD99388d7a77eafc1/Variant6cf2fe28c115cb31c1909661c4f0691a18e157ebf79c6095c330568f7dd95c63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AD99388d7a77eafc1/Variant6cf2fe28c115cb31c1909661c4f0691a18e157ebf79c6095c330568f7dd95c63.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8ddda6166e9f81771c124a217af88e93b31b361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
