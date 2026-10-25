# findType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a169849a7b8f1dbcc381f75373620edda6d257991b1767de247755123b32c46e",
  "kind": "def",
  "lexical_name": "findType",
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
  "slug": "findtype--3c645294f93d5cec4aca981d",
  "source": {
    "blob": "c487c6cf29984ca6d84d964c79988d3542a97a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c645294f93d5cec4aca981dda1b57f691b82540c81b96333b8943b1bbea36de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a169849a7b8f1dbcc381f75373620edda6d257991b1767de247755123b32c46e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def findType (t : Expr) : TermElabM Unit := withReducible do
  let t ← instantiateMVars t
  let head := (← forallMetaTelescopeReducing t).2.2.toHeadIndex
  let pat ← abstractMVars t

  let env ← getEnv
  let mut numFound := 0
  for n in (← findDeclsPerHead.get).findD head #[] do
    let c := env.find? n |>.get!
    let cTy := c.instantiateTypeLevelParams (← mkFreshLevelMVars c.numLevelParams)
    let found ← forallTelescopeReducing cTy fun cParams cTy' ↦ do
      let pat := pat.expr.instantiateLevelParamsArray pat.paramNames
        (← mkFreshLevelMVars pat.numMVars).toArray
      let (_, _, pat) ← lambdaMetaTelescope pat
      let (patParams, _, pat) ← forallMetaTelescopeReducing pat
      isDefEq cTy' pat <&&> matchHyps patParams.toList [] cParams.toList
    if found then
      numFound := numFound + 1
      if numFound > 20 then
        logInfo m!"maximum number of search results reached"
        break
      logInfo m!"{n}: {cTy}"

open Lean.Elab.Command in
/-
The `#find` command finds definitions & lemmas using pattern matching on the type. For instance:
```lean
#find _ + _ = _ + _
#find ?n + _ = _ + ?n
#find (_ : Nat) + _ = _ + _
#find Nat → Nat
```
Inside tactic proofs, the `#find` tactic can be used instead.
There is also the `find` tactic which looks for
lemmas which are `apply`able against the current goal.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant916f7471d28aa589f6db0ccb48d9eea202d9476e3d5061b6cfc614fac7e1af8b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c487c6cf29984ca6d84d964c79988d3542a97a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
