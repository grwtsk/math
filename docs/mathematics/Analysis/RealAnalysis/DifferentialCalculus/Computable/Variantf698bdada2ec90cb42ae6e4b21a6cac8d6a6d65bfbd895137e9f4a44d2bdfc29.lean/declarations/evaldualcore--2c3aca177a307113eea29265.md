# evalDualCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08943ac5b33b8beaf0d82561efc0246438c43a2cf1fb8bdaa8e38db1a4d73dde",
  "kind": "def",
  "lexical_name": "evalDualCore",
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
  "slug": "evaldualcore--2c3aca177a307113eea29265",
  "source": {
    "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c3aca177a307113eea29265fa6f53edbda0b65da0d35d70baab93738ea41a1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08943ac5b33b8beaf0d82561efc0246438c43a2cf1fb8bdaa8e38db1a4d73dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDualCore (e : Expr) (ρ : DualEnv) (cfg : EvalConfig := {}) : DualInterval :=
  match e with
  | Expr.const q => DualInterval.const q
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ => DualInterval.add (evalDualCore e₁ ρ cfg) (evalDualCore e₂ ρ cfg)
  | Expr.mul e₁ e₂ => DualInterval.mul (evalDualCore e₁ ρ cfg) (evalDualCore e₂ ρ cfg)
  | Expr.neg e => DualInterval.neg (evalDualCore e ρ cfg)
  | Expr.inv e => DualInterval.inv (evalDualCore e ρ cfg)
  | Expr.exp e => DualInterval.expCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.sin e => DualInterval.sinCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.cos e => DualInterval.cosCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.log e => DualInterval.logCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.atan e => DualInterval.atan (evalDualCore e ρ cfg)
  | Expr.arsinh e => DualInterval.arsinh (evalDualCore e ρ cfg)
  | Expr.atanh _ => default
  | Expr.sinc e => DualInterval.sinc (evalDualCore e ρ cfg)
  | Expr.erf e => DualInterval.erfCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.sinh e => DualInterval.sinhCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.cosh e => DualInterval.coshCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.tanh e => DualInterval.tanhCore (evalDualCore e ρ cfg) cfg.taylorDepth
  | Expr.sqrt e => DualInterval.sqrt (evalDualCore e ρ cfg)
  | Expr.namedConst c => DualInterval.ofMathConst c

/-- Computable single-variable derivative interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747babc0407118a18da9ff930c8c65b2fc3ff6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
