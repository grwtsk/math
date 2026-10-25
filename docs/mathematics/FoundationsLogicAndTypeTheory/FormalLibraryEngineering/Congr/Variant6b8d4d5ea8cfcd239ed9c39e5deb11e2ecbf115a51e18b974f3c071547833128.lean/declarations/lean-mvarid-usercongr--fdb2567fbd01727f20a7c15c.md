# Lean.MVarId.userCongr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51536a80d321b4781f8491b7864b4dd762f1c14fcd300538fc9291c190c8d254",
  "kind": "def",
  "lexical_name": "Lean.MVarId.userCongr?",
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
  "slug": "lean-mvarid-usercongr--fdb2567fbd01727f20a7c15c",
  "source": {
    "blob": "c3c4de23449c1822e987fa2b2b16809b1de82fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 569,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdb2567fbd01727f20a7c15c88c05685544415e235e3a045f929005c6040a550",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51536a80d321b4781f8491b7864b4dd762f1c14fcd300538fc9291c190c8d254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.userCongr? (config : Congr!.Config) (mvarId : MVarId) :
    MetaM (Option (List MVarId)) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `userCongr?
    let some (lhs, rhs) := (← withReducible mvarId.getType').eqOrIff? | return none
    let (fst, snd) := if config.preferLHS then (lhs, rhs) else (rhs, lhs)
    if let some mvars ← forSide fst then
      return mvars
    else if let some mvars ← forSide snd then
      return mvars
    else
      return none
where
  forSide (side : Expr) : MetaM (Option (List MVarId)) := do
    let side := side.cleanupAnnotations
    if not side.isApp then return none
    let some name := side.getAppFn.constName? | return none
    let congrTheorems := (← getSimpCongrTheorems).get name
    -- Note: congruence theorems are provided in decreasing order of priority.
    for congrTheorem in congrTheorems do
      let res ← observing? do
        let cinfo ← getConstInfo congrTheorem.theoremName
        let us ← cinfo.levelParams.mapM fun _ => mkFreshLevelMVar
        let proof := mkConst congrTheorem.theoremName us
        let ptype ← instantiateTypeLevelParams cinfo us
        applyCongrThm? config mvarId ptype proof
      if let some mvars := res then
        return mvars
    return none

/-- Helper theorem for `Lean.MVar.liftReflToEq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c4de23449c1822e987fa2b2b16809b1de82fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
