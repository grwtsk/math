# sum_moebius_sq_divisors_apply_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:726f67fe-f12e-2aea-d394-5fedbf8a0564",
  "kind": "lemma",
  "lexical_name": "sum_moebius_sq_divisors_apply_prime_pow",
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
  "slug": "sum-moebius-sq-divisors-apply-prime-pow--72798a9c6058bea9de03c310",
  "source": {
    "blob": "f10936542ce26f4e3d13f8c80e4a797c94ed7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 905,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72798a9c6058bea9de03c310f14821cef69ccbd09360724d6bafb9b1ffb8bbf7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726f67fe-f12e-2aea-d394-5fedbf8a0564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 905–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_moebius_sq_divisors_apply_prime_pow {p k : ℕ} (hp : Nat.Prime p) :
  sum_moebius_sq_divisors (p ^ k) = (μ (p ^ k)) ^ 2 := by
  have h_filter : ((Nat.divisors (p ^ k)).filter (fun x => x ^ 2 ∣ p ^ k)) = Finset.image (fun j => p ^ j) (Finset.range (k / 2 + 1)) := by
    ext; simp only [Nat.divisors_prime_pow hp, mem_filter, mem_map, mem_range, Order.lt_add_one_iff, Function.Embedding.coeFn_mk, mem_image]
    constructor
    · rintro ⟨⟨a, ha, rfl⟩, h⟩
      exact ⟨a, Nat.le_div_iff_mul_le zero_lt_two |>.2 <| by
        rw [← pow_mul] at h
        exact Nat.le_of_not_lt fun ha' => absurd (Nat.le_of_dvd (pow_pos hp.pos _) h)
          (not_le_of_gt (pow_lt_pow_right₀ hp.one_lt ha')), rfl⟩
    · rintro ⟨a, ha, rfl⟩
      exact ⟨⟨a, by omega, rfl⟩, by rw [← pow_mul]; exact pow_dvd_pow _ (by omega)⟩
  simp only [moebius_sq, sum_moebius_sq_divisors_apply, h_filter]
  rw [Finset.sum_image <| by intros a ha b hb hab; exact Nat.pow_right_injective hp.two_le hab, Finset.sum_range_succ']
  split_ifs with h
  · have hk : k / 2 = 0 := by
      rw [Nat.div_eq_zero_iff, or_iff_right (two_ne_zero)]
      by_contra hk
      exact absurd h (by rw [Nat.squarefree_pow_iff hp.ne_one (by omega)]; exact not_and_of_not_right _ (by linarith))
    simp [hk]
  · simp only [pow_zero, isUnit_iff_eq_one, IsUnit.squarefree, moebius_apply_of_squarefree, Int.reduceNeg, cardFactors_one]
    rcases k with _ | _ | _
    · simp at ⊢ h
    · simp [hp.squarefree] at ⊢ h
    · simp_all +decide [ArithmeticFunction.moebius_apply_prime_pow]

/-- I-K (1.33): `μ^2(n) = ∑ d^2|n μ(d)`. -/
@[blueprint
  "moebius_sq_eq"
  (title := "moebius-sq-eq")
  (statement := /-- I-K (1.33): $\mu^2(n) = \sum_{d^2|n} \mu(d)$. -/)
  (proof := /-- Apply the previous two lemmas. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean#L905).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10936542ce26f4e3d13f8c80e4a797c94ed7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
