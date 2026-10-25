# expandCoe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:539943140529163f06f15bc0fa96c87fadac2aeff9d66a7d418fcceb6314c5bd",
  "kind": "def",
  "lexical_name": "expandCoe",
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
  "slug": "expandcoe--f0e4fa23be0a9fc6fc7f07bd",
  "source": {
    "blob": "2590b7f7491eaae9ee6bfc15c31576b5a0fe4473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e4fa23be0a9fc6fc7f07bd15678553c2729555190faae020b373a9681ac233",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:539943140529163f06f15bc0fa96c87fadac2aeff9d66a7d418fcceb6314c5bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandCoe (e : Expr) : MetaM (Expr × List Name) := StateT.run (s := ([] : List Name)) do
  withReducibleAndInstances do
    transform e fun e => do
      let f := e.getAppFn
      if f.isConst then
        let declName := f.constName!
        if isCoeDecl (← getEnv) declName then
          /-
          Unfolding an instance projection corresponds to unfolding the target of the projection
          (and then reducing the projection). Thus we can recursively visit projections before
          recording the declaration. We shouldn't need to record any other arguments because they
          should still appear after unfolding (unless there are unused variables in the instances).
          -/
          recordExtraModUseFromDecl (isMeta := false) (← recProjTarget e)
          if let some e' ← unfoldDefinition? e then
            /-
            If the unfolded coercion is an application of `Coe.coe` and its third argument is
            an application of a constant, record this constant's name.
            -/
            if declName = ``Coe.coe then
              if let some inst := e.getAppArgs[2]? then
                let g := inst.getAppFn
                if g.isConst then
                  let instName := g.constName!
                  StateT.set (instName :: (← StateT.get))
            return .visit e'.headBeta
      return .continue

register_builtin_option autoLift : Bool := {
  defValue := true
  descr    := "Insert monadic lifts (i.e., `liftM` and coercions) when needed."
}

/-- Coerces `expr` to `expectedType` using `CoeT`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2590b7f7491eaae9ee6bfc15c31576b5a0fe4473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
