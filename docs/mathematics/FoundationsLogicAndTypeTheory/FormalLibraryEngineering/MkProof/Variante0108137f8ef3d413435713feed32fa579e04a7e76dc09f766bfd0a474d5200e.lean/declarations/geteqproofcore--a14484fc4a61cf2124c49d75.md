# getEqProofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5a42c4d17e1a3d5a82458f78c9512b56a05c299da7064abfebf95845dbd9d4c",
  "kind": "def",
  "lexical_name": "getEqProofCore",
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
  "slug": "geteqproofcore--a14484fc4a61cf2124c49d75",
  "source": {
    "blob": "27ead5f5dd7cce93d27c33816eff02f07b936f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 429,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a14484fc4a61cf2124c49d756700b1ffbfe7700c3cec34303b504cd836fa25cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5a42c4d17e1a3d5a82458f78c9512b56a05c299da7064abfebf95845dbd9d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getEqProofCore (e₁ e₂ : Expr) (asHEq : Bool) : CCM (Option Expr) := do
  if e₁.hasExprMVar || e₂.hasExprMVar then return none
  if ← pureIsDefEq e₁ e₂ then
    if asHEq then
      return some (← mkHEqRefl e₁)
    else
      return some (← mkEqRefl e₁)
  let some n₁ ← getEntry e₁ | return none
  let some n₂ ← getEntry e₂ | return none
  if n₁.root != n₂.root then return none
  let heqProofs ← hasHEqProofs n₁.root
  -- 1. Retrieve "path" from `e₁` to `root`
  let mut path₁ : Array Expr := #[]
  let mut Hs₁ : Array EntryExpr := #[]
  let mut visited : ExprSet := ∅
  let mut it₁ := e₁
  repeat
    visited := visited.insert it₁
    let some it₁N ← getEntry it₁ | failure
    let some t := it₁N.target | break
    path₁ := path₁.push t
    let some p := it₁N.proof | failure
    Hs₁ := Hs₁.push (← flipProof p it₁N.flipped heqProofs)
    it₁ := t
  guard (it₁ == n₁.root)
  -- 2. The path from `e₂` to root must have at least one element `c` in visited
  -- Retrieve "path" from `e₂` to `c`
  let mut path₂ : Array Expr := #[]
  let mut Hs₂ : Array EntryExpr := #[]
  let mut it₂ := e₂
  repeat
    if visited.contains it₂ then
      break -- found common
    let some it₂N ← getEntry it₂ | failure
    let some t := it₂N.target | failure
    path₂ := path₂.push it₂
    let some p := it₂N.proof | failure
    Hs₂ := Hs₂.push (← flipProof p (!it₂N.flipped) heqProofs)
    it₂ := t
  -- `it₂` is the common element...
  -- 3. Shrink `path₁`/`Hs₁` until we find `it₂` (the common element)
  repeat
    if path₁.isEmpty then
      guard (it₂ == e₁)
      break
    if path₁.back! == it₂ then
      -- found it!
      break
    path₁ := path₁.pop
    Hs₁ := Hs₁.pop

  -- 4. Build transitivity proof
  let mut pr? : Option Expr := none
  let mut lhs := e₁
  for h : i in [:path₁.size] do
    pr? ← some <$> mkTransOpt pr? (← mkProof lhs path₁[i] Hs₁[i]! heqProofs) heqProofs
    lhs := path₁[i]
  let mut i := Hs₂.size
  while i > 0 do
    i := i - 1
    pr? ← some <$> mkTransOpt pr? (← mkProof lhs path₂[i]! Hs₂[i]! heqProofs) heqProofs
    lhs := path₂[i]!
  let mut some pr := pr? | failure
  if heqProofs && !asHEq then
    pr ← mkAppM ``eq_of_heq #[pr]
  else if !heqProofs && asHEq then
    pr ← mkAppM ``heq_of_eq #[pr]
  return pr

/-- Build a proof for `e₁ = e₂`.
The result is `none` if `e₁` and `e₂` are not in the same equivalence class. -/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ead5f5dd7cce93d27c33816eff02f07b936f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
