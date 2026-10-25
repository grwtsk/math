# mkEMatchTheoremWithKind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:035b469fd7d0068907d6e253e3aaebed7ab4645e1b8c26362f4d4140bf30e561",
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
  "slug": "mkematchtheoremwithkind--aff3390278a85a1fe4d3b3fa",
  "source": {
    "blob": "9d947cf9bc70039e5adf3ad5b7759178dd0d52bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1416,
    "line": 1353,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff3390278a85a1fe4d3b3fa20b06c0c4d01e6ee507a7e1b2000209334f6242b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:035b469fd7d0068907d6e253e3aaebed7ab4645e1b8c26362f4d4140bf30e561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1353–1416.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean#L1353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
