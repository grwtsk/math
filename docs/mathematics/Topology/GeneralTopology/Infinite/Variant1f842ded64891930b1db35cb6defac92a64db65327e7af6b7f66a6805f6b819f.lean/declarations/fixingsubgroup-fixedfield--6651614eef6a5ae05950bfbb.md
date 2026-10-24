# fixingSubgroup_fixedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1d50542-2ec0-0733-88e5-221b6d14ccb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45932590-c376-8af4-9b34-d4d3e4c8fc1a",
  "kind": "lemma",
  "lexical_name": "fixingSubgroup_fixedField",
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
  "slug": "fixingsubgroup-fixedfield--6651614eef6a5ae05950bfbb",
  "source": {
    "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6651614eef6a5ae05950bfbb4e1ef915d6d1a6672444692504a99377d104a612",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45932590-c376-8af4-9b34-d4d3e4c8fc1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fixingSubgroup_fixedField (H : ClosedSubgroup Gal(K/k)) [IsGalois k K] :
    (IntermediateField.fixedField H).fixingSubgroup = H.1 := by
  apply le_antisymm _ ((IntermediateField.le_iff_le H.toSubgroup
    (IntermediateField.fixedField H.toSubgroup)).mp le_rfl)
  intro σ hσ
  by_contra h
  have nhds : H.carrierᶜ ∈ nhds σ := H.isClosed'.isOpen_compl.mem_nhds h
  rw [GroupFilterBasis.nhds_eq (x₀ := σ) (galGroupBasis k K)] at nhds
  rcases nhds with ⟨b, ⟨gp, ⟨L, hL, eq'⟩, eq⟩, sub⟩
  rw [← eq'] at eq
  have := hL.out
  let L' : FiniteGaloisIntermediateField k K := {
    normalClosure k L K with
    finiteDimensional := normalClosure.is_finiteDimensional k L K
    isGalois := IsGalois.normalClosure k L K }
  have compl : σ • L'.1.fixingSubgroup.carrier ⊆ H.carrierᶜ := by
    rintro φ ⟨τ, hτ, muleq⟩
    have sub' : σ • b ⊆ H.carrierᶜ := Set.smul_set_subset_iff.mpr sub
    apply sub'
    simp only [← muleq, ← eq]
    apply Set.smul_mem_smul_set
    exact (L.fixingSubgroup_le (IntermediateField.le_normalClosure L) hτ)
  have fix : ∀ x ∈ IntermediateField.fixedField H.toSubgroup ⊓ ↑L', σ x = x :=
    fun x hx ↦ ((mem_fixingSubgroup_iff Gal(K/k)).mp hσ) x hx.1
  rw [restrict_fixedField H.1 L'.1] at fix
  have : (restrictNormalHom L') σ ∈ (Subgroup.map (restrictNormalHom L') H.1) := by
    rw [← IntermediateField.fixingSubgroup_fixedField (Subgroup.map (restrictNormalHom L') H.1)]
    apply (mem_fixingSubgroup_iff (L' ≃ₐ[k] L')).mpr
    intro y hy
    apply Subtype.val_injective
    simp only [AlgEquiv.smul_def, restrictNormalHom_apply L'.1 σ y,
      fix y.1 ((IntermediateField.mem_lift y).mpr hy)]
  rcases this with ⟨h, mem, eq⟩
  have : h ∈ σ • L'.1.fixingSubgroup.carrier := by
    use σ⁻¹ * h
    simp only [Subsemigroup.mem_carrier, Submonoid.mem_toSubsemigroup, Subgroup.mem_toSubmonoid,
      smul_eq_mul, mul_inv_cancel_left, and_true]
    apply (mem_fixingSubgroup_iff Gal(K/k)).mpr
    intro y hy
    simp only [AlgEquiv.smul_def, AlgEquiv.mul_apply]
    have : ((restrictNormalHom L') h ⟨y,hy⟩).1 = ((restrictNormalHom L') σ ⟨y,hy⟩).1 := by rw [eq]
    rw [restrictNormalHom_apply L'.1 h ⟨y, hy⟩, restrictNormalHom_apply L'.1 σ ⟨y, hy⟩] at this
    simp only [this, ← AlgEquiv.mul_apply, inv_mul_cancel, one_apply]
  absurd compl
  apply Set.not_subset.mpr
  use h
  simpa only [this, Set.mem_compl_iff, Subsemigroup.mem_carrier, Submonoid.mem_toSubsemigroup,
    Subgroup.mem_toSubmonoid, not_not, true_and] using! mem

/-- The Galois correspondence from intermediate fields to closed subgroups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9523833f551d886ec45d137d31d72c4f83cbbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
