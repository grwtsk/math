# isField_of_isIntegral_of_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38133dc4-68fc-09ec-b72e-8d970ed690e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d597a270-33d4-ba6a-adc8-ee33d5e15fbc",
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
  "slug": "isfield-of-isintegral-of-isfield--12466f44246cc836d1d94afb",
  "source": {
    "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1163,
    "line": 1126,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12466f44246cc836d1d94afb39952f2950f9eb993de5f6dbd817104eb3ee960f",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d597a270-33d4-ba6a-adc8-ee33d5e15fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1126–1163.

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

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean#L1126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29df876472ed81a1a197bc618f845bfeffda252c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
