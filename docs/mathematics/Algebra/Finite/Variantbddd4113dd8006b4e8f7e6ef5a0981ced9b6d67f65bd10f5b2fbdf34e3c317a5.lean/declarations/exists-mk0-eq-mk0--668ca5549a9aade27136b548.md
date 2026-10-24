# exists_mk0_eq_mk0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55f50be-5bdf-1463-15ff-74bb2de0a932",
  "kind": "theorem",
  "lexical_name": "exists_mk0_eq_mk0",
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
  "slug": "exists-mk0-eq-mk0--668ca5549a9aade27136b548",
  "source": {
    "blob": "e0da9f25d262598f1d5195f996525f501496fc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 277,
    "path": "GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668ca5549a9aade27136b548e1f6e5eaa3b063224191e60328ae9dd77f37eb21",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55f50be-5bdf-1463-15ff-74bb2de0a932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mk0_eq_mk0 [IsDedekindDomain S] [Algebra.IsAlgebraic R S] (I : (Ideal S)⁰) :
    ∃ J : (Ideal S)⁰,
      ClassGroup.mk0 I = ClassGroup.mk0 J ∧
        algebraMap _ _ (∏ m ∈ finsetApprox bS adm, m) ∈ (J : Ideal S) := by
  set M := ∏ m ∈ finsetApprox bS adm, m
  have hM : algebraMap R S M ≠ 0 := prod_finsetApprox_ne_zero bS adm
  obtain ⟨b, b_mem, b_ne_zero, b_min⟩ := exists_min abv I
  suffices Ideal.span {b} ∣ Ideal.span {algebraMap _ _ M} * I.1 by
    obtain ⟨J, hJ⟩ := this
    refine ⟨⟨J, ?_⟩, ?_, ?_⟩
    · rw [mem_nonZeroDivisors_iff_ne_zero]
      rintro rfl
      rw [Ideal.zero_eq_bot, Ideal.mul_bot] at hJ
      exact hM (Ideal.span_singleton_eq_bot.mp (I.2 _ hJ))
    · rw [ClassGroup.mk0_eq_mk0_iff]
      exact ⟨algebraMap _ _ M, b, hM, b_ne_zero, hJ⟩
    rw [← SetLike.mem_coe, ← Set.singleton_subset_iff, ← Ideal.span_le, ← Ideal.dvd_iff_le]
    apply (mul_dvd_mul_iff_left _).mp _
    swap; · exact mt Ideal.span_singleton_eq_bot.mp b_ne_zero
    rw [Subtype.coe_mk, Ideal.dvd_iff_le, ← hJ, mul_comm]
    apply Ideal.mul_mono le_rfl
    rw [Ideal.span_le, Set.singleton_subset_iff]
    exact b_mem
  rw [Ideal.dvd_iff_le, Ideal.mul_le]
  intro r' hr' a ha
  rw [Ideal.mem_span_singleton] at hr' ⊢
  obtain ⟨q, r, r_mem, lt⟩ := exists_mem_finset_approx' bS adm a b_ne_zero
  apply @dvd_of_mul_left_dvd _ _ q
  simp only [Algebra.smul_def] at lt
  rw [←
    sub_eq_zero.mp (b_min _ (I.1.sub_mem (I.1.mul_mem_left _ ha) (I.1.mul_mem_left _ b_mem)) lt)]
  refine mul_dvd_mul_right (dvd_trans (RingHom.map_dvd _ ?_) hr') _
  exact Multiset.dvd_prod (Multiset.mem_map.mpr ⟨_, r_mem, rfl⟩)

/-- `ClassGroup.mkMMem` is a specialization of `ClassGroup.mk0` to (the finite set of)
ideals that contain `M := ∏ m ∈ finsetApprox L f abs, m`.
By showing this function is surjective, we prove that the class group is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbddd4113dd8006b4e8f7e6ef5a0981ced9b6d67f65bd10f5b2fbdf34e3c317a5.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0da9f25d262598f1d5195f996525f501496fc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
