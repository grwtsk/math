# LieAlgebra.isEngelian_of_isNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53ec6547-3ba9-1c4e-4f4b-13c453bcc882",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87882f60-2e1f-eb26-1ea3-9daabf9bee1b",
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
  "slug": "liealgebra-isengelian-of-isnoetherian--55a1232d96eedb61e3e5aeed",
  "source": {
    "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a1232d96eedb61e3e5aeed3e664c354afb1cd8bd026509d0c6bc98e211e6bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87882f60-2e1f-eb26-1ea3-9daabf9bee1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–286.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8124bd3544fda957c017ee7b875e6d4284068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
