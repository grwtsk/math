# evalIntervalAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c39bfb965e0bbb9877380384cf25d026406a29582b52e6251c0388edb83637bf",
  "kind": "def",
  "lexical_name": "evalIntervalAffine",
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
  "slug": "evalintervalaffine--e42938ee77a1df60432a8aca",
  "source": {
    "blob": "efeff7616967a6a26ef787568fdf4fe3e07002e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 92,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e42938ee77a1df60432a8acad52678a808a789cd511517a891fa910a3dd35b38",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c39bfb965e0bbb9877380384cf25d026406a29582b52e6251c0388edb83637bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalAffine (e : Expr) (ρ : AffineEnv) (cfg : AffineConfig := {}) : AffineForm :=
  match e with
  | Expr.const q => AffineForm.const q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ =>
      AffineForm.add (evalIntervalAffine e₁ ρ cfg) (evalIntervalAffine e₂ ρ cfg)
  | Expr.mul e₁ e₂ =>
      AffineForm.mul (evalIntervalAffine e₁ ρ cfg) (evalIntervalAffine e₂ ρ cfg)
  | Expr.neg e =>
      AffineForm.neg (evalIntervalAffine e ρ cfg)
  | Expr.inv e =>
      AffineForm.inv (evalIntervalAffine e ρ cfg)
  | Expr.exp e =>
      AffineForm.exp (evalIntervalAffine e ρ cfg) cfg.taylorDepth
  | Expr.sinh e =>
      AffineForm.sinh (evalIntervalAffine e ρ cfg) cfg.taylorDepth
  | Expr.cosh e =>
      AffineForm.cosh (evalIntervalAffine e ρ cfg) cfg.taylorDepth
  | Expr.tanh e =>
      AffineForm.tanh (evalIntervalAffine e ρ cfg)
  | Expr.sqrt e =>
      AffineForm.sqrt (evalIntervalAffine e ρ cfg)
  -- Fallback to interval for unsupported transcendentals
  | Expr.sin e =>
      let af := evalIntervalAffine e ρ cfg
      let I := af.toInterval
      let result := IntervalRat.sinComputable I cfg.taylorDepth
      let mid := (result.lo + result.hi) / 2
      let rad := (result.hi - result.lo) / 2
      { c0 := mid, coeffs := [], r := |rad|, r_nonneg := abs_nonneg _ }
  | Expr.cos e =>
      let af := evalIntervalAffine e ρ cfg
      let I := af.toInterval
      let result := IntervalRat.cosComputable I cfg.taylorDepth
      let mid := (result.lo + result.hi) / 2
      let rad := (result.hi - result.lo) / 2
      { c0 := mid, coeffs := [], r := |rad|, r_nonneg := abs_nonneg _ }
  | Expr.log e =>
      let af := evalIntervalAffine e ρ cfg
      let I := af.toInterval
      if h : 0 < I.lo then
        let result := IntervalRat.logComputable I cfg.taylorDepth
        let mid := (result.lo + result.hi) / 2
        let rad := (result.hi - result.lo) / 2
        { c0 := mid, coeffs := [], r := |rad|, r_nonneg := abs_nonneg _ }
      else
        -- Fallback for non-positive inputs
        { c0 := 0, coeffs := [], r := 10^30, r_nonneg := by norm_num }
  | Expr.atan e =>
      -- Global bound [-π/2, π/2] ≈ [-2, 2]
      let neg2 := (-2 : ℚ)
      let pos2 := (2 : ℚ)
      let mid := (neg2 + pos2) / 2
      let rad := (pos2 - neg2) / 2
      { c0 := mid, coeffs := [], r := rad, r_nonneg := by norm_num }
  | Expr.arsinh _ =>
      -- TODO: implement
      default
  | Expr.atanh _ =>
      -- TODO: implement
      default
  | Expr.sinc e =>
      -- sinc(x) = sin(x)/x, bounded in [-1, 1]
      { c0 := 0, coeffs := [], r := 1, r_nonneg := by norm_num }
  | Expr.erf e =>
      -- erf bounded in [-1, 1]
      { c0 := 0, coeffs := [], r := 1, r_nonneg := by norm_num }
  | Expr.namedConst c =>
      let I := c.interval
      let mid := (I.lo + I.hi) / 2
      let rad := (I.hi - I.lo) / 2
      { c0 := mid, coeffs := [], r := |rad|, r_nonneg := abs_nonneg _ }

/-! ### Convenience Functions -/

/-- Evaluate and convert to interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efeff7616967a6a26ef787568fdf4fe3e07002e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
