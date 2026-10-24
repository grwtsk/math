# maximal_orthonormal_iff_orthogonalComplement_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29ac8aed-5aee-2144-752d-ed77486e23a9",
  "kind": "theorem",
  "lexical_name": "maximal_orthonormal_iff_orthogonalComplement_eq_bot",
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
  "slug": "maximal-orthonormal-iff-orthogonalcomplement-eq-bot--43725a522db527187f13ea85",
  "source": {
    "blob": "9e0bb95bd0e70c01a34341ae30299a7a56af087e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1448,
    "line": 1383,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43725a522db527187f13ea8518136fb1578f5d00235a26f909c6e756f8565023",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ac8aed-5aee-2144-752d-ed77486e23a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1383–1448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximal_orthonormal_iff_orthogonalComplement_eq_bot (hv : Orthonormal 𝕜 ((↑) : v → E)) :
    (∀ (u) (_ : u ⊇ v), Orthonormal 𝕜 ((↑) : u → E) → u = v) ↔ (span 𝕜 v)ᗮ = ⊥ := by
  rw [Submodule.eq_bot_iff]
  constructor
  · contrapose!
    -- ** direction 1: nonempty orthogonal complement implies nonmaximal
    rintro ⟨x, hx', hx⟩
    -- take a nonzero vector and normalize it
    let e := (‖x‖⁻¹ : 𝕜) • x
    have he : ‖e‖ = 1 := by simp [norm_smul_inv_norm hx]
    have he' : e ∈ (span 𝕜 v)ᗮ := smul_mem' _ _ hx'
    have he'' : e ∉ v := by
      intro hev
      have : e = 0 := by
        have : e ∈ span 𝕜 v ⊓ (span 𝕜 v)ᗮ := ⟨subset_span hev, he'⟩
        simpa [(span 𝕜 v).inf_orthogonal_eq_bot] using this
      have : e ≠ 0 := hv.ne_zero ⟨e, hev⟩
      contradiction
    -- put this together with `v` to provide a candidate orthonormal basis for the whole space
    refine' ⟨insert e v, v.subset_insert e, ⟨_, _⟩, (ne_insert_of_not_mem v he'').symm⟩
    · -- show that the elements of `insert e v` have unit length
      rintro ⟨a, ha'⟩
      cases' eq_or_mem_of_mem_insert ha' with ha ha
      · simp [ha, he]
      · exact hv.1 ⟨a, ha⟩
    · -- show that the elements of `insert e v` are orthogonal
      have h_end : ∀ a ∈ v, ⟪a, e⟫ = 0 := by
        intro a ha
        exact he' a (Submodule.subset_span ha)
      rintro ⟨a, ha'⟩
      cases' eq_or_mem_of_mem_insert ha' with ha ha
      · rintro ⟨b, hb'⟩ hab'
        have hb : b ∈ v := by
          refine' mem_of_mem_insert_of_ne hb' _
          intro hbe'
          apply hab'
          simp [ha, hbe']
        rw [inner_eq_zero_symm]
        simpa [ha] using h_end b hb
      rintro ⟨b, hb'⟩ hab'
      cases' eq_or_mem_of_mem_insert hb' with hb hb
      · simpa [hb] using h_end a ha
      have : (⟨a, ha⟩ : v) ≠ ⟨b, hb⟩ := by
        intro hab''
        apply hab'
        simpa using hab''
      exact hv.2 this
  · -- ** direction 2: empty orthogonal complement implies maximal
    simp only [Subset.antisymm_iff]
    rintro h u (huv : v ⊆ u) hu
    refine' ⟨_, huv⟩
    intro x hxu
    refine' ((mt (h x)) (hu.ne_zero ⟨x, hxu⟩)).imp_symm _
    intro hxv y hy
    have hxv' : (⟨x, hxu⟩ : u) ∉ ((↑) ⁻¹' v : Set u) := by simp [huv, hxv]
    obtain ⟨l, hl, rfl⟩ :
      ∃ l ∈ Finsupp.supported 𝕜 𝕜 ((↑) ⁻¹' v : Set u), (Finsupp.total (↥u) E 𝕜 (↑)) l = y := by
      rw [← Finsupp.mem_span_image_iff_total]
      simp [huv, inter_eq_self_of_subset_left, hy]
    exact hu.inner_finsupp_eq_zero hxv' hl
#align maximal_orthonormal_iff_orthogonal_complement_eq_bot maximal_orthonormal_iff_orthogonalComplement_eq_bot

variable [FiniteDimensional 𝕜 E]

/-- An orthonormal set in a finite-dimensional `InnerProductSpace` is maximal, if and only if it
is a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant08c81accbde45fec64d74161be521996a64bbc44f120e66c4e1f5f4a2801ba63.lean#L1383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0bb95bd0e70c01a34341ae30299a7a56af087e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
