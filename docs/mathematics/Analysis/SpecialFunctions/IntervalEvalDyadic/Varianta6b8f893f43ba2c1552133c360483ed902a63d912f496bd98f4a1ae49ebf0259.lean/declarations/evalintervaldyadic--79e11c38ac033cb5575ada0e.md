# evalIntervalDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:378b02a5b4ca4aca150236e2c9e93907e65f9c601412a410d070f81b97121e3b",
  "kind": "def",
  "lexical_name": "evalIntervalDyadic",
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
  "slug": "evalintervaldyadic--79e11c38ac033cb5575ada0e",
  "source": {
    "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 240,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79e11c38ac033cb5575ada0e6975bbae7b91e569b91b704ae78cca56e67ec2e5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:378b02a5b4ca4aca150236e2c9e93907e65f9c601412a410d070f81b97121e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntervalDyadic (e : Expr) (ρ : IntervalDyadicEnv) (cfg : DyadicConfig := {}) : IntervalDyadic :=
  match e with
  | Expr.const q =>
      -- Convert rational constant to Dyadic interval with outward rounding
      IntervalDyadic.ofIntervalRat (IntervalRat.singleton q) cfg.precision
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ =>
      let I₁ := evalIntervalDyadic e₁ ρ cfg
      let I₂ := evalIntervalDyadic e₂ ρ cfg
      (IntervalDyadic.add I₁ I₂).roundOut cfg.precision
  | Expr.mul e₁ e₂ =>
      let I₁ := evalIntervalDyadic e₁ ρ cfg
      let I₂ := evalIntervalDyadic e₂ ρ cfg
      (IntervalDyadic.mul I₁ I₂).roundOut cfg.precision
  | Expr.neg e =>
      let I := evalIntervalDyadic e ρ cfg
      IntervalDyadic.neg I  -- Negation doesn't increase precision
  | Expr.inv e => invIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.exp e => expIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.sin e => sinIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.cos e => cosIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.log e => logIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.atan e => atanIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.arsinh e => arsinhIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.atanh e => atanhIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.sinc e => sincIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.erf e => erfIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.sinh e => sinhIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.cosh e => coshIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.tanh e => tanhIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.sqrt e => sqrtIntervalDyadic (evalIntervalDyadic e ρ cfg) cfg
  | Expr.namedConst c => IntervalDyadic.ofIntervalRat c.interval cfg.precision

/-! ### Correctness -/

/-- A real environment is contained in a Dyadic interval environment -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
