# summable_divisorsAntidiagonal_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102625b2-db40-1ee5-a09c-a595f581b06c",
  "kind": "lemma",
  "lexical_name": "summable_divisorsAntidiagonal_aux",
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
  "slug": "summable-divisorsantidiagonal-aux--0081d6eb14ac99a8383ecd14",
  "source": {
    "blob": "38dcfb77aa2df8d81adb0acde8c598b384ce8435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0081d6eb14ac99a8383ecd1406e90e4299f5e1bc06e46e0ee43a2aa64caee3d8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102625b2-db40-1ee5-a09c-a595f581b06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_divisorsAntidiagonal_aux (k : ℕ) {r : 𝕜} (hr : ‖r‖ < 1) :
    Summable fun c : (n : ℕ+) × {x // x ∈ (n : ℕ).divisorsAntidiagonal} ↦
    (c.2.1.2) ^ k * (r ^ (c.2.1.1 * c.2.1.2)) := by
  apply Summable.of_norm
  rw [summable_sigma_of_nonneg (fun a ↦ by positivity)]
  constructor
  · exact fun n ↦ (hasSum_fintype _).summable
  · simp only [norm_mul, norm_pow, tsum_fintype, Finset.univ_eq_attach]
    apply Summable.of_nonneg_of_le (f := fun c : ℕ+ ↦ ‖(c : 𝕜) ^ (k + 1) * r ^ (c : ℕ)‖)
      (fun b ↦ Finset.sum_nonneg (fun _ _ ↦ mul_nonneg (by simp) (by simp))) (fun b ↦ ?_)
      (by apply (summable_norm_pow_mul_geometric_of_norm_lt_one (k + 1) hr).subtype)
    transitivity ∑ _ ∈ (b : ℕ).divisors, ‖(b : 𝕜)‖ ^ k * ‖r ^ (b : ℕ)‖
    · rw [(b : ℕ).divisorsAntidiagonal.sum_attach (fun x ↦ ‖(x.2 : 𝕜)‖ ^ _ * _ ^ (x.1 * x.2)),
          sum_divisorsAntidiagonal ((fun x y ↦ ‖(y : 𝕜)‖ ^ k * _ ^ (x * y)))]
      gcongr with i hi
      · simpa using! le_of_dvd b.2 (div_dvd_of_dvd (dvd_of_mem_divisors hi))
      · rw [norm_pow, mul_comm, Nat.div_mul_cancel (dvd_of_mem_divisors hi)]
    · simp only [norm_pow, Finset.sum_const, nsmul_eq_mul, ← mul_assoc, add_comm k 1, pow_add,
        pow_one, norm_mul]
      gcongr
      simpa using! Nat.card_divisors_le_self b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TsumDivisorsAntidiagonal/Variantec6d1e8a79d10a4ef038ea06b69c297596e00a28d391e66b40e219ded807f17a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38dcfb77aa2df8d81adb0acde8c598b384ce8435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
