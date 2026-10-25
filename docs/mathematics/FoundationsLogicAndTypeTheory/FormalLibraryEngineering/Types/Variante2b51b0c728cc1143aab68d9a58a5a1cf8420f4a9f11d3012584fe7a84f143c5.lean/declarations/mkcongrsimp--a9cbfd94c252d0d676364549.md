# mkCongrSimp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e7fb9082a3097f0f54249e7d207d75f680648c487b0432f2b022854f7b487c",
  "kind": "def",
  "lexical_name": "mkCongrSimp?",
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
  "slug": "mkcongrsimp--a9cbfd94c252d0d676364549",
  "source": {
    "blob": "478b7f82f24f885dac2cb1113f049505ee5d7b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 773,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9cbfd94c252d0d6763645494ffd47f3ed15e6a714ff42b443a993dcba33884c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e7fb9082a3097f0f54249e7d207d75f680648c487b0432f2b022854f7b487c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCongrSimp? (f : Expr) : SimpM (Option CongrTheorem) := do profileitM Exception "congr simp thm" (← getOptions) do
  if f.isConst then if (← isMatcher f.constName!) then
    -- We always use simple congruence theorems for auxiliary match applications
    return none
  match (← get).congrCache[f]? with
  | some thm? => return thm?
  | none =>
    let thm? ← go?
    modify fun s => { s with congrCache := s.congrCache.insert f thm? }
    return thm?
where
  go? : SimpM (Option CongrTheorem) := do
    let info ← getFunInfo f
    let argKinds ← getCongrSimpKinds f info
    if argKinds.all fun k => match k with | .fixed | .eq => true | _ => false then
      /- See remark above. -/
      return none
    else if !(← getConfig).congrConsts then
      mkCongrSimpCore? f info argKinds
    else if let .const declName us := f then
      let some thm ← mkCongrSimpForConst? declName us | mkCongrSimpCore? f info argKinds
      if thm.argKinds == argKinds then
        trace[congr.thm] "used global `{thm.proof.getAppFn}`"
        return some thm
      else
        trace[congr.thm] "argKind mismatch while generating congr_simp theorem for `{declName}`"
        mkCongrSimpCore? f info argKinds
    else
      mkCongrSimpCore? f info argKinds


/--
Try to use automatically generated congruence theorems. See `mkCongrSimp?`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478b7f82f24f885dac2cb1113f049505ee5d7b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
