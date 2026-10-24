# evalDomainValidDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bfe5ad1eb2158ba0b833ae50ad89e3bdc8ac164aa574410ff676dcf9f1f3310",
  "kind": "def",
  "lexical_name": "evalDomainValidDyadic",
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
  "slug": "evaldomainvaliddyadic--138a123b54920ac6438ab0ef",
  "source": {
    "blob": "5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 282,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:138a123b54920ac6438ab0efe49392d0a572c242040b2c5d036c939782263721",
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

Occurrence: `declaration:3bfe5ad1eb2158ba0b833ae50ad89e3bdc8ac164aa574410ff676dcf9f1f3310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDomainValidDyadic (e : Expr) (ρ : IntervalDyadicEnv) (cfg : DyadicConfig := {}) : Prop :=
  match e with
  | Expr.const _ => True
  | Expr.var _ => True
  | Expr.add e₁ e₂ => evalDomainValidDyadic e₁ ρ cfg ∧ evalDomainValidDyadic e₂ ρ cfg
  | Expr.mul e₁ e₂ => evalDomainValidDyadic e₁ ρ cfg ∧ evalDomainValidDyadic e₂ ρ cfg
  | Expr.neg e => evalDomainValidDyadic e ρ cfg
  | Expr.inv e => evalDomainValidDyadic e ρ cfg ∧
      ((evalIntervalDyadic e ρ cfg).toIntervalRat.lo > 0 ∨
       (evalIntervalDyadic e ρ cfg).toIntervalRat.hi < 0)
  | Expr.exp e => evalDomainValidDyadic e ρ cfg
  | Expr.sin e => evalDomainValidDyadic e ρ cfg
  | Expr.cos e => evalDomainValidDyadic e ρ cfg
  | Expr.log e => evalDomainValidDyadic e ρ cfg ∧ (evalIntervalDyadic e ρ cfg).toIntervalRat.lo > 0
  | Expr.atan e => evalDomainValidDyadic e ρ cfg
  | Expr.arsinh e => evalDomainValidDyadic e ρ cfg
  | Expr.atanh e => evalDomainValidDyadic e ρ cfg ∧
      (evalIntervalDyadic e ρ cfg).toIntervalRat.lo > -1 ∧
      (evalIntervalDyadic e ρ cfg).toIntervalRat.hi < 1
  | Expr.sinc e => evalDomainValidDyadic e ρ cfg
  | Expr.erf e => evalDomainValidDyadic e ρ cfg
  | Expr.sinh e => evalDomainValidDyadic e ρ cfg
  | Expr.cosh e => evalDomainValidDyadic e ρ cfg
  | Expr.tanh e => evalDomainValidDyadic e ρ cfg
  | Expr.sqrt e => evalDomainValidDyadic e ρ cfg
  | Expr.namedConst _ => True

/-- Computable (Bool) domain validity check for Dyadic evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Varianta6b8f893f43ba2c1552133c360483ed902a63d912f496bd98f4a1ae49ebf0259.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b7e42ee5ea1c850273e30cb3d2b3f2230e0935b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
