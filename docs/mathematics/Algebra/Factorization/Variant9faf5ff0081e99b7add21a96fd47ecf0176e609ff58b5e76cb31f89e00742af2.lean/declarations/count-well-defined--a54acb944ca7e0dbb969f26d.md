# count_well_defined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ebc8fb6-c6ab-702d-0a96-ff14c042bed2",
  "kind": "theorem",
  "lexical_name": "count_well_defined",
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
  "slug": "count-well-defined--a54acb944ca7e0dbb969f26d",
  "source": {
    "blob": "a3a9ee5a542777bca0bb506eaab017f304d0e6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 304,
    "path": "GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54acb944ca7e0dbb969f26d1f87d901efb7ee6db538c676e7efac947ca7cf35",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebc8fb6-c6ab-702d-0a96-ff14c042bed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_well_defined {I : FractionalIdeal R⁰ K} (hI : I ≠ 0) {a : R}
    {J : Ideal R} (h_aJ : I = spanSingleton R⁰ ((algebraMap R K) a)⁻¹ * ↑J) :
    count K v I = ((Associates.mk v.asIdeal).count (Associates.mk J).factors -
      (Associates.mk v.asIdeal).count (Associates.mk (Ideal.span {a})).factors : ℤ) := by
  set a₁ := choose (exists_eq_spanSingleton_mul I)
  set J₁ := choose (choose_spec (exists_eq_spanSingleton_mul I))
  have h_a₁J₁ : I = spanSingleton R⁰ ((algebraMap R K) a₁)⁻¹ * ↑J₁ :=
    (choose_spec (choose_spec (exists_eq_spanSingleton_mul I))).2
  have h_a₁_ne_zero : a₁ ≠ 0 := (choose_spec (choose_spec (exists_eq_spanSingleton_mul I))).1
  have h_J₁_ne_zero : J₁ ≠ 0 := ideal_factor_ne_zero hI h_a₁J₁
  have h_a_ne_zero : Ideal.span {a} ≠ 0 := constant_factor_ne_zero hI h_aJ
  have h_J_ne_zero : J ≠ 0 := ideal_factor_ne_zero hI h_aJ
  have h_a₁' : spanSingleton R⁰ ((algebraMap R K) a₁) ≠ 0 := by
    rw [ne_eq, spanSingleton_eq_zero_iff, ← (algebraMap R K).map_zero,
      Injective.eq_iff (IsLocalization.injective K (le_refl R⁰))]
    exact h_a₁_ne_zero
  have h_a' : spanSingleton R⁰ ((algebraMap R K) a) ≠ 0 := by
    rw [ne_eq, spanSingleton_eq_zero_iff, ← (algebraMap R K).map_zero,
      Injective.eq_iff (IsLocalization.injective K (le_refl R⁰))]
    rw [ne_eq, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot] at h_a_ne_zero
    exact h_a_ne_zero
  have hv : Irreducible (Associates.mk v.asIdeal) := by
    exact Associates.irreducible_mk.mpr v.irreducible
  rw [h_a₁J₁, ← div_spanSingleton, ← div_spanSingleton, div_eq_div_iff h_a₁' h_a',
    ← coeIdeal_span_singleton, ← coeIdeal_span_singleton, ← coeIdeal_mul, ← coeIdeal_mul] at h_aJ
  rw [count, dif_neg hI, sub_eq_sub_iff_add_eq_add, ← natCast_add, ← natCast_add, natCast_inj,
    ← Associates.count_mul _ _ hv, ← Associates.count_mul _ _ hv, Associates.mk_mul_mk,
    Associates.mk_mul_mk, coeIdeal_injective h_aJ]
  · rw [ne_eq, Associates.mk_eq_zero]; exact h_J_ne_zero
  · rw [ne_eq, Associates.mk_eq_zero, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
    exact h_a₁_ne_zero
  · rw [ne_eq, Associates.mk_eq_zero]; exact h_J₁_ne_zero
  · rw [ne_eq, Associates.mk_eq_zero]; exact h_a_ne_zero

/-- For nonzero `I, I'`, `val_v(I*I') = val_v(I) + val_v(I')`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a9ee5a542777bca0bb506eaab017f304d0e6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
