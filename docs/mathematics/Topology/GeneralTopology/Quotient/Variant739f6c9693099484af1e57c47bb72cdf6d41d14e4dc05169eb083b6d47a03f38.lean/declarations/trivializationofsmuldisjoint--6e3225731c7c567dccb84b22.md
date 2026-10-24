# trivializationOfSMulDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e448327c4380c11df5c536c28471fe19124daba49f24b7f8e4f22c41bc3c985",
  "kind": "def",
  "lexical_name": "trivializationOfSMulDisjoint",
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
  "slug": "trivializationofsmuldisjoint--6e3225731c7c567dccb84b22",
  "source": {
    "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e3225731c7c567dccb84b22fda3226966851664cef4ef8a565403861b7d42cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e448327c4380c11df5c536c28471fe19124daba49f24b7f8e4f22c41bc3c985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def trivializationOfSMulDisjoint [TopologicalSpace G] [DiscreteTopology G]
    (U : Set E) (open_U : IsOpen U) (disjoint : ∀ g : G, ((g • ·) '' U ∩ U).Nonempty → g = 1) :
    Trivialization G f := by
  have pGE (g : G) e : f (g • e) = f e := hfG.mpr ⟨g, rfl⟩
  have preim_im : f ⁻¹' f '' U = ⋃ g : G, (g • ·) ⁻¹' U := by
    ext e; refine ⟨fun ⟨e', heU, he⟩ ↦ ?_, ?_⟩
    · obtain ⟨g, rfl⟩ := hfG.mp he; exact ⟨_, ⟨g, rfl⟩, heU⟩
    · intro ⟨_, ⟨g, rfl⟩, hg⟩; exact ⟨_, hg, pGE g e⟩
  have : Nonempty (X → E) := ⟨Function.surjInv hf.surjective⟩
  refine IsOpen.trivializationDiscrete (fun g ↦ (g • ·) ⁻¹' U) (f '' U)
    ?_ (fun g W hWU ↦ ⟨fun hoW ↦ (hoW.preimage hf.continuous).inter (open_U.preimage <|
      continuous_const_smul g), fun isOpen ↦ hf.isOpen_preimage.mp ?_⟩) (fun g e₁ h₁ e₂ h₂ he ↦ ?_)
    ?_ (fun {g₁ g₂} hne ↦ disjoint_iff_inf_le.mpr fun e ⟨h₁, h₂⟩ ↦ hne <|
      mul_inv_eq_one.mp (disjoint _ ⟨_, ⟨_, h₂, ?_⟩, h₁⟩)) preim_im.subset
  · rw [← hf.isOpen_preimage, preim_im]
    exact isOpen_iUnion fun g ↦ open_U.preimage (continuous_const_smul g)
  · convert! isOpen_iUnion fun g : G ↦ isOpen.preimage (continuous_const_smul g)
    ext e; refine ⟨fun hW ↦ ?_, ?_⟩
    · have ⟨e', he', hfe⟩ := hWU hW
      obtain ⟨g', rfl⟩ := hfG.mp hfe
      refine ⟨_, ⟨g⁻¹ * g', rfl⟩, ?_, ?_⟩
      · apply Set.mem_of_eq_of_mem (pGE _ e) hW
      · apply Set.mem_of_eq_of_mem _ he'; simp_rw [mul_smul, smul_inv_smul]
    · rintro ⟨_, ⟨g, rfl⟩, hW, -⟩; apply Set.mem_of_eq_of_mem (pGE _ e).symm hW
  · rw [← pGE g, ← pGE g e₂] at he
    have ⟨g', he⟩ := hfG.mp he
    rw [← smul_left_cancel_iff g, ← he, disjoint g' ⟨_, ⟨_, h₂, he⟩, h₁⟩]
    apply one_smul
  · rintro g x ⟨e, hU, rfl⟩; exact ⟨g⁻¹ • e, by apply (smul_inv_smul g e).symm ▸ hU, pGE _ e⟩
  · simp_rw [mul_smul, inv_smul_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
