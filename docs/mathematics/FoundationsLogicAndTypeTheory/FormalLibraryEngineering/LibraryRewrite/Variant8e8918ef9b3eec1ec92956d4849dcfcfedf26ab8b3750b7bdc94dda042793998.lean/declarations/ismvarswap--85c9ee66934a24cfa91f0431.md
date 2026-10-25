# isMVarSwap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eb7514ccc882fa8448ea032dc5d0a7e48e32911f7889b74eb10012383055d6b",
  "kind": "def",
  "lexical_name": "isMVarSwap",
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
  "slug": "ismvarswap--85c9ee66934a24cfa91f0431",
  "source": {
    "blob": "c93fa01e4ac2ff2255298b779d4bc4edbb82ae93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85c9ee66934a24cfa91f04319b94f30b3eccbdd9e8123d6f640e78ce21c60438",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eb7514ccc882fa8448ea032dc5d0a7e48e32911f7889b74eb10012383055d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isMVarSwap (t s : Expr) : Bool :=
  go t s {} |>.isSome
where
  /-- The main loop of `isMVarSwap`. Returning `none` corresponds to a failure. -/
  go (t s : Expr) (swaps : List (MVarId × MVarId)) : Option (List (MVarId × MVarId)) := do
  let isTricky e := e.hasExprMVar || e.hasLevelParam
  if isTricky t then
    guard (isTricky s)
    match t, s with
    -- Note we don't bother keeping track of universe level metavariables.
    | .const n₁ _       , .const n₂ _        => guard (n₁ == n₂); some swaps
    | .sort _           , .sort _            => some swaps
    | .forallE _ d₁ b₁ _, .forallE _ d₂ b₂ _ => go d₁ d₂ swaps >>= go b₁ b₂
    | .lam _ d₁ b₁ _    , .lam _ d₂ b₂ _     => go d₁ d₂ swaps >>= go b₁ b₂
    | .mdata d₁ e₁      , .mdata d₂ e₂       => guard (d₁ == d₂); go e₁ e₂ swaps
    | .letE _ t₁ v₁ b₁ _, .letE _ t₂ v₂ b₂ _ => go t₁ t₂ swaps >>= go v₁ v₂ >>= go b₁ b₂
    | .app f₁ a₁        , .app f₂ a₂         => go f₁ f₂ swaps >>= go a₁ a₂
    | .proj n₁ i₁ e₁    , .proj n₂ i₂ e₂     => guard (n₁ == n₂ && i₁ == i₂); go e₁ e₂ swaps
    | .fvar fvarId₁     , .fvar fvarId₂      => guard (fvarId₁ == fvarId₂); some swaps
    | .lit v₁           , .lit v₂            => guard (v₁ == v₂); some swaps
    | .bvar i₁          , .bvar i₂           => guard (i₁ == i₂); some swaps
    | .mvar mvarId₁     , .mvar mvarId₂      =>
      match swaps.find? (·.1 == mvarId₁) with
      | none =>
        guard (swaps.all (·.2 != mvarId₂))
        let swaps := (mvarId₁, mvarId₂) :: swaps
        if mvarId₁ == mvarId₂ then
          some swaps
        else
          some <| (mvarId₂, mvarId₁) :: swaps
      | some (_, mvarId) => guard (mvarId == mvarId₂); some swaps
    | _                 , _                  => none
  else
    guard (t == s); some swaps

/-- Extract the left and right-hand sides of an equality or iff statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93fa01e4ac2ff2255298b779d4bc4edbb82ae93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
