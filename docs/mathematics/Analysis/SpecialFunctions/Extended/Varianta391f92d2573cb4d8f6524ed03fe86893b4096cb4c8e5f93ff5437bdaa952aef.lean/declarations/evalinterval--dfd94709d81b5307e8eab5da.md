# evalInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0750c5b18e4f0baa3c8fec850eea83289ef4824f046ec07d1b58375dc92c81b5",
  "kind": "def",
  "lexical_name": "evalInterval",
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
  "slug": "evalinterval--dfd94709d81b5307e8eab5da",
  "source": {
    "blob": "c6c8968e1e1054c142c16146397b6c46d2109099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 58,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfd94709d81b5307e8eab5da08235dd5d3af40d3d8a75cb9924610db7f310a06",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0750c5b18e4f0baa3c8fec850eea83289ef4824f046ec07d1b58375dc92c81b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalInterval (e : Expr) (ρ : IntervalEnv) : IntervalRat :=
  match e with
  | Expr.const q => IntervalRat.singleton q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ => IntervalRat.add (evalInterval e₁ ρ) (evalInterval e₂ ρ)
  | Expr.mul e₁ e₂ => IntervalRat.mul (evalInterval e₁ ρ) (evalInterval e₂ ρ)
  | Expr.neg e => IntervalRat.neg (evalInterval e ρ)
  | Expr.inv _ => default  -- Not in ExprSupported; safe default
  | Expr.exp e => IntervalRat.expInterval (evalInterval e ρ)
  | Expr.sin e => sinInterval (evalInterval e ρ)
  | Expr.cos e => cosInterval (evalInterval e ρ)
  | Expr.log _ => default  -- Not in ExprSupported; use evalInterval? for log
  | Expr.atan e => atanInterval (evalInterval e ρ)
  | Expr.arsinh e => arsinhInterval (evalInterval e ρ)
  | Expr.atanh _ => default  -- Not in ExprSupported; use evalInterval? for atanh
  | Expr.sinc _ => ⟨-1, 1, by norm_num⟩  -- sinc is bounded by [-1, 1]
  | Expr.erf _ => ⟨-1, 1, by norm_num⟩  -- erf is bounded by [-1, 1]
  | Expr.sinh _ => default  -- sinh unbounded; use evalIntervalCore for tight bounds
  | Expr.cosh _ => default  -- cosh unbounded; use evalIntervalCore for tight bounds
  | Expr.tanh _ => default  -- tanh bounded but not in ExprSupported; use evalIntervalCore
  | Expr.sqrt e => IntervalRat.sqrtInterval (evalInterval e ρ)
  | Expr.namedConst c => c.interval

/-- Fundamental correctness theorem for extended evaluation.

    This theorem is FULLY PROVED (no sorry, no axioms) for supported expressions.
    The `hsupp` hypothesis ensures we only consider expressions in the verified subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c8968e1e1054c142c16146397b6c46d2109099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
