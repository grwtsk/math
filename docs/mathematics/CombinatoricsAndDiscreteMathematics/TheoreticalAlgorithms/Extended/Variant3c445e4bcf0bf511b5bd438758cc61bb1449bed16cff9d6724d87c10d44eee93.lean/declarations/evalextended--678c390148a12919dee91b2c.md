# evalExtended

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3687a40714ed0b49ac1b3b83d4057462128badba9a8ffef399b30d2bb6f0571",
  "kind": "def",
  "lexical_name": "evalExtended",
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
  "slug": "evalextended--678c390148a12919dee91b2c",
  "source": {
    "blob": "3407862e03ef0fb006b96323c7e78f6fa603fa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 438,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:678c390148a12919dee91b2c60067ee8cbc1f92556fd9b78da5f06c240d26b50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3687a40714ed0b49ac1b3b83d4057462128badba9a8ffef399b30d2bb6f0571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalExtended (e : Expr) (ρ : ExtendedEnv) (cfg : ExtendedConfig := {}) : ExtendedInterval :=
  match e with
  | Expr.const q => ExtendedInterval.singleton (IntervalRat.singleton q)
  | Expr.var idx => ρ idx
  | Expr.add e₁ e₂ =>
      liftBinary IntervalRat.add (evalExtended e₁ ρ cfg) (evalExtended e₂ ρ cfg)
  | Expr.mul e₁ e₂ =>
      liftBinary IntervalRat.mul (evalExtended e₁ ρ cfg) (evalExtended e₂ ρ cfg)
  | Expr.neg e =>
      liftUnary IntervalRat.neg (evalExtended e ρ cfg)
  | Expr.inv e =>
      -- Key case: use extended inversion to split at zero
      let inner := evalExtended e ρ cfg
      -- Apply invExtended to each part and flatten
      ⟨inner.parts.flatMap (fun I => (invExtended I cfg.largeBound).parts)⟩
  | Expr.exp e =>
      liftUnary (fun I => IntervalRat.expComputable I cfg.taylorDepth)
        (evalExtended e ρ cfg)
  | Expr.sin e =>
      liftUnary (fun I => IntervalRat.sinComputable I cfg.taylorDepth)
        (evalExtended e ρ cfg)
  | Expr.cos e =>
      liftUnary (fun I => IntervalRat.cosComputable I cfg.taylorDepth)
        (evalExtended e ρ cfg)
  | Expr.log e =>
      -- For log, filter to positive intervals and apply logComputable
      let inner := evalExtended e ρ cfg
      let filtered := inner.parts.filter (fun I => decide (0 < I.lo))
      if filtered.isEmpty then
        -- Fallback: return a very wide interval to ensure soundness
        ExtendedInterval.singleton ⟨-1000, 1000, by norm_num⟩
      else
        ⟨filtered.map (fun I => IntervalRat.logComputable I cfg.taylorDepth)⟩
  | Expr.atan e =>
      liftUnary atanInterval (evalExtended e ρ cfg)
  | Expr.arsinh e =>
      liftUnary arsinhInterval (evalExtended e ρ cfg)
  | Expr.atanh _ =>
      -- atanh requires |x| < 1; use conservative bounds
      ExtendedInterval.singleton ⟨-100, 100, by norm_num⟩
  | Expr.sinc _ =>
      -- sinc is bounded by [-1, 1]
      ExtendedInterval.singleton ⟨-1, 1, by norm_num⟩
  | Expr.erf _ =>
      -- erf is bounded by [-1, 1]
      ExtendedInterval.singleton ⟨-1, 1, by norm_num⟩
  | Expr.sinh e =>
      liftUnary (fun I => sinhInterval I cfg.taylorDepth) (evalExtended e ρ cfg)
  | Expr.cosh e =>
      liftUnary (fun I => coshInterval I cfg.taylorDepth) (evalExtended e ρ cfg)
  | Expr.tanh e =>
      liftUnary tanhInterval (evalExtended e ρ cfg)
  | Expr.sqrt e =>
      liftUnary IntervalRat.sqrtInterval (evalExtended e ρ cfg)
  | Expr.namedConst c =>
      ExtendedInterval.singleton c.interval

/-- Convenience function for single-variable extended evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3407862e03ef0fb006b96323c7e78f6fa603fa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
