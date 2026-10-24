# dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbc502bd3519daec2cbe79849ec282023b4ae4f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68985a5b-8687-73ec-8e2f-92bdfca4ccb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f36b2de-12d4-29ba-ee80-a880acd15a50",
  "kind": "theorem",
  "lexical_name": "dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt",
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
  "slug": "dvd-coeff-zero-of-aeval-eq-prime-smul-of-minpoly-iseisensteinat--674a4156dddbb4f68b561c3a",
  "source": {
    "blob": "bbc502bd3519daec2cbe79849ec282023b4ae4f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:674a4156dddbb4f68b561c3ab18ccd394b0243a6755861f1b891f9108306872e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f36b2de-12d4-29ba-ee80-a880acd15a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt {B : PowerBasis K L}
    (hp : Prime p) (hBint : IsIntegral R B.gen) {z : L} {Q : R[X]} (hQ : aeval B.gen Q = p • z)
    (hzint : IsIntegral R z) (hei : (minpoly R B.gen).IsEisensteinAt 𝓟) : p ∣ Q.coeff 0 := by
  -- First define some abbreviations.
  letI := B.finiteDimensional
  let P := minpoly R B.gen
  obtain ⟨n, hn⟩ := Nat.exists_eq_succ_of_ne_zero B.dim_pos.ne'
  have finrank_K_L : FiniteDimensional.finrank K L = B.dim := B.finrank
  have deg_K_P : (minpoly K B.gen).natDegree = B.dim := B.natDegree_minpoly
  have deg_R_P : P.natDegree = B.dim := by
    rw [← deg_K_P, minpoly.isIntegrallyClosed_eq_field_fractions' K hBint,
      (minpoly.monic hBint).natDegree_map (algebraMap R K)]
  choose! f hf using
    hei.isWeaklyEisensteinAt.exists_mem_adjoin_mul_eq_pow_natDegree_le (minpoly.aeval R B.gen)
      (minpoly.monic hBint)
  simp only [(minpoly.monic hBint).natDegree_map, deg_R_P] at hf

  -- The Eisenstein condition shows that `p` divides `Q.coeff 0`
  -- if `p^n.succ` divides the following multiple of `Q.coeff 0^n.succ`:
  suffices
      p ^ n.succ ∣ Q.coeff 0 ^ n.succ * ((-1) ^ (n.succ * n) * (minpoly R B.gen).coeff 0 ^ n) by
    have hndiv : ¬p ^ 2 ∣ (minpoly R B.gen).coeff 0 := fun h =>
      hei.not_mem ((span_singleton_pow p 2).symm ▸ Ideal.mem_span_singleton.2 h)
    refine @Prime.dvd_of_pow_dvd_pow_mul_pow_of_square_not_dvd R _ _ _ _ n hp (?_ : _ ∣ _) hndiv
    convert (IsUnit.dvd_mul_right ⟨(-1) ^ (n.succ * n), rfl⟩).mpr this using 1
    push_cast
    ring_nf
    rw [mul_comm _ 2, pow_mul, neg_one_sq, one_pow, mul_one]

  -- We claim the quotient of `Q^n * _` by `p^n` is the following `r`:
  have aux : ∀ i ∈ (range (Q.natDegree + 1)).erase 0, B.dim ≤ i + n := by
    intro i hi
    simp only [mem_range, mem_erase] at hi
    rw [hn]
    exact le_add_pred_of_pos _ hi.1
  have hintsum :
    IsIntegral R
      (z * B.gen ^ n - ∑ x : ℕ in (range (Q.natDegree + 1)).erase 0, Q.coeff x • f (x + n)) := by
    refine
      isIntegral_sub (isIntegral_mul hzint (IsIntegral.pow hBint _))
        (IsIntegral.sum _ fun i hi => isIntegral_smul _ ?_)
    exact adjoin_le_integralClosure hBint (hf _ (aux i hi)).1
  obtain ⟨r, hr⟩ := isIntegral_iff.1 (isIntegral_norm K hintsum)
  use r

  -- Do the computation in `K` so we can work in terms of `z` instead of `r`.
  apply IsFractionRing.injective R K
  simp only [_root_.map_mul, _root_.map_pow, _root_.map_neg, _root_.map_one]
  -- Both sides are actually norms:
  calc
    _ = norm K (Q.coeff 0 • B.gen ^ n) := ?_
    _ = norm K (p • (z * B.gen ^ n) -
          ∑ x : ℕ in (range (Q.natDegree + 1)).erase 0, p • Q.coeff x • f (x + n)) :=
        (congr_arg (norm K) (eq_sub_of_add_eq ?_))
    _ = _ := ?_
  · simp only [Algebra.smul_def, algebraMap_apply R K L, Algebra.norm_algebraMap, _root_.map_mul,
      _root_.map_pow, finrank_K_L, PowerBasis.norm_gen_eq_coeff_zero_minpoly,
      minpoly.isIntegrallyClosed_eq_field_fractions' K hBint, coeff_map, ← hn]
    ring
  swap
  · simp_rw [← smul_sum, ← smul_sub, Algebra.smul_def p, algebraMap_apply R K L, _root_.map_mul,
      Algebra.norm_algebraMap, finrank_K_L, hr, ← hn]
  calc
    _ = (Q.coeff 0 • ↑1 + ∑ x : ℕ in (range (Q.natDegree + 1)).erase 0, Q.coeff x • B.gen ^ x) *
          B.gen ^ n := ?_
    _ = (Q.coeff 0 • B.gen ^ 0 +
        ∑ x : ℕ in (range (Q.natDegree + 1)).erase 0, Q.coeff x • B.gen ^ x) * B.gen ^ n :=
      by rw [_root_.pow_zero]
    _ = aeval B.gen Q * B.gen ^ n := ?_
    _ = _ := by rw [hQ, Algebra.smul_mul_assoc]
  · have : ∀ i ∈ (range (Q.natDegree + 1)).erase 0,
        Q.coeff i • (B.gen ^ i * B.gen ^ n) = p • Q.coeff i • f (i + n) := by
      intro i hi
      rw [← pow_add, ← (hf _ (aux i hi)).2, ← Algebra.smul_def, smul_smul, mul_comm _ p, smul_smul]
    simp only [add_mul, smul_mul_assoc, one_mul, sum_mul, sum_congr rfl this]
  · rw [aeval_eq_sum_range,
      Finset.add_sum_erase (range (Q.natDegree + 1)) fun i => Q.coeff i • B.gen ^ i]
    simp
#align dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_is_eiseinstein_at dvd_coeff_zero_of_aeval_eq_prime_smul_of_minpoly_isEisensteinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant28cd95e63834b7ad972f86512e64f913320cf7abd57a3d82dc6c7241c278aaeb.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc502bd3519daec2cbe79849ec282023b4ae4f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
