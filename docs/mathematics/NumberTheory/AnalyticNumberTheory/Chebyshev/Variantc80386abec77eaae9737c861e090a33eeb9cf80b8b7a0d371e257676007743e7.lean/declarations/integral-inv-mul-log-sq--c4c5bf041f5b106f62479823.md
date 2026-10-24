# integral_inv_mul_log_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4218fd41-fa3f-30d7-527c-72857cc458e1",
  "kind": "lemma",
  "lexical_name": "integral_inv_mul_log_sq",
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
  "slug": "integral-inv-mul-log-sq--c4c5bf041f5b106f62479823",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 638,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c5bf041f5b106f62479823d9a4f9c113744a6d951d20fc5d89be39b86fbddb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4218fd41-fa3f-30d7-527c-72857cc458e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_inv_mul_log_sq {x : ℝ} (hx : 1 ≤ x) :
    ∫ t in Set.Ioc 1 x, t⁻¹ * Real.log t ^ 2 = Real.log x ^ 3 / 3 := by
  rw [← intervalIntegral.integral_of_le hx]
  have hlogcont : ContinuousOn Real.log (Set.Icc 1 x) := fun t ht =>
    (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
  have hftc : ∀ t ∈ Set.uIcc (1 : ℝ) x,
      HasDerivAt (fun t : ℝ => Real.log t ^ 3 / 3) (t⁻¹ * Real.log t ^ 2) t := by
    intro t ht
    rw [Set.uIcc_of_le hx] at ht
    have ht0 : t ≠ 0 := by nlinarith [ht.1]
    have h := ((Real.hasDerivAt_log ht0).pow 3).div_const 3
    have heq : t⁻¹ * Real.log t ^ 2 = ((3 : ℕ) : ℝ) * Real.log t ^ (3 - 1) * t⁻¹ / 3 := by
      push_cast
      ring
    rw [heq]
    exact h
  have hint : IntervalIntegrable (fun t : ℝ => t⁻¹ * Real.log t ^ 2) volume 1 x := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le hx]
    refine ContinuousOn.mul ?_ (hlogcont.pow 2)
    exact continuousOn_inv₀.mono fun t ht => by
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      nlinarith [ht.1]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hftc hint]
  simp [Real.log_one]

/-- Integrability of t⁻¹·M on (1, x] for a monotone nonnegative M. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
