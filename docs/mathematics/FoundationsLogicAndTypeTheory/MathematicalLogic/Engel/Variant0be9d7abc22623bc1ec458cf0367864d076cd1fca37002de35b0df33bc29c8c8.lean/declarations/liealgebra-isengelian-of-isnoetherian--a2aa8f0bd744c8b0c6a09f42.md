# LieAlgebra.isEngelian_of_isNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c058bf-9abb-4e69-50be-a7175395e00f",
  "kind": "theorem",
  "lexical_name": "LieAlgebra.isEngelian_of_isNoetherian",
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
  "slug": "liealgebra-isengelian-of-isnoetherian--a2aa8f0bd744c8b0c6a09f42",
  "source": {
    "blob": "95f682c941e212184e88fe146452b23142aafbe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2aa8f0bd744c8b0c6a09f42b8d680a32468e4186315bbfbf12095ef2f27d3b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c058bf-9abb-4e69-50be-a7175395e00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieAlgebra.isEngelian_of_isNoetherian : LieAlgebra.IsEngelian R L := by
  intro M _i1 _i2 _i3 _i4 h
  rw [← isNilpotent_range_toEndomorphism_iff]
  let L' := (toEndomorphism R L M).range
  replace h : ∀ y : L', _root_.IsNilpotent (y : Module.End R M)
  · rintro ⟨-, ⟨y, rfl⟩⟩
    simp [h]
  change LieModule.IsNilpotent R L' M
  let s := {K : LieSubalgebra R L' | LieAlgebra.IsEngelian R K}
  have hs : s.Nonempty := ⟨⊥, LieAlgebra.isEngelian_of_subsingleton⟩
  suffices ⊤ ∈ s by
    rw [← isNilpotent_of_top_iff]
    apply this M
    simp [LieSubalgebra.toEndomorphism_eq, h]
  have : ∀ K ∈ s, K ≠ ⊤ → ∃ K' ∈ s, K < K' := by
    rintro K (hK₁ : LieAlgebra.IsEngelian R K) hK₂
    apply LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer hK₁
    apply lt_of_le_of_ne K.le_normalizer
    rw [Ne.def, eq_comm, K.normalizer_eq_self_iff, ← Ne.def, ←
      LieSubmodule.nontrivial_iff_ne_bot R K]
    have : Nontrivial (L' ⧸ K.toLieSubmodule) := by
      replace hK₂ : K.toLieSubmodule ≠ ⊤ := by
        rwa [Ne.def, ← LieSubmodule.coe_toSubmodule_eq_iff, K.coe_toLieSubmodule,
          LieSubmodule.top_coeSubmodule, ← LieSubalgebra.top_coe_submodule,
          K.coe_to_submodule_eq_iff]
      exact Submodule.Quotient.nontrivial_of_lt_top _ hK₂.lt_top
    have : LieModule.IsNilpotent R K (L' ⧸ K.toLieSubmodule) := by
      -- Porting note: was refine' hK₁ _ fun x => _
      apply hK₁
      intro x
      have hx := LieAlgebra.isNilpotent_ad_of_isNilpotent (h x)
      apply Module.End.IsNilpotent.mapQ ?_ hx
      -- Porting note: mathlib3 solved this on its own with `submodule.mapq_linear._proof_5`
      intro X HX
      simp only [LieSubalgebra.coe_toLieSubmodule, LieSubalgebra.mem_coe_submodule] at HX
      simp only [LieSubalgebra.coe_toLieSubmodule, Submodule.mem_comap, ad_apply,
        LieSubalgebra.mem_coe_submodule]
      exact LieSubalgebra.lie_mem K x.prop HX
    exact nontrivial_max_triv_of_isNilpotent R K (L' ⧸ K.toLieSubmodule)
  haveI _i5 : IsNoetherian R L' := by
    -- Porting note: was
    -- isNoetherian_of_surjective L _ (LinearMap.range_rangeRestrict (toEndomorphism R L M))
    -- abusing the relation between `LieHom.rangeRestrict` and `LinearMap.rangeRestrict`
    refine isNoetherian_of_surjective L (LieHom.rangeRestrict (toEndomorphism R L M)) ?_
    simp only [LieHom.range_coeSubmodule, LieHom.coe_toLinearMap, LinearMap.range_eq_top]
    exact LieHom.surjective_rangeRestrict (toEndomorphism R L M)
  obtain ⟨K, hK₁, hK₂⟩ := (LieSubalgebra.wellFounded_of_noetherian R L').has_min s hs
  have hK₃ : K = ⊤ := by
    by_contra contra
    obtain ⟨K', hK'₁, hK'₂⟩ := this K hK₁ contra
    exact hK₂ K' hK'₁ hK'₂
  exact hK₃ ▸ hK₁
#align lie_algebra.is_engelian_of_is_noetherian LieAlgebra.isEngelian_of_isNoetherian

/-- Engel's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f682c941e212184e88fe146452b23142aafbe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
