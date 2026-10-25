# mem_sumCongrHom_range_of_perm_mapsTo_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88725c4d-b43c-3502-37d1-5ff54498c022",
  "kind": "theorem",
  "lexical_name": "mem_sumCongrHom_range_of_perm_mapsTo_inl",
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
  "slug": "mem-sumcongrhom-range-of-perm-mapsto-inl--78c3ddc957ec4520c0dfa1a4",
  "source": {
    "blob": "c096674d62f3cc92c25538e8b45a9a77f294cece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78c3ddc957ec4520c0dfa1a46964c26cd10d651614ed0faf14be4ea995472038",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88725c4d-b43c-3502-37d1-5ff54498c022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sumCongrHom_range_of_perm_mapsTo_inl {m n : Type*} [Finite m] [Finite n]
    {σ : Perm (Sum m n)} (h : Set.MapsTo σ (Set.range Sum.inl) (Set.range Sum.inl)) :
    σ ∈ (sumCongrHom m n).range := by
  cases nonempty_fintype m
  cases nonempty_fintype n
  classical
    have h1 : ∀ x : Sum m n, (∃ a : m, Sum.inl a = x) → ∃ a : m, Sum.inl a = σ x := by
      rintro x ⟨a, ha⟩
      apply h
      rw [← ha]
      exact ⟨a, rfl⟩
    have h3 : ∀ x : Sum m n, (∃ b : n, Sum.inr b = x) → ∃ b : n, Sum.inr b = σ x := by
      rintro x ⟨b, hb⟩
      apply (perm_mapsTo_inl_iff_mapsTo_inr σ).mp h
      rw [← hb]
      exact ⟨b, rfl⟩
    let σ₁' := subtypePermOfFintype σ h1
    let σ₂' := subtypePermOfFintype σ h3
    let σ₁ := permCongr (Equiv.ofInjective _ Sum.inl_injective).symm σ₁'
    let σ₂ := permCongr (Equiv.ofInjective _ Sum.inr_injective).symm σ₂'
    rw [MonoidHom.mem_range, Prod.exists]
    use σ₁, σ₂
    rw [Perm.sumCongrHom_apply]
    ext x
    cases' x with a b
    · rw [Equiv.sumCongr_apply, Sum.map_inl, permCongr_apply, Equiv.symm_symm,
        apply_ofInjective_symm Sum.inl_injective]
      rw [ofInjective_apply, Subtype.coe_mk, Subtype.coe_mk, subtypePerm_apply]
    · rw [Equiv.sumCongr_apply, Sum.map_inr, permCongr_apply, Equiv.symm_symm,
        apply_ofInjective_symm Sum.inr_injective]
      erw [subtypePerm_apply]
      rw [ofInjective_apply, Subtype.coe_mk, Subtype.coe_mk]
#align equiv.perm.mem_sum_congr_hom_range_of_perm_maps_to_inl Equiv.Perm.mem_sumCongrHom_range_of_perm_mapsTo_inl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096674d62f3cc92c25538e8b45a9a77f294cece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
