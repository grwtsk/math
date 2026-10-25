# sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:088b38327cf5e60ea67893a77e4de3199a18844f139247644bdece22b32d1542",
  "kind": "def",
  "lexical_name": "sigma",
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
  "slug": "sigma--6fd0acd016684dba09fb5525",
  "source": {
    "blob": "957b2c416839fd965c1cfeb80f95267d3eb0eefb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd0acd016684dba09fb5525154c5d1ead2a3b12a643fc83376b63a6d476ff80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:088b38327cf5e60ea67893a77e4de3199a18844f139247644bdece22b32d1542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def sigma (M : (i : ι) → Matroid (α i)) : Matroid ((i : ι) × α i) where
  E := univ.sigma (fun i ↦ (M i).E)
  Indep I := ∀ i, (M i).Indep (Sigma.mk i ⁻¹' I)
  IsBase B := ∀ i, (M i).IsBase (Sigma.mk i ⁻¹' B)

  indep_iff' I := by
    refine ⟨fun h ↦ ?_, fun ⟨B, hB, hIB⟩ i ↦ (hB i).indep.subset (preimage_mono hIB)⟩
    choose Bs hBs using fun i ↦ (h i).exists_isBase_superset
    refine ⟨univ.sigma Bs, fun i ↦ by simpa using (hBs i).1, ?_⟩
    rw [← univ_sigma_preimage_mk I]
    refine sigma_mono rfl.subset fun i ↦ (hBs i).2

  exists_isBase := by
    choose B hB using fun i ↦ (M i).exists_isBase
    exact ⟨univ.sigma B, by simpa⟩

  isBase_exchange B₁ B₂ h₁ h₂ := by
    simp only [mem_sdiff, Sigma.exists, and_imp, Sigma.forall]
    intro i e he₁ he₂
    have hf_ex := (h₁ i).exchange (h₂ i) ⟨he₁, by simpa⟩
    obtain ⟨f, ⟨hf₁, hf₂⟩, hfB⟩ := hf_ex
    refine ⟨i, f, ⟨hf₁, hf₂⟩, fun j ↦ ?_⟩
    rw [← union_singleton, preimage_union, preimage_sdiff]
    obtain (rfl | hne) := eq_or_ne i j
    · simpa only [show ∀ x, {⟨i,x⟩} = Sigma.mk i '' {x} by simp,
        preimage_image_eq _ sigma_mk_injective, union_singleton]
    rw [preimage_singleton_eq_empty.2 (by simpa), preimage_singleton_eq_empty.2 (by simpa),
      sdiff_empty, union_empty]
    exact h₁ j

  maximality X _ I hI hIX := by
    choose Js hJs using
      fun i ↦ (hI i).subset_isBasis'_of_subset (preimage_mono (f := Sigma.mk i) hIX)
    use univ.sigma Js
    simp only [maximal_subset_iff', mem_univ, mk_preimage_sigma, and_imp]
    refine ⟨?_, ⟨fun i ↦ (hJs i).1.indep, ?_⟩, fun S hS hSX hJS ↦ ?_⟩
    · rw [← univ_sigma_preimage_mk I]
      exact sigma_mono rfl.subset fun i ↦ (hJs i).2
    · rw [← univ_sigma_preimage_mk X]
      exact sigma_mono rfl.subset fun i ↦ (hJs i).1.subset
    rw [← univ_sigma_preimage_mk S]
    refine sigma_mono rfl.subset fun i ↦ ?_
    rw [sigma_subset_iff] at hJS
    rw [(hJs i).1.eq_of_subset_indep (hS i) (hJS <| mem_univ i)]
    exact preimage_mono hSX

  subset_ground B hB := by
    rw [← univ_sigma_preimage_mk B]
    apply sigma_mono Subset.rfl fun i ↦ (hB i).subset_ground

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantaca12cd1884bb1d5a8d151f363182a724b2af633b6d2fb03d2e5a5fff23b4c98.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c416839fd965c1cfeb80f95267d3eb0eefb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
