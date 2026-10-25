# evalDualRefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4459f4176cbb2e1ec1ab55f827c036b04f272fdbcfc56330de16afe2bf340ea3",
  "kind": "def",
  "lexical_name": "evalDualRefined",
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
  "slug": "evaldualrefined--ddfb6540dc383d02620093b5",
  "source": {
    "blob": "4389c9871d08669b1ef5b23c4546296b381b9551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddfb6540dc383d02620093b5ce8da65d0731108b7b80314dce77a289ef0d2319",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4459f4176cbb2e1ec1ab55f827c036b04f272fdbcfc56330de16afe2bf340ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalDualRefined (e : Expr) (ρ : DualEnv) : DualInterval :=
  match e with
  | Expr.const q => DualInterval.const q
  | Expr.var i => ρ i
  | Expr.add e₁ e₂ => DualInterval.add (evalDualRefined e₁ ρ) (evalDualRefined e₂ ρ)
  | Expr.mul e₁ e₂ => DualInterval.mul (evalDualRefined e₁ ρ) (evalDualRefined e₂ ρ)
  | Expr.neg e => DualInterval.neg (evalDualRefined e ρ)
  | Expr.inv _ => default  -- Not supported; safe default
  | Expr.sin e => DualInterval.sinRefined (evalDualRefined e ρ)
  | Expr.cos e => DualInterval.cosRefined (evalDualRefined e ρ)
  | Expr.exp e => DualInterval.expRefined (evalDualRefined e ρ)
  | Expr.log _ => default  -- Not supported; use partial evaluation instead
  | Expr.atan e => DualInterval.atan (evalDualRefined e ρ)
  | Expr.arsinh e => DualInterval.arsinh (evalDualRefined e ρ)
  | Expr.atanh _ => default  -- Partial function; use partial evaluation instead
  | Expr.sinc e => DualInterval.sinc (evalDualRefined e ρ)
  | Expr.erf e => DualInterval.erf (evalDualRefined e ρ)
  | Expr.sinh e => DualInterval.sinh (evalDualRefined e ρ)
  | Expr.cosh e => DualInterval.cosh (evalDualRefined e ρ)
  | Expr.tanh e => DualInterval.tanh (evalDualRefined e ρ)
  | Expr.sqrt e => DualInterval.sqrt (evalDualRefined e ρ)
  | Expr.namedConst c => DualInterval.ofMathConst c

/-- Single-variable refined dual evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4389c9871d08669b1ef5b23c4546296b381b9551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
