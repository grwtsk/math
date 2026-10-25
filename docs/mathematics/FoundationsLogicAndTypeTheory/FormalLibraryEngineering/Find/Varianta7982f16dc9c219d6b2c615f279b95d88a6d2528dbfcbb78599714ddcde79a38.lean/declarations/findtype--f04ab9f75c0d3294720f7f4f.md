# findType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38ae361f1edbb58de40fbfa32c541f522ab46799f8f9b351fdfcbd55e1055c9a",
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
  "slug": "findtype--f04ab9f75c0d3294720f7f4f",
  "source": {
    "blob": "6e411fa8248103f2b45602478d1d858fd6c054d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f04ab9f75c0d3294720f7f4f613f529fcec0f359a22aa372868283da82b556a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38ae361f1edbb58de40fbfa32c541f522ab46799f8f9b351fdfcbd55e1055c9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def findType (t : Expr) : TermElabM Unit := withReducible do
  let t ← instantiateMVars t
  let head := (← forallMetaTelescopeReducing t).2.2.toHeadIndex
  let pat ← abstractMVars t

  let env ← getEnv
  let mut numFound := 0
  for n in (← findDeclsPerHead.get).getD head #[] do
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Varianta7982f16dc9c219d6b2c615f279b95d88a6d2528dbfcbb78599714ddcde79a38.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e411fa8248103f2b45602478d1d858fd6c054d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
