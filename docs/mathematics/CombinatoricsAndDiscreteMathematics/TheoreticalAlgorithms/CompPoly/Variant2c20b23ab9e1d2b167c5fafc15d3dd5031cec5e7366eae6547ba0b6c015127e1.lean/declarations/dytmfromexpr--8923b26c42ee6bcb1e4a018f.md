# dyTMFromExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d53ad2e935a3cbd70d6547b23c0ad8e8f91fe34d660f1d6c83f630b37f3c9f4",
  "kind": "def",
  "lexical_name": "dyTMFromExpr",
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
  "slug": "dytmfromexpr--8923b26c42ee6bcb1e4a018f",
  "source": {
    "blob": "9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 353,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8923b26c42ee6bcb1e4a018fd47caab007ff14acd7065fd0ab801304dcf0f2f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d53ad2e935a3cbd70d6547b23c0ad8e8f91fe34d660f1d6c83f630b37f3c9f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dyTMFromExpr (e : Expr) (domain : IntervalDyadic)
    (maxDeg : ℕ := 8) (nTerms : ℕ := 8) (cfg : DyadicConfig := {}) (maxBits : Nat := 256) : Option DyTM :=
  let p := cfg.precision
  match e with
  | .const q =>
    let cDyad := (IntervalDyadic.ofIntervalRat ⟨q, q, le_refl q⟩ p).midpoint
    some (DyTM.const cDyad domain p)
  | .var _ => some (DyTM.identity domain p)
  | .add e₁ e₂ => do
    let tm1 ← dyTMFromExpr e₁ domain maxDeg nTerms cfg maxBits
    let tm2 ← dyTMFromExpr e₂ domain maxDeg nTerms cfg maxBits
    pure (DyTM.add tm1 tm2)
  | .mul e₁ e₂ => do
    let tm1 ← dyTMFromExpr e₁ domain maxDeg nTerms cfg maxBits
    let tm2 ← dyTMFromExpr e₂ domain maxDeg nTerms cfg maxBits
    pure (DyTM.mul tm1 tm2 maxDeg maxBits)
  | .neg e => do
    let tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    pure (DyTM.neg tm)
  | .inv e => do
    let tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    DyTM.inv tm maxDeg nTerms cfg maxBits
  | .log e => do
    let _tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    DyTM.log _tm maxDeg nTerms cfg maxBits
  | .exp e => do
    let _tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    let expBound := evalIntervalDyadic (.exp e) (fun _ => domain) cfg
    pure (DyTM.fromInterval expBound domain cfg.precision)
  | .sin e => do
    let _tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    let sinBound := evalIntervalDyadic (.sin e) (fun _ => domain) cfg
    pure (DyTM.fromInterval sinBound domain cfg.precision)
  | .cos e => do
    let _tm ← dyTMFromExpr e domain maxDeg nTerms cfg maxBits
    let cosBound := evalIntervalDyadic (.cos e) (fun _ => domain) cfg
    pure (DyTM.fromInterval cosBound domain cfg.precision)
  | _ => none

/-! ### DyTM Integration -/

/-- Integrate a DyTM over its domain, returning result as IntervalRat. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant2c20b23ab9e1d2b167c5fafc15d3dd5031cec5e7366eae6547ba0b6c015127e1.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd1bd2c5d838d3b9319e05507001cc0df7ad7ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
