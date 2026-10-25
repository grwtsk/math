# simpAppUsingCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:604da82820fc67c181bf315024532db8a1852b195b37eb268067afdfe6108c7c",
  "kind": "def",
  "lexical_name": "simpAppUsingCongr",
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
  "slug": "simpappusingcongr--ccec3a71c1b30e05b7a783b0",
  "source": {
    "blob": "72d40477938cad4453b8a9ed0ed7776e52964f22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 740,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant95cafe21fac0ec967bef79704887ad6a44510bf7ac0f6e3d0d2b9c4da8c26a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccec3a71c1b30e05b7a783b0e2ff4840051e820ce31e29b92290de51917251f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant95cafe21fac0ec967bef79704887ad6a44510bf7ac0f6e3d0d2b9c4da8c26a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:604da82820fc67c181bf315024532db8a1852b195b37eb268067afdfe6108c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAppUsingCongr (e : Expr) : SimpM Result := do
  let f := e.getAppFn
  let numArgs := e.getAppNumArgs
  let cfg ← getConfig
  let infos := (← getFunInfoNArgs f numArgs).paramInfo
  let rec visit (e : Expr) (i : Nat) : SimpM Result := do
    if i == 0 then
      simp f
    else
      checkSystem "simp"
      let i := i - 1
      let .app f a := e | unreachable!
      let fr ← visit f i
      if h : i < infos.size then
        let info := infos[i]
        trace[Debug.Meta.Tactic.simp] "app [{i}] {infos.size} {a} hasFwdDeps: {infos[i].hasFwdDeps}"
        if info.isInstance && (!cfg.instances || cfg.ground) then
          /-
          **Note**: We don't visit instance implicit arguments when we are reducing ground terms.
          Motivation: many instance implicit arguments are ground, and it does not make sense
          to reduce them if the parent term is not ground.
          -/
          mkCongrFun' e fr a
        else if !info.hasFwdDeps then
          mkCongr' e fr (← simp a)
        else if (← whnfD (← inferType f)).isArrow then
          mkCongr' e fr (← simp a)
        else
          mkCongrFun' e fr (← dsimp a)
      else if (← whnfD (← inferType f)).isArrow then
        mkCongr' e fr (← simp a)
      else
        mkCongrFun' e fr (← dsimp a)
  visit e numArgs

/--
Retrieve auto-generated congruence lemma for `f`.

Remark: If all argument kinds are `fixed` or `eq`, it returns `none` because
using simple congruence theorems `congr`, `congrArg`, and `congrFun` produces a more compact proof.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant95cafe21fac0ec967bef79704887ad6a44510bf7ac0f6e3d0d2b9c4da8c26a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant95cafe21fac0ec967bef79704887ad6a44510bf7ac0f6e3d0d2b9c4da8c26a68.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d40477938cad4453b8a9ed0ed7776e52964f22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
