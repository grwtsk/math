# RawDeclarationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdf9fa56326d2e374fd719863707e3dfe3323bbc211f8c5f83069b70f332a512",
  "kind": "structure",
  "lexical_name": "RawDeclarationRecord",
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
  "slug": "rawdeclarationrecord--c91e32032d2ae3ca6ff7d5a4",
  "source": {
    "blob": "25b7484260c6bdd90724bd67eb9f086b01e53824",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAeaddb61b618148d/Variantc4b4379271c3a20e3532086f0856092eb3216d9e3ca480ccf606b11572068ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91e32032d2ae3ca6ff7d5a414ceda2ddbcea9e62f8e5d38a125fb4e42b1bf03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAeaddb61b618148d/Variantc4b4379271c3a20e3532086f0856092eb3216d9e3ca480ccf606b11572068ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdf9fa56326d2e374fd719863707e3dfe3323bbc211f8c5f83069b70f332a512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawDeclarationRecord where
  name : String
  ownerModule : String
  kind : String
  authority : String
  isPrivateName : Bool
  isInternalDetail : Bool
  visibility : String
  origin : String
  levelParams : Array String
  typeExpr : RawExpression
  valueExpr : Option RawExpression
  valueRole : Option String
  hasStoredValue : Bool
  isUnsafe : Bool
  isPartial : Bool
  safety : String
  reducibility : String
  regularityHeight : Option Nat
  mutualBlock : Array String
  inductiveData : Option RawInductiveData
  constructorData : Option RawConstructorData
  recursorData : Option RawRecursorData
  quotientData : Option RawQuotientData
  observedAxioms : Array String
  diagnostics : Array String
  deriving ToJson

end MathematicsLeanEnvironmentExtract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAeaddb61b618148d/Variantc4b4379271c3a20e3532086f0856092eb3216d9e3ca480ccf606b11572068ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAeaddb61b618148d/Variantc4b4379271c3a20e3532086f0856092eb3216d9e3ca480ccf606b11572068ef5.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b7484260c6bdd90724bd67eb9f086b01e53824` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
