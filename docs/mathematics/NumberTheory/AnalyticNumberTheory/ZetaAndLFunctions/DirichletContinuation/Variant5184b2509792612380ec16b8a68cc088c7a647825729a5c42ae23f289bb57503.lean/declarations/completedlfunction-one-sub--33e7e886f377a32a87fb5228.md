# completedLFunction_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bd0a2f9-4588-9572-42e9-a73ba7a231ce",
  "kind": "theorem",
  "lexical_name": "completedLFunction_one_sub",
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
  "slug": "completedlfunction-one-sub--33e7e886f377a32a87fb5228",
  "source": {
    "blob": "fa988fadb21e31fc33d9b06a1f1d2711f31a4cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 292,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e7e886f377a32a87fb52288204ad1c85dc66a9006c317498d4cc037afbac71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bd0a2f9-4588-9572-42e9-a73ba7a231ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedLFunction_one_sub {χ : DirichletCharacter ℂ N} (hχ : IsPrimitive χ) (s : ℂ) :
    completedLFunction χ (1 - s) = N ^ (s - 1 / 2) * rootNumber χ * completedLFunction χ⁻¹ s := by
  classical
  -- First handle special case of Riemann zeta
  rcases eq_or_ne N 1 with rfl | hN
  · simp [completedLFunction_modOne_eq, completedRiemannZeta_one_sub, rootNumber_modOne]
  -- facts about `χ` as function
  have h_sum : ∑ j, χ j = 0 := by
    refine χ.sum_eq_zero_of_ne_one (fun h ↦ hN.symm ?_)
    rwa [IsPrimitive, h, conductor_one] at hχ
  let ε := I ^ (if χ.Even then 0 else 1)
  -- gather up powers of N
  rw [rootNumber, ← mul_comm_div, ← mul_comm_div, ← cpow_sub _ _ (NeZero.ne _), sub_sub, add_halves]
  calc completedLFunction χ (1 - s)
  _ = N ^ (s - 1) * χ (-1) / ε * ZMod.completedLFunction (𝓕 χ) s := by
    simp only [ε]
    split_ifs with h
    · rw [pow_zero, div_one, h, mul_one, completedLFunction,
        completedLFunction_one_sub_even h.to_fun _ (.inr h_sum) (.inr <| χ.map_zero' hN)]
    · replace h : χ.Odd := χ.even_or_odd.resolve_left h
      rw [completedLFunction, completedLFunction_one_sub_odd h.to_fun,
        pow_one, h, div_I, mul_neg_one, ← neg_mul, neg_neg]
  _ = (_) * ZMod.completedLFunction (fun j ↦ χ⁻¹ (-1) * gaussSum χ stdAddChar * χ⁻¹ j) s := by
    congr 2 with j
    rw [hχ.fourierTransform_eq_inv_mul_gaussSum, ← neg_one_mul j, map_mul, mul_right_comm]
  _ = N ^ (s - 1) / ε * gaussSum χ stdAddChar * completedLFunction χ⁻¹ s * (χ (-1) * χ⁻¹ (-1)) := by
    rw [completedLFunction, completedLFunction_const_mul]
    ring
  _ = N ^ (s - 1) / ε * gaussSum χ stdAddChar * completedLFunction χ⁻¹ s := by
    rw [← MulChar.mul_apply, mul_inv_cancel, MulChar.one_apply (isUnit_one.neg), mul_one]

end IsPrimitive

end DirichletCharacter

/-!
### The logarithmic derivative of the L-function of a Dirichlet character

We show that `s ↦ -(L' χ s) / L χ s + 1 / (s - 1)` is continuous outside the zeros of `L χ`
when `χ` is a trivial Dirichlet character and that `-L' χ / L χ` is continuous outside
the zeros of `L χ` when `χ` is nontrivial.
-/

namespace DirichletCharacter

open Complex

section trivial

variable (n : ℕ) [NeZero n]

/-- The function obtained by "multiplying away" the pole of `L χ` for a trivial Dirichlet
character `χ`. Its (negative) logarithmic derivative is used to prove Dirichlet's Theorem
on primes in arithmetic progression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant5184b2509792612380ec16b8a68cc088c7a647825729a5c42ae23f289bb57503.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa988fadb21e31fc33d9b06a1f1d2711f31a4cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
