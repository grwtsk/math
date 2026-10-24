# exists_isSl2Triple_of_weight_isNonZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6cb0a20-a45d-7c63-77c0-25f30feb25fc",
  "kind": "lemma",
  "lexical_name": "exists_isSl2Triple_of_weight_isNonZero",
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
  "slug": "exists-issl2triple-of-weight-isnonzero--4f78e3df549a76694418e474",
  "source": {
    "blob": "b84f2960e5228ecba9f15c41b2b2f21dbb934aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 563,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f78e3df549a76694418e47429cade780ba90326ee93a33e562d5982d3ac6252",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6cb0a20-a45d-7c63-77c0-25f30feb25fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isSl2Triple_of_weight_isNonZero {α : Weight K H L} (hα : α.IsNonZero) :
    ∃ h e f : L, IsSl2Triple h e f ∧ e ∈ rootSpace H α ∧ f ∈ rootSpace H (-α) := by
  obtain ⟨e, heα : e ∈ rootSpace H α, he₀ : e ≠ 0⟩ := α.exists_ne_zero
  obtain ⟨f', hfα, hf⟩ : ∃ f ∈ rootSpace H (-α), killingForm K L e f ≠ 0 := by
    contrapose! he₀
    simpa using mem_ker_killingForm_of_mem_rootSpace_of_forall_rootSpace_neg K L H heα he₀
  have hef := lie_eq_killingForm_smul_of_mem_rootSpace_of_mem_rootSpace_neg heα hfα
  let h : H := ⟨⁅e, f'⁆, hef ▸ Submodule.smul_mem _ _ (Submodule.coe_mem _)⟩
  have hh : α h ≠ 0 := by
    have : h = killingForm K L e f' • (cartanEquivDual H).symm α := by
      simp only [h, Subtype.ext_iff, hef]
      rw [Submodule.coe_smul_of_tower]
    rw [this, map_smul, smul_eq_mul, ne_eq, mul_eq_zero, not_or]
    exact ⟨hf, root_apply_cartanEquivDual_symm_ne_zero hα⟩
  let f := (2 * (α h)⁻¹) • f'
  replace hef : ⁅⁅e, f⁆, e⁆ = 2 • e := by
    have : ⁅⁅e, f'⁆, e⁆ = α h • e := lie_eq_smul_of_mem_rootSpace heα h
    rw [lie_smul, smul_lie, this, ← smul_assoc, smul_eq_mul, mul_assoc, inv_mul_cancel₀ hh,
      mul_one, two_smul, two_smul]
  refine ⟨⁅e, f⁆, e, f, ⟨fun contra ↦ ?_, rfl, hef, ?_⟩, heα, Submodule.smul_mem _ _ hfα⟩
  · rw [contra] at hef
    have : IsAddTorsionFree L := .of_isTorsionFree K L
    simp only [zero_lie, eq_comm (a := (0 : L)), smul_eq_zero, OfNat.ofNat_ne_zero, false_or] at hef
    contradiction
  · have : ⁅⁅e, f'⁆, f'⁆ = - α h • f' := lie_eq_smul_of_mem_rootSpace hfα h
    rw [lie_smul, lie_smul, smul_lie, this]
    simp [← smul_assoc, f, hh, mul_comm _ (2 * (α h)⁻¹)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84f2960e5228ecba9f15c41b2b2f21dbb934aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
