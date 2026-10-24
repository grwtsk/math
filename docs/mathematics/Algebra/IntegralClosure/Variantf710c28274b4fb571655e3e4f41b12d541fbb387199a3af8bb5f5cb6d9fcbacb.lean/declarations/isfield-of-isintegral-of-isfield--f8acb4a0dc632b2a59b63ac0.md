# isField_of_isIntegral_of_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ff411db-6db6-057e-d707-1a61e986460e",
  "kind": "theorem",
  "lexical_name": "isField_of_isIntegral_of_isField",
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
  "slug": "isfield-of-isintegral-of-isfield--f8acb4a0dc632b2a59b63ac0",
  "source": {
    "blob": "5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1134,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8acb4a0dc632b2a59b63ac0e1d4d937eed6cfd37e191c2e1a87cf557d0da5f8",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff411db-6db6-057e-d707-1a61e986460e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1134–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_isIntegral_of_isField {R S : Type*} [CommRing R] [Nontrivial R] [CommRing S]
    [IsDomain S] [Algebra R S] (H : Algebra.IsIntegral R S)
    (hRS : Function.Injective (algebraMap R S)) (hS : IsField S) : IsField R := by
  refine' ⟨⟨0, 1, zero_ne_one⟩, mul_comm, fun {a} ha => _⟩
  -- Let `a_inv` be the inverse of `algebraMap R S a`,
  -- then we need to show that `a_inv` is of the form `algebraMap R S b`.
  obtain ⟨a_inv, ha_inv⟩ := hS.mul_inv_cancel
    fun h => ha (hRS (_root_.trans h (RingHom.map_zero _).symm))
  -- Let `p : R[X]` be monic with root `a_inv`,
  -- and `q` be `p` with coefficients reversed (so `q(a) = q'(a) * a + 1`).
  -- We claim that `q(a) = 0`, so `-q'(a)` is the inverse of `a`.
  obtain ⟨p, p_monic, hp⟩ := H a_inv
  use -∑ i : ℕ in Finset.range p.natDegree, p.coeff i * a ^ (p.natDegree - i - 1)
  -- `q(a) = 0`, because multiplying everything with `a_inv^n` gives `p(a_inv) = 0`.
  -- TODO: this could be a lemma for `Polynomial.reverse`.
  have hq : (∑ i : ℕ in Finset.range (p.natDegree + 1), p.coeff i * a ^ (p.natDegree - i)) = 0 := by
    apply (injective_iff_map_eq_zero (algebraMap R S)).mp hRS
    have a_inv_ne_zero : a_inv ≠ 0 := right_ne_zero_of_mul (mt ha_inv.symm.trans one_ne_zero)
    refine' (mul_eq_zero.mp _).resolve_right (pow_ne_zero p.natDegree a_inv_ne_zero)
    rw [eval₂_eq_sum_range] at hp
    rw [map_sum, Finset.sum_mul]
    refine' (Finset.sum_congr rfl fun i hi => _).trans hp
    rw [RingHom.map_mul, mul_assoc]
    congr
    have : a_inv ^ p.natDegree = a_inv ^ (p.natDegree - i) * a_inv ^ i := by
      rw [← pow_add a_inv, tsub_add_cancel_of_le (Nat.le_of_lt_succ (Finset.mem_range.mp hi))]
    rw [RingHom.map_pow, this, ← mul_assoc, ← mul_pow, ha_inv, one_pow, one_mul]
  -- Since `q(a) = 0` and `q(a) = q'(a) * a + 1`, we have `a * -q'(a) = 1`.
  -- TODO: we could use a lemma for `Polynomial.divX` here.
  rw [Finset.sum_range_succ_comm, p_monic.coeff_natDegree, one_mul, tsub_self, pow_zero,
    add_eq_zero_iff_eq_neg, eq_comm] at hq
  rw [mul_comm, neg_mul, Finset.sum_mul]
  convert hq using 2
  refine' Finset.sum_congr rfl fun i hi => _
  have : 1 ≤ p.natDegree - i := le_tsub_of_add_le_left (Finset.mem_range.mp hi)
  rw [mul_assoc, ← pow_succ', tsub_add_cancel_of_le this]
#align is_field_of_is_integral_of_is_field isField_of_isIntegral_of_isField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantf710c28274b4fb571655e3e4f41b12d541fbb387199a3af8bb5f5cb6d9fcbacb.lean#L1134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a187f8eb8be9b458ae2944e1e518c2e6cc9c1c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
