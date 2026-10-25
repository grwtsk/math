# mkEMatchTheoremWithKind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a36e4006da182057119d798491585d9620a5d75c15658fb87579aaf0260f6766",
  "kind": "def",
  "lexical_name": "mkEMatchTheoremWithKind?",
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
  "slug": "mkematchtheoremwithkind--24d861c159430df59376b854",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1424,
    "line": 1361,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24d861c159430df59376b8542f8b68fff37d2cc2171b9e60968a7362f91e14f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a36e4006da182057119d798491585d9620a5d75c15658fb87579aaf0260f6766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1361–1424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkEMatchTheoremWithKind?
      (origin : Origin) (levelParams : Array Name) (proof : Expr) (kind : EMatchTheoremKind) (symPrios : SymbolPriorities)
      (groundPatterns := true) (showInfo := false) (minIndexable := false) : MetaM (Option EMatchTheorem) := do
  match kind with
  | .eqLhs gen =>
    return (← mkEMatchEqTheoremCore origin levelParams proof (normalizePattern := true) (useLhs := true) (gen := gen) (showInfo := showInfo))
  | .eqRhs gen =>
    return (← mkEMatchEqTheoremCore origin levelParams proof (normalizePattern := true) (useLhs := false) (gen := gen) (showInfo := showInfo))
  | .eqBwd =>
    return (← mkEMatchEqBwdTheoremCore origin levelParams proof (showInfo := showInfo))
  | _ =>
    pure ()
  let type ← inferEMatchProofType proof kind.gen
  /-
  Remark: we should not use `forallTelescopeReducing` (with default reducibility) here
  because it may unfold a definition/abstraction, and then select a suboptimal pattern.
  Here is an example. Suppose we have
  ```
  def State.le (σ₁ σ₂ : State) : Prop := ∀ ⦃x : Var⦄ ⦃v : Val⦄, σ₁.find? x = some v → σ₂.find? x = some v

  infix:50 " ≼ " => State.le
  ```
  Then, we write the theorem
  ```
  @[grind] theorem State.join_le_left (σ₁ σ₂ : State) : σ₁.join σ₂ ≼ σ₁ := by
  ```
  We do not want `State.le` to be unfolded and the abstraction exposed.

  That said, we must still reduce `[reducible]` definitions since `grind` unfolds them.
  -/
  withReducible <| forallTelescopeReducing type fun xs type => withDefault do
    let searchPlaces ← match kind with
      | .fwd =>
        let ps ← getPropTypes xs
        if ps.isEmpty then
          throwError "invalid `grind` forward theorem, theorem `{origin.pp}` does not have propositional hypotheses"
        pure ps
      | .bwd _ => pure #[type]
      | .leftRight => pure <| (← getPropTypes xs).push type
      | .rightLeft => pure <| #[type] ++ (← getPropTypes xs).reverse
      | .default _ => pure <| #[type] ++ (← getPropTypes xs)
      | _ => unreachable!
    go xs searchPlaces
where
  collect (xs : Array Expr) (searchPlaces : Array Expr) : MetaM (Option (List Expr × List HeadIndex)) := do
    let prios := collectUsedPriorities symPrios searchPlaces
    for minPrio in prios do
      if let some r ← collectPatterns? proof xs searchPlaces symPrios minPrio (minIndexable := minIndexable) then
        return some r
      else if groundPatterns then
        if let some (pattern, symbols) ← collectGroundPattern? proof xs searchPlaces symPrios minPrio then
          return some ([pattern], symbols)
    return none

  go (xs : Array Expr) (searchPlaces : Array Expr) : MetaM (Option EMatchTheorem) := do
    let some (patterns, symbols) ← collect xs searchPlaces | return none
    let numParams := xs.size
    trace[grind.ematch.pattern] "{origin.pp}: {patterns.map ppPattern}"
    logPatternWhen showInfo origin patterns
    return some {
      proof, patterns, numParams, symbols
      levelParams, origin, kind, minIndexable
    }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L1361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
