# growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ab5fe5-ea5d-c231-d80c-60bdcfae23e0",
  "kind": "lemma",
  "lexical_name": "growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn",
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
  "slug": "growspolynomially-deriv-rpow-p-mul-one-add-smoothingfn--5e1ef7bc4e315f53776382b5",
  "source": {
    "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 948,
    "line": 924,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e1ef7bc4e315f53776382b5a6fcf6b9c7aa831c90179a4720dd250756d508ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ab5fe5-ea5d-c231-d80c-60bdcfae23e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–948.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn (p : ℝ) :
    GrowsPolynomially fun x => ‖deriv (fun z => z ^ p * (1 + ε z)) x‖ := by
  cases eq_or_ne p 0 with
  | inl hp => -- p = 0
    have h₁ : (fun x => ‖deriv (fun z => z ^ p * (1 + ε z)) x‖)
        =ᶠ[atTop] fun z => z⁻¹ / (log z ^ 2) := by
      filter_upwards [eventually_deriv_one_add_smoothingFn, eventually_gt_atTop 1] with x hx hx_pos
      have : 0 ≤ x⁻¹ / (log x ^ 2) := by
        have hlog : 0 < log x := Real.log_pos hx_pos
        positivity
      simp only [neg_div, norm_neg, hp, Real.rpow_zero,
        one_mul, differentiableAt_const, hx, Real.norm_of_nonneg this]
    refine GrowsPolynomially.congr_of_eventuallyEq h₁ ?_
    refine GrowsPolynomially.div (GrowsPolynomially.inv growsPolynomially_id)
      (GrowsPolynomially.pow 2 growsPolynomially_log ?_)
    filter_upwards [eventually_ge_atTop 1] with x hx
    exact log_nonneg hx
  | inr hp => -- p ≠ 0
    refine GrowsPolynomially.of_isTheta (growsPolynomially_rpow (p-1))
      (isTheta_deriv_rpow_p_mul_one_add_smoothingFn hp) ?_
    filter_upwards [eventually_gt_atTop 0] with _ _
    positivity

include R

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
