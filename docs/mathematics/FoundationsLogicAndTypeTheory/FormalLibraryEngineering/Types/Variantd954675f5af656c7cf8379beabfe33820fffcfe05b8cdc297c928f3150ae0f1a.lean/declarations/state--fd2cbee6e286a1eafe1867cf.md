# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fa347ce20d7e1df8cd8fbabf5e777901644393ee30151bf5df29393bbf7949c",
  "kind": "structure",
  "lexical_name": "State",
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
  "slug": "state--fd2cbee6e286a1eafe1867cf",
  "source": {
    "blob": "786d05b08e9616513d1ec0a22195b1469e213940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd2cbee6e286a1eafe1867cfbb16a8cb3969e0278a41d71c73953b9cc25d8999",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fa347ce20d7e1df8cd8fbabf5e777901644393ee30151bf5df29393bbf7949c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure State where
  /--
  Structures detected.
  We expect to find a small number of `IntModule`s in a given goal. Thus, using `Array` is fine here.
  -/
  structs : Array Struct := {}
  /--
  Mapping from types to its "structure id". We cache failures using `none`.
  `typeIdOf[type]` is `some id`, then `id < structs.size`. -/
  typeIdOf : PHashMap ExprPtr (Option Nat) := {}
  /- Mapping from expressions/terms to their structure ids. -/
  exprToStructId : PHashMap ExprPtr Nat := {}
  /-- `exprToStructId` content as an array for traversal. -/
  exprToStructIdEntries : PArray (Expr × Nat) := {}
  /--
  Some types are unordered rings, so we do not process them in `linarith`.
  When such types are detected in `getStructId?`, we add them to the set
  `forbiddenNatModules` to avoid reprocessing them in `getNatStructId?`.
  -/
  forbiddenNatModules : PHashSet ExprPtr := {}
  /-- `NatModule`. We support them using the envelope `OfNatModule.Q` -/
  natStructs : Array NatStruct := {}
  /--
  Mapping from types to its "nat module id". We cache failures using `none`.
  `natTypeIdOf[type]` is `some id`, then `id < natStructs.size`.
  If a type is in this map, it is not in `typeIdOf`.
  -/
  natTypeIdOf : PHashMap ExprPtr (Option Nat) := {}
  /- Mapping from expressions/terms to their nat structure ids. -/
  exprToNatStructId : PHashMap ExprPtr Nat := {}
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd954675f5af656c7cf8379beabfe33820fffcfe05b8cdc297c928f3150ae0f1a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `786d05b08e9616513d1ec0a22195b1469e213940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
