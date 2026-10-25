# mkGeneralizationForbiddenSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68c1ddf021807c56f4eb1e7c6f0b04b0b54dc7080d0e84422145dc3150c1a9b6",
  "kind": "def",
  "lexical_name": "mkGeneralizationForbiddenSet",
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
  "slug": "mkgeneralizationforbiddenset--b0db43403fb16744a1d3f10d",
  "source": {
    "blob": "f4a4006d809d8f0327ffe421a2fb63f7d062f472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeVars/Varianta491317e2a9cfa041b4ffa5a262126f727c6f2ed16c84bae6850ab414858bfd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0db43403fb16744a1d3f10d2a4b0953218a11685ce53430175cf7ea3fde1e72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeVars/Varianta491317e2a9cfa041b4ffa5a262126f727c6f2ed16c84bae6850ab414858bfd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68c1ddf021807c56f4eb1e7c6f0b04b0b54dc7080d0e84422145dc3150c1a9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkGeneralizationForbiddenSet (targets : Array Expr) (forbidden : FVarIdSet := {}) : MetaM FVarIdSet := do
  let mut s := { fvarSet := forbidden }
  let mut todo := #[]
  for target in targets do
    if target.isFVar then
      todo := todo.push target.fvarId!
    else
      s := collectFVars s (← instantiateMVars (← inferType target))
  loop todo.toList s.fvarSet
where
  visit (fvarId : FVarId) (todo : List FVarId) (s : FVarIdSet) : MetaM (List FVarId × FVarIdSet) := do
    let localDecl ← fvarId.getDecl
    let mut s' := collectFVars {} (← instantiateMVars localDecl.type)
    if let some val := localDecl.value? then
      s' := collectFVars s' (← instantiateMVars val)
    let mut todo := todo
    let mut s := s
    for fvarId in s'.fvarSet do
      unless s.contains fvarId do
        todo := fvarId :: todo
        s := s.insert fvarId
    return (todo, s)

  loop (todo : List FVarId) (s : FVarIdSet) : MetaM FVarIdSet := do
    match todo with
    | [] => return s
    | fvarId::todo =>
      if s.contains fvarId then
        loop todo s
      else
        let (todo, s) ← visit fvarId todo <| s.insert fvarId
        loop todo s

/--
  Collect variables to be generalized.
  It uses the following heuristic
  - Collect forward dependencies that are not in the forbidden set, and depend on some variable in `targets`.

  - We use `mkForbiddenSet` to compute `forbidden`.

  Remark: we *not* collect instance implicit arguments nor auxiliary declarations for compiling
  recursive declarations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeVars/Varianta491317e2a9cfa041b4ffa5a262126f727c6f2ed16c84bae6850ab414858bfd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeVars/Varianta491317e2a9cfa041b4ffa5a262126f727c6f2ed16c84bae6850ab414858bfd9.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a4006d809d8f0327ffe421a2fb63f7d062f472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
