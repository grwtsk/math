# P_eq_integral_exp_mul_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc87d6a7-a126-4c01-8b7d-9da9d8524753",
  "kind": "theorem",
  "lexical_name": "P_eq_integral_exp_mul_eval",
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
  "slug": "p-eq-integral-exp-mul-eval--a888187c4dd708d9007f5341",
  "source": {
    "blob": "9b11f9b099cbf989f55b4cc46a74e50a51e4238f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a888187c4dd708d9007f5341695763475b79dbee2f1c470a0438162c8968b029",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc87d6a7-a126-4c01-8b7d-9da9d8524753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem P_eq_integral_exp_mul_eval (f : ℂ[X]) (s : ℂ) :
    P f s = exp s * (s * ∫ x in (0)..1, exp (-(x • s)) * f.eval (x • s)) := by
  rw [integral_exp_mul_eval, mul_add, mul_neg, exp_neg, mul_inv_cancel_left₀ (exp_ne_zero s),
    neg_add_eq_sub, P]

/--
Given a sequence of complex polynomials `fₚ`, a complex constant `s`, and a real constant `c` such
that `|fₚ(xs)| ≤ c ^ p` for all `p ∈ ℕ` and `x ∈ Ioc 0 1`, then there is also a nonnegative
constant `c'` such that for all nonzero `p ∈ ℕ`, `|P(fₚ, s)| ≤ c' ^ p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b11f9b099cbf989f55b4cc46a74e50a51e4238f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
