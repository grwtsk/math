# isOptionFixpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fe1ec4a9f9fc703caea656681a028178826eb9419c9ac1d704d4ed6d283e3f6",
  "kind": "def",
  "lexical_name": "isOptionFixpoint",
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
  "slug": "isoptionfixpoint--469de4e71a9e372dcab3062b",
  "source": {
    "blob": "8b456021f7f29d5374f54d0cb3ed60dc853a0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:469de4e71a9e372dcab3062bbc404751ef82f69da50abadc48606c4f85d48e2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fe1ec4a9f9fc703caea656681a028178826eb9419c9ac1d704d4ed6d283e3f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isOptionFixpoint (env : Environment) (name : Name) : Bool := Option.isSome do
  let eqnInfo ← eqnInfoExt.find? env name
  guard <| name == eqnInfo.declNames[0]!
  let defnInfo ← env.find? eqnInfo.declNameNonRec
  assert! defnInfo.hasValue
  let mut value := defnInfo.value!
  while value.isLambda do value := value.bindingBody!
  let_expr Lean.Order.fix _ inst _ _ := value | panic! s!"isOptionFixpoint: unexpected value {value}"
  let insts := CCPOProdProjs eqnInfo.declNames.size inst
  insts.forM fun inst => do
    let mut inst := inst
    while inst.isAppOfArity ``instCCPOPi 3 do
      guard inst.appArg!.isLambda
      inst := inst.appArg!.bindingBody!
    guard <| inst.isAppOfArity ``instCCPOOption 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant38c1d1c97fb3bb35ba537554a4ddc3aa969ffc6514b09b244b7fcaaf6d90a434.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b456021f7f29d5374f54d0cb3ed60dc853a0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
