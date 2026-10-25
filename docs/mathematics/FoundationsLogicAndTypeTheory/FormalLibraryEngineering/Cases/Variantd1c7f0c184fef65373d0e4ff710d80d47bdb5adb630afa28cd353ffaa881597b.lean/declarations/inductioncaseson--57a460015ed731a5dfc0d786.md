# inductionCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a5a575714a37a0234d07934397edc2ff6f163249c318a8936d7c6745132c46",
  "kind": "def",
  "lexical_name": "inductionCasesOn",
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
  "slug": "inductioncaseson--57a460015ed731a5dfc0d786",
  "source": {
    "blob": "8b2fcb51247d252574de91ea69a367a8b14f0ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57a460015ed731a5dfc0d7860f89aca109ded9346f3790eb8ed0b67f33415471",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a5a575714a37a0234d07934397edc2ff6f163249c318a8936d7c6745132c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def inductionCasesOn (mvarId : MVarId) (majorFVarId : FVarId) (givenNames : Array AltVarNames) (ctx : Context)
    (useNatCasesAuxOn : Bool := false) (interestingCtors? : Option (Array Name) := none) :
    MetaM (Array CasesSubgoal) := mvarId.withContext do
  let majorType ← inferType (mkFVar majorFVarId)
  let (us, params) ← getInductiveUniverseAndParams majorType

  if let some interestingCtors := interestingCtors? then
    -- Avoid Init.Prelude complications
    let hasNE := (← getEnv).contains ``Nat.hasNotBit
    -- We can only create a sparse casesOn if we have `ctorIdx` (in particular, if it is a type)
    let hasCtorIdx := (← getEnv).contains (mkCtorIdxName ctx.inductiveVal.name)
    if hasNE && hasCtorIdx && !interestingCtors.isEmpty &&
      interestingCtors.size < ctx.inductiveVal.ctors.length then
      let casesOn ← Lean.Meta.mkSparseCasesOn ctx.inductiveVal.name interestingCtors
      let s ← mvarId.induction majorFVarId casesOn givenNames
      return toCasesSubgoals s interestingCtors majorFVarId us params

  let casesOn :=
    if useNatCasesAuxOn && ctx.inductiveVal.name == ``Nat && (← getEnv).contains ``Nat.casesAuxOn then
      ``Nat.casesAuxOn
    else
      mkCasesOnName ctx.inductiveVal.name
  let ctors   := ctx.inductiveVal.ctors.toArray
  let s ← mvarId.induction majorFVarId casesOn givenNames
  return toCasesSubgoals s ctors majorFVarId us params

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2fcb51247d252574de91ea69a367a8b14f0ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
