# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d9d4bfd0eb12cb3c9c3b9f811f0ff367bca84e674f48361e1b82b9ab5f563a0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ecea24b2dcf8a1c09f91dbeb",
  "source": {
    "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 502,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecea24b2dcf8a1c09f91dbeb77d1be2ce5f86bd0cf86173da3eaa3d1823d791d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d9d4bfd0eb12cb3c9c3b9f811f0ff367bca84e674f48361e1b82b9ab5f563a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) t2Space_of_properlyDiscontinuousSMul_of_t2Space [T2Space T]
    [LocallyCompactSpace T] [ContinuousConstSMul Γ T] [ProperlyDiscontinuousSMul Γ T] :
    T2Space (Quotient (MulAction.orbitRel Γ T)) := by
  letI := MulAction.orbitRel Γ T
  set Q := Quotient (MulAction.orbitRel Γ T)
  rw [t2Space_iff_nhds]
  let f : T → Q := Quotient.mk'
  have f_op : IsOpenMap f := isOpenMap_quotient_mk'_mul
  rintro ⟨x₀⟩ ⟨y₀⟩ (hxy : f x₀ ≠ f y₀)
  show ∃ U ∈ 𝓝 (f x₀), ∃ V ∈ 𝓝 (f y₀), _
  have hγx₀y₀ : ∀ γ : Γ, γ • x₀ ≠ y₀ := not_exists.mp (mt Quotient.sound hxy.symm : _)
  obtain ⟨K₀, hK₀, K₀_in⟩ := exists_compact_mem_nhds x₀
  obtain ⟨L₀, hL₀, L₀_in⟩ := exists_compact_mem_nhds y₀
  let bad_Γ_set := { γ : Γ | (γ • ·) '' K₀ ∩ L₀ ≠ ∅ }
  have bad_Γ_finite : bad_Γ_set.Finite := finite_disjoint_inter_image (Γ := Γ) hK₀ hL₀
  choose u v hu hv u_v_disjoint using fun γ => t2_separation_nhds (hγx₀y₀ γ)
  let U₀₀ := ⋂ γ ∈ bad_Γ_set, (γ • ·) ⁻¹' u γ
  let U₀ := U₀₀ ∩ K₀
  let V₀₀ := ⋂ γ ∈ bad_Γ_set, v γ
  let V₀ := V₀₀ ∩ L₀
  have U_nhds : f '' U₀ ∈ 𝓝 (f x₀) := by
    refine f_op.image_mem_nhds (inter_mem ((biInter_mem bad_Γ_finite).mpr fun γ _ => ?_) K₀_in)
    exact (continuous_const_smul _).continuousAt (hu γ)
  have V_nhds : f '' V₀ ∈ 𝓝 (f y₀) :=
    f_op.image_mem_nhds (inter_mem ((biInter_mem bad_Γ_finite).mpr fun γ _ => hv γ) L₀_in)
  refine' ⟨f '' U₀, U_nhds, f '' V₀, V_nhds, MulAction.disjoint_image_image_iff.2 _⟩
  rintro x ⟨x_in_U₀₀, x_in_K₀⟩ γ
  by_cases H : γ ∈ bad_Γ_set
  · exact fun h => (u_v_disjoint γ).le_bot ⟨mem_iInter₂.mp x_in_U₀₀ γ H, mem_iInter₂.mp h.1 γ H⟩
  · rintro ⟨-, h'⟩
    simp only [image_smul, Classical.not_not, mem_setOf_eq, Ne.def] at H
    exact eq_empty_iff_forall_not_mem.mp H (γ • x) ⟨mem_image_of_mem _ x_in_K₀, h'⟩
#align t2_space_of_properly_discontinuous_smul_of_t2_space t2Space_of_properlyDiscontinuousSMul_of_t2Space
#align t2_space_of_properly_discontinuous_vadd_of_t2_space t2Space_of_properlyDiscontinuousVAdd_of_t2Space

/-- The quotient of a second countable space by a group action is second countable. -/
@[to_additive "The quotient of a second countable space by an additive group action is second
countable."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b296a5768b6f6955b4baca1d569971067ae4cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
