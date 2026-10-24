# isIntegral_isLocalization_polynomial_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96ad7385-03e3-257f-d6b6-00fe24232a96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:deb56296-cfc6-1200-95c4-2833c63e6520",
  "kind": "theorem",
  "lexical_name": "isIntegral_isLocalization_polynomial_quotient",
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
  "slug": "isintegral-islocalization-polynomial-quotient--063b24498dedfd01a4ae6cfc",
  "source": {
    "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 311,
    "path": "GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063b24498dedfd01a4ae6cfcada21ed11fb1637061524e3f28dfea55ef3a6c93",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb56296-cfc6-1200-95c4-2833c63e6520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_isLocalization_polynomial_quotient
    (P : Ideal R[X]) (pX : R[X]) (hpX : pX ∈ P) [Algebra (R ⧸ P.comap (C : R →+* R[X])) Rₘ]
    [IsLocalization.Away (pX.map (Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff Rₘ]
    [Algebra (R[X] ⧸ P) Sₘ] [IsLocalization ((Submonoid.powers (pX.map (Quotient.mk (P.comap
      (C : R →+* R[X])))).leadingCoeff).map (quotientMap P C le_rfl) : Submonoid (R[X] ⧸ P)) Sₘ] :
    (IsLocalization.map Sₘ (quotientMap P C le_rfl) (Submonoid.powers (pX.map (Quotient.mk (P.comap
      (C : R →+* R[X])))).leadingCoeff).le_comap_map : Rₘ →+* Sₘ).IsIntegral := by
  let P' : Ideal R := P.comap C
  let M : Submonoid (R ⧸ P') :=
    Submonoid.powers (pX.map (Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff
  let M' : Submonoid (R[X] ⧸ P) :=
    (Submonoid.powers (pX.map (Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff).map
      (quotientMap P C le_rfl)
  let φ : R ⧸ P' →+* R[X] ⧸ P := quotientMap P C le_rfl
  let φ' : Rₘ →+* Sₘ := IsLocalization.map Sₘ φ M.le_comap_map
  have hφ' : φ.comp (Quotient.mk P') = (Quotient.mk P).comp C := rfl
  intro p
  obtain ⟨⟨p', ⟨q, hq⟩⟩, hp⟩ := IsLocalization.surj M' p
  suffices φ'.IsIntegralElem (algebraMap (R[X] ⧸ P) Sₘ p') by
    obtain ⟨q', hq', rfl⟩ := hq
    obtain ⟨q'', hq''⟩ := isUnit_iff_exists_inv'.1 (IsLocalization.map_units Rₘ (⟨q', hq'⟩ : M))
    refine' φ'.isIntegral_of_isIntegral_mul_unit p (algebraMap (R[X] ⧸ P) Sₘ (φ q'))
      q'' _ (hp.symm ▸ this)
    rw [← φ'.map_one, ← congr_arg φ' hq'', φ'.map_mul, ← φ'.comp_apply]
    simp only [IsLocalization.map_comp _]
    rw [RingHom.comp_apply]
  dsimp at hp
  refine' @isIntegral_of_mem_closure'' Rₘ _ Sₘ _ φ'
    ((algebraMap (R[X] ⧸ P) Sₘ).comp (Quotient.mk P) '' insert X { p | p.degree ≤ 0 }) _
    ((algebraMap (R[X] ⧸ P) Sₘ) p') _
  · rintro x ⟨p, hp, rfl⟩
    simp only [Set.mem_insert_iff] at hp
    cases' hp with hy hy
    · rw [hy]
      refine' φ.isIntegralElem_localization_at_leadingCoeff ((Quotient.mk P) X)
        (pX.map (Quotient.mk P')) _ M _
      · rwa [eval₂_map, hφ', ← hom_eval₂, Quotient.eq_zero_iff_mem, eval₂_C_X]
      · use 1
        simp only [pow_one]
    · rw [Set.mem_setOf_eq, degree_le_zero_iff] at hy
      -- Porting note: was `refine' hy.symm ▸`
      -- `⟨X - C (algebraMap _ _ ((Quotient.mk P') (p.coeff 0))), monic_X_sub_C _, _⟩`
      rw [hy]
      use X - C (algebraMap (R ⧸ P') Rₘ ((Quotient.mk P') (p.coeff 0)))
      constructor
      · apply monic_X_sub_C
      · simp only [eval₂_sub, eval₂_X, eval₂_C]
        rw [sub_eq_zero, ← φ'.comp_apply]
        simp only [IsLocalization.map_comp _]
        rfl
  · obtain ⟨p, rfl⟩ := Quotient.mk_surjective p'
    rw [← RingHom.comp_apply]
    apply Subring.mem_closure_image_of
    apply Polynomial.mem_closure_X_union_C
#align ideal.polynomial.is_integral_is_localization_polynomial_quotient Ideal.Polynomial.isIntegral_isLocalization_polynomial_quotient

/-- If `f : R → S` descends to an integral map in the localization at `x`,
  and `R` is a Jacobson ring, then the intersection of all maximal ideals in `S` is trivial -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efe5286cceb347fd2e22fdfdc22b70211a69a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
