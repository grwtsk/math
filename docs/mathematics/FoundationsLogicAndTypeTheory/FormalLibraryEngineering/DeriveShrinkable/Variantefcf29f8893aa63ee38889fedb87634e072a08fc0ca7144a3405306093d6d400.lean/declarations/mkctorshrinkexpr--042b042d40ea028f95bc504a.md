# mkCtorShrinkExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0713cc726608dc936ef21ae67d5391ef8d6847b51afdfc6e8d535fe8a3cf0f7",
  "kind": "def",
  "lexical_name": "mkCtorShrinkExpr",
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
  "slug": "mkctorshrinkexpr--042b042d40ea028f95bc504a",
  "source": {
    "blob": "324a8ef9f79136c8d56d6d96a3170ba570dc9038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:042b042d40ea028f95bc504a3c6bf982d2d849f5afad019845326a085a6ae2a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0713cc726608dc936ef21ae67d5391ef8d6847b51afdfc6e8d535fe8a3cf0f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCtorShrinkExpr (targetTypeName : Name) (ctorIdent : Ident)
    (freshIdents : Array Ident) (argTypes : Array Expr)
    (auxFn : Ident) : TermElabM Term := do
  let mut listTerms : Array Term := #[]

  -- 1) Subterm shrinks: yield recursive fields directly
  for h : i in 0...freshIdents.size do
    if argTypes[i]!.isAppOf targetTypeName then
      listTerms := listTerms.push (← `([$(freshIdents[i])]))

  -- 2) Argument shrinks: shrink each field and reconstruct
  for h : i in 0...freshIdents.size do
    let xi := freshIdents[i]
    let xi' := mkIdent (← Core.mkFreshUserName `x')
    let mut reconstructArgs : Array Term := #[]
    for h' : j in 0...freshIdents.size do
      if i == j then
        reconstructArgs := reconstructArgs.push (← `($xi'))
      else
        reconstructArgs := reconstructArgs.push (← `($(freshIdents[j])))
    let mapBody ← `(fun $xi' => $ctorIdent $reconstructArgs*)
    -- Use recursive call for self-referential fields, Shrinkable.shrink for others
    let shrinkCall ←
      if argTypes[i]!.isAppOf targetTypeName then
        `($auxFn $xi)
      else
        `(Shrinkable.shrink $xi)
    let shrinkExpr ← `(($shrinkCall).map $mapBody)
    listTerms := listTerms.push shrinkExpr

  match listTerms.toList with
  | [] => `([])
  | [single] => pure single
  | first :: rest =>
    rest.foldlM (fun acc t => `($acc ++ $t)) first

/-! ## Auxiliary function and instance generation -/

/-- Creates the auxiliary shrink function definition for one inductive type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `324a8ef9f79136c8d56d6d96a3170ba570dc9038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
