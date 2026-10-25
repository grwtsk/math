# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dceb115715a7d86e7cb31462396aa1f76ba4816c4908cffb17fdea9cd02930c",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--a8d49658feb81a9b8e2eb32d",
  "source": {
    "blob": "fccd73159010e91632d3e5eb7c9381f8b9a829b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8d49658feb81a9b8e2eb32ddf6872f3d3d46775115caa3ced8750d3afe785d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dceb115715a7d86e7cb31462396aa1f76ba4816c4908cffb17fdea9cd02930c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  /--
  The set of all values that are borrowed and potentially objects
  -/
  borrowedValues : FVarIdHashSet
  /--
  The derived value tree.
  -/
  derivedValMap : DerivedValMap
  /--
  Information about the variables currently in scope.
  -/
  varMap : VarMap := {}
  /--
  Information about the variables in all join points that are currently in scope.
  -/
  jpLiveVarMap : JPLiveVarMap := {}
  /--
  An index that we count up as we encounter new variables. This is used to order them in a
  reproducible fashion when required. The default ordering does not work as our variables are
  `FVarId` based.
  -/
  idx : Nat := 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fccd73159010e91632d3e5eb7c9381f8b9a829b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
