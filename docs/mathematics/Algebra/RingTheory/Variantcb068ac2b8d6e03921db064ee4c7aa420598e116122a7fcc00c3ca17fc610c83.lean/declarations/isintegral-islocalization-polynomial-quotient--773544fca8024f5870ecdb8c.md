# isIntegral_isLocalization_polynomial_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c0d80af-56dc-75af-1abc-e9377db6117b",
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
  "slug": "isintegral-islocalization-polynomial-quotient--773544fca8024f5870ecdb8c",
  "source": {
    "blob": "7fb35473abe6e0a02c75127a03e061e8940348e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 280,
    "path": "GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:773544fca8024f5870ecdb8c596fc357a3bcea6ec0c18bcf82d6dd1aa998429f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c0d80af-56dc-75af-1abc-e9377db6117b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_isLocalization_polynomial_quotient
    (P : Ideal R[X]) (pX : R[X]) (hpX : pX ∈ P) [Algebra (R ⧸ P.comap (C : R →+* R[X])) Rₘ]
    [IsLocalization.Away (pX.map (Ideal.Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff Rₘ]
    [Algebra (R[X] ⧸ P) Sₘ] [IsLocalization ((Submonoid.powers (pX.map (Ideal.Quotient.mk (P.comap
      (C : R →+* R[X])))).leadingCoeff).map (quotientMap P C le_rfl) : Submonoid (R[X] ⧸ P)) Sₘ] :
    (IsLocalization.map Sₘ (quotientMap P C le_rfl) (Submonoid.powers (pX.map (Ideal.Quotient.mk
      (P.comap (C : R →+* R[X])))).leadingCoeff).le_comap_map : Rₘ →+* Sₘ).IsIntegral := by
  let P' : Ideal R := P.comap C
  let M : Submonoid (R ⧸ P') :=
    Submonoid.powers (pX.map (Ideal.Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff
  let M' : Submonoid (R[X] ⧸ P) :=
    (Submonoid.powers (pX.map (Ideal.Quotient.mk (P.comap (C : R →+* R[X])))).leadingCoeff).map
      (quotientMap P C le_rfl)
  let φ : R ⧸ P' →+* R[X] ⧸ P := quotientMap P C le_rfl
  let φ' : Rₘ →+* Sₘ := IsLocalization.map Sₘ φ M.le_comap_map
  have hφ' : φ.comp (Ideal.Quotient.mk P') = (Ideal.Quotient.mk P).comp C := rfl
  intro p
  obtain ⟨⟨p', ⟨q, hq⟩⟩, hp⟩ := IsLocalization.surj M' p
  suffices φ'.IsIntegralElem (algebraMap (R[X] ⧸ P) Sₘ p') by
    obtain ⟨q', hq', rfl⟩ := hq
    obtain ⟨q'', hq''⟩ := isUnit_iff_exists_inv'.1 (IsLocalization.map_units Rₘ (⟨q', hq'⟩ : M))
    refine (hp.symm ▸ this).of_mul_unit φ' p (algebraMap (R[X] ⧸ P) Sₘ (φ q')) q'' ?_
    rw [← φ'.map_one, ← congr_arg φ' hq'', φ'.map_mul, ← φ'.comp_apply]
    simp only [φ', IsLocalization.map_comp _, RingHom.comp_apply]
  dsimp at hp
  refine @IsIntegral.of_mem_closure'' Rₘ _ Sₘ _ φ'
    ((algebraMap (R[X] ⧸ P) Sₘ).comp (Ideal.Quotient.mk P) '' insert X { p | p.degree ≤ 0 }) ?_
    ((algebraMap (R[X] ⧸ P) Sₘ) p') ?_
  · rintro x ⟨p, hp, rfl⟩
    push _ ∈ _ at hp
    rcases hp with hy | hy
    · rw [hy]
      refine φ.isIntegralElem_localization_at_leadingCoeff ((Ideal.Quotient.mk P) X)
        (pX.map (Ideal.Quotient.mk P')) ?_ M ?_
      · rwa [eval₂_map, hφ', ← hom_eval₂, Quotient.eq_zero_iff_mem, eval₂_C_X]
      · use 1
        simp only [P', pow_one]
    · rw [degree_le_zero_iff] at hy
      rw [hy]
      refine ⟨X - C (algebraMap _ _ ((Ideal.Quotient.mk P') (p.coeff 0))), monic_X_sub_C _, ?_⟩
      simp only [eval₂_sub, eval₂_X, eval₂_C]
      rw [sub_eq_zero, ← φ'.comp_apply]
      simp [φ', IsLocalization.map_comp _, P', φ]
  · obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective p'
    rw [← RingHom.comp_apply]
    apply Subring.mem_closure_image_of
    apply Polynomial.mem_closure_X_union_C

/-- If `f : R → S` descends to an integral map in the localization at `x`,
  and `R` is a Jacobson ring, then the intersection of all maximal ideals in `S` is trivial -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb35473abe6e0a02c75127a03e061e8940348e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
