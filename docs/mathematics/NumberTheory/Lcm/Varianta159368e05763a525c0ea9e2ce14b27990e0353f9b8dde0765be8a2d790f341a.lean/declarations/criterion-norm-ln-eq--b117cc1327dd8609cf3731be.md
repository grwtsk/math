# Criterion.σnorm_ln_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:703a5874-c899-6c28-9416-231c4b9dfb49",
  "kind": "theorem",
  "lexical_name": "Criterion.σnorm_ln_eq",
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
  "slug": "criterion-norm-ln-eq--b117cc1327dd8609cf3731be",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 387,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b117cc1327dd8609cf3731be3a25fec923ad7fd1b73c0c4e55edb92858ca2a04",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:703a5874-c899-6c28-9416-231c4b9dfb49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.σnorm_ln_eq (c : Criterion) :
    σnorm (L c.n) = σnorm c.L' * ∏ i, (1 + (1 : ℝ) / c.q i) := by
  have hcop : ∀ i j, i ≠ j → (c.q i).Coprime (c.q j) := fun i j h ↦
    (coprime_primes (c.hq i) (c.hq j)).mpr (c.hq_mono.injective.ne h)
  have hcopL' : ∀ i, (c.q i).Coprime c.L' := fun i ↦
    (c.hq i).coprime_iff_not_dvd.mpr (c.q_not_dvd_L' i)
  have hσ_prime : ∀ i, sigma 1 (c.q i) = 1 + c.q i := fun i ↦ by
    rw [← pow_one (c.q i), sigma_one_apply_prime_pow (c.hq i)]
    simp [reduceAdd, geom_sum_two, pow_one, add_comm]
  simp only [σnorm, σ, c.L_eq_prod_q_mul_L', Fin.prod_univ_three]
  rw [show c.q 0 * c.q 1 * c.q 2 * c.L' = (c.q 0 * c.q 1 * c.q 2) * c.L' by ring,
      isMultiplicative_sigma.map_mul_of_coprime (coprime_mul_iff_left.mpr
        ⟨coprime_mul_iff_left.mpr ⟨hcopL' 0, hcopL' 1⟩, hcopL' 2⟩),
      show c.q 0 * c.q 1 * c.q 2 = c.q 0 * (c.q 1 * c.q 2) by ring,
      isMultiplicative_sigma.map_mul_of_coprime (coprime_mul_iff_right.mpr
        ⟨hcop 0 1 Fin.zero_ne_one, hcop 0 2 <| not_eq_of_beq_eq_false rfl⟩),
      isMultiplicative_sigma.map_mul_of_coprime (hcop 1 2 <| not_eq_of_beq_eq_false rfl),
      hσ_prime, hσ_prime, hσ_prime]
  have hq_ne : ∀ i, (c.q i : ℝ) ≠ 0 := fun i ↦ (cast_pos.mpr (c.hq i).pos).ne'
  field_simp [hq_ne, (cast_pos.mpr c.L'_pos).ne']
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
