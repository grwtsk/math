# evalIntervalCoreWithDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e69545567734ef7593691e0d7ac843becb06b4f06f3dd1bf169c5018c5fbf3b",
  "kind": "def",
  "lexical_name": "evalIntervalCoreWithDiv",
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
  "slug": "evalintervalcorewithdiv--482017b5ada81228b9492c93",
  "source": {
    "blob": "2b96b531ddc90394a51239f94d95d32fd3e40739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 707,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:482017b5ada81228b9492c93390200b2215ab6faf616f2f99036b4d22e20fdc4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e69545567734ef7593691e0d7ac843becb06b4f06f3dd1bf169c5018c5fbf3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalCoreWithDiv (e : Expr) (ρ : IntervalEnv) (cfg : EvalConfig := {}) : IntervalRat :=
  match e with
  | Expr.const q => IntervalRat.singleton q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ => IntervalRat.add (evalIntervalCoreWithDiv e₁ ρ cfg) (evalIntervalCoreWithDiv e₂ ρ cfg)
  | Expr.mul e₁ e₂ => IntervalRat.mul (evalIntervalCoreWithDiv e₁ ρ cfg) (evalIntervalCoreWithDiv e₂ ρ cfg)
  | Expr.neg e => IntervalRat.neg (evalIntervalCoreWithDiv e ρ cfg)
  | Expr.inv e₁ =>
      let J := evalIntervalCoreWithDiv e₁ ρ cfg
      -- Check if interval is bounded away from zero
      if J.lo > 0 then
        -- Positive interval: [a,b]⁻¹ = [1/b, 1/a]
        let invHi := 1 / J.lo
        let invLo := 1 / J.hi
        if h : invLo ≤ invHi then { lo := invLo, hi := invHi, le := h }
        else { lo := invHi, hi := invLo, le := by linarith }
      else if J.hi < 0 then
        -- Negative interval: [a,b]⁻¹ = [1/b, 1/a] (note: a < b < 0 so 1/b > 1/a)
        let invHi := 1 / J.lo
        let invLo := 1 / J.hi
        if h : invLo ≤ invHi then { lo := invLo, hi := invHi, le := h }
        else { lo := invHi, hi := invLo, le := by linarith }
      else
        -- Interval contains zero: return wide bounds (sound but imprecise)
        ⟨-1000000000000000000000000000000, 1000000000000000000000000000000, by norm_num⟩
  | Expr.exp e => IntervalRat.expComputable (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.sin e => IntervalRat.sinComputableReduced (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.cos e => IntervalRat.cosComputableReduced (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.log e =>
      -- Computable log using Taylor series via atanh reduction
      let arg := evalIntervalCoreWithDiv e ρ cfg
      IntervalRat.logComputable arg cfg.taylorDepth
  | Expr.atan e => atanInterval (evalIntervalCoreWithDiv e ρ cfg)
  | Expr.arsinh e => arsinhInterval (evalIntervalCoreWithDiv e ρ cfg)
  | Expr.atanh _ => ⟨-100, 100, by norm_num⟩  -- Safe wide default for atanh
  | Expr.sinc _ => ⟨-1, 1, by norm_num⟩  -- sinc is bounded by [-1, 1]
  | Expr.erf e => erfInterval (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.sinh e => sinhInterval (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.cosh e => coshInterval (evalIntervalCoreWithDiv e ρ cfg) cfg.taylorDepth
  | Expr.tanh e => tanhInterval (evalIntervalCoreWithDiv e ρ cfg)  -- Tight bounds: [-1, 1]
  | Expr.sqrt e => IntervalRat.sqrtIntervalTightPrec (evalIntervalCoreWithDiv e ρ cfg)
  | Expr.namedConst c => c.interval

/-- A real environment is contained in an interval environment -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b96b531ddc90394a51239f94d95d32fd3e40739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
