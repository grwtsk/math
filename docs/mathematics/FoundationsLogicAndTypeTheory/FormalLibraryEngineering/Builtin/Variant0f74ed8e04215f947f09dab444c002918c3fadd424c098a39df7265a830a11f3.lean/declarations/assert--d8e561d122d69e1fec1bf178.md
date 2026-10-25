# assert'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf3ba6b94991fba35b64dca03f48ba558c635680376af46336d87e0d1f20e676",
  "kind": "def",
  "lexical_name": "assert'",
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
  "slug": "assert--d8e561d122d69e1fec1bf178",
  "source": {
    "blob": "54c9b797ff124c8665b7ec5a1bbc43a9feca52c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1281,
    "line": 1247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8e561d122d69e1fec1bf178f66c6cef2f6489627469bbd685234ec4af785941",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf3ba6b94991fba35b64dca03f48ba558c635680376af46336d87e0d1f20e676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1247–1281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assert' (xs : TSyntaxArray `inline) : DocM (Inline ElabInline) := do
  let codes ← onlyCodes xs
  let (lhsCode, rhsCode, tyCode?) ←
    match h : codes.size with
    | 2 => pure (codes[0], codes[1], none)
    | 3 => pure (codes[0], codes[1], some codes[2])
    | _ => throwError "Expected two or three code arguments: the two sides of the equality, \
        optionally followed by their type, but got {codes.size} arguments."
  let lhsStx ← parseStrLit assertTermContents lhsCode
  let rhsStx ← parseStrLit assertTermContents rhsCode
  let tyStx? ← tyCode?.mapM (parseStrLit assertTermContents)
  let (_, trees) ← withHighlightingInfoTrees do
    let ty? ← withoutErrToSorry <|
      match tyStx? with
      | some tyStx => some <$> elabType tyStx
      | none => pure none
    let lhs ← elabExtraTerm lhsStx ty?
    let rhs ← elabExtraTerm rhsStx ty?
    unless ← Meta.withTransparency .all <| Meta.isDefEq lhs rhs do
      throwError m!"Expected {lhs} = {rhs}, which is {← Meta.whnf lhs} = {← Meta.whnf rhs}, reducing to {← Meta.reduceAll lhs} = {← Meta.reduceAll rhs} but they are not equal."
  let str := lhsCode.getString ++ " = " ++ rhsCode.getString ++
    (tyCode?.map (" : " ++ ·.getString) |>.getD "")
  if trees.size > 0 then
    let mut code := (← highlightSyntax trees lhsStx) ++ " = " ++ (← highlightSyntax trees rhsStx)
    if let some tyStx := tyStx? then
      code := code ++ " : " ++ (← highlightSyntax trees tyStx)
    return .custom (Data.LeanTerm.mk code) #[.code str]
  else
    -- No info
    return .code str

/--
Asserts that an equality holds.
-/
@[builtin_doc_role]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean#L1247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c9b797ff124c8665b7ec5a1bbc43a9feca52c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
