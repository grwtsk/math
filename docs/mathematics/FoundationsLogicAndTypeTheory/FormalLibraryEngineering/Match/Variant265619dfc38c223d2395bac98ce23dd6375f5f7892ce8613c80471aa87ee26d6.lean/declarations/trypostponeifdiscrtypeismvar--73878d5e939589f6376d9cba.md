# tryPostponeIfDiscrTypeIsMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:087f1bb85ccea9cb8cc7e149c936f34805fba2301e0dbd8dd1d7299eed464eb8",
  "kind": "def",
  "lexical_name": "tryPostponeIfDiscrTypeIsMVar",
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
  "slug": "trypostponeifdiscrtypeismvar--73878d5e939589f6376d9cba",
  "source": {
    "blob": "4df90954a89531a08e5cf1aac0d9095d7a7009ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1260,
    "line": 1221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73878d5e939589f6376d9cbaf8c3377a2341e6c19f79e0d2f5dbde4490b7f785",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:087f1bb85ccea9cb8cc7e149c936f34805fba2301e0dbd8dd1d7299eed464eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def tryPostponeIfDiscrTypeIsMVar (matchStx : Syntax) : TermElabM Unit := do
  -- We don't wait for the discriminants types when match type is provided by user
  if getMatchOptMotive matchStx |>.isNone then
    let discrs := getDiscrs matchStx
    for discr in discrs do
      let term := discr[1]
      let d ← elabTerm term none
      let dType ← inferType d
      trace[Elab.match] "discr {d} : {← instantiateMVars dType}"
      tryPostponeIfMVar dType

/--
We (try to) elaborate a `match` only when the expected type is available.
If the `matchType` has not been provided by the user, we also try to postpone elaboration if the type
of a discriminant is not available. That is, it is of the form `(?m ...)`.
We use `expandNonAtomicDiscrs?` to make sure all discriminants are metavariables,
so that they are not elaborated twice.
This is a standard trick we use in the elaborator, and it is also used to elaborate structure instances.
Suppose, we are trying to elaborate
```
match g x with
  | ... => ...
```
`expandNonAtomicDiscrs?` converts it intro
```
let_mvar% ?discr := g x
match ?discr with
  | ... => ...
```

This elaboration technique is needed to elaborate terms such as:
```lean
xs.filter fun (a, b) => a > b
```
which are syntax sugar for
```lean
List.filter (fun p => match p with | (a, b) => a > b) xs
```
When we visit `match p with | (a, b) => a > b`, we don't know the type of `p` yet.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant265619dfc38c223d2395bac98ce23dd6375f5f7892ce8613c80471aa87ee26d6.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4df90954a89531a08e5cf1aac0d9095d7a7009ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
