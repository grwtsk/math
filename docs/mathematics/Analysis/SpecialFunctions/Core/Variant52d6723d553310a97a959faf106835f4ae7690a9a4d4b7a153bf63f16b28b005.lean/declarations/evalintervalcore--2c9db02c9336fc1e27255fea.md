# evalIntervalCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12a89d5c9c0780001ac554e6d4fcfa4032fafd37b60a90ec9a481a59173c7586",
  "kind": "def",
  "lexical_name": "evalIntervalCore",
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
  "slug": "evalintervalcore--2c9db02c9336fc1e27255fea",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 666,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c9db02c9336fc1e27255fea78bc480bd4393961ab3cd9d8d2dad7ae0ada7602",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12a89d5c9c0780001ac554e6d4fcfa4032fafd37b60a90ec9a481a59173c7586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalCore (e : Expr) (ρ : IntervalEnv) (cfg : EvalConfig := {}) : IntervalRat :=
  match e with
  | Expr.const q => IntervalRat.singleton q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ => IntervalRat.add (evalIntervalCore e₁ ρ cfg) (evalIntervalCore e₂ ρ cfg)
  | Expr.mul e₁ e₂ => IntervalRat.mul (evalIntervalCore e₁ ρ cfg) (evalIntervalCore e₂ ρ cfg)
  | Expr.neg e => IntervalRat.neg (evalIntervalCore e ρ cfg)
  | Expr.inv e => invInterval (evalIntervalCore e ρ cfg)
  | Expr.exp e => IntervalRat.expComputable (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.sin e => IntervalRat.sinComputableReduced (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.cos e => IntervalRat.cosComputableReduced (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.log e => IntervalRat.logComputable (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.atan e => atanInterval (evalIntervalCore e ρ cfg)
  | Expr.arsinh e => arsinhInterval (evalIntervalCore e ρ cfg)
  | Expr.atanh _ => default  -- Not in ExprSupportedCore; use evalInterval? for atanh
  | Expr.sinc _ => ⟨-1, 1, by norm_num⟩  -- sinc is bounded by [-1, 1]
  | Expr.erf e => erfInterval (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.sinh e => sinhInterval (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.cosh e => coshInterval (evalIntervalCore e ρ cfg) cfg.taylorDepth
  | Expr.tanh e => tanhInterval (evalIntervalCore e ρ cfg)  -- Tight bounds: [-1, 1]
  | Expr.sqrt e => IntervalRat.sqrtIntervalTightPrec (evalIntervalCore e ρ cfg)
  | Expr.namedConst c => c.interval

/-- Computable interval evaluator with division support.

    This extends evalIntervalCore to handle inv/div by computing interval inverse
    when the denominator is bounded away from zero. Returns wide bounds when
    the denominator interval contains zero.

    NOTE: This is less rigorous than evalInterval? because it doesn't fail
    when 0 is in the denominator range - it just returns wide bounds. This is
    useful for applications where we want to continue safely
    even when the analysis is imprecise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
