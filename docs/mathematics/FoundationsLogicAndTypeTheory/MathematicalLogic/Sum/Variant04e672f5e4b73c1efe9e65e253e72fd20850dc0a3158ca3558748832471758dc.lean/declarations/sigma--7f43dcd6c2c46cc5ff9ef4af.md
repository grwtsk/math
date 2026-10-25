# sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c72df91591b5bb53b9ddab6294aecb8fccb0b9b2b01344376f808cd3d1870de0",
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
  "slug": "sigma--7f43dcd6c2c46cc5ff9ef4af",
  "source": {
    "blob": "396fcfb891cd704812585f188504b88d8df1a486",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f43dcd6c2c46cc5ff9ef4af694191e335f3b73ac73204ced8d3fedad81d05fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c72df91591b5bb53b9ddab6294aecb8fccb0b9b2b01344376f808cd3d1870de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–113.

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
    simp only [mem_diff, Sigma.exists, and_imp, Sigma.forall]
    intro i e he₁ he₂
    have hf_ex := (h₁ i).exchange (h₂ i) ⟨he₁, by simpa⟩
    obtain ⟨f, ⟨hf₁, hf₂⟩, hfB⟩ := hf_ex
    refine ⟨i, f, ⟨hf₁, hf₂⟩, fun j ↦ ?_⟩
    rw [← union_singleton, preimage_union, preimage_diff]
    obtain (rfl | hne) := eq_or_ne i j
    · simpa only [ show ∀ x, {⟨i,x⟩} = Sigma.mk i '' {x} by simp,
        preimage_image_eq _ sigma_mk_injective, union_singleton]
    rw [preimage_singleton_eq_empty.2 (by simpa), preimage_singleton_eq_empty.2 (by simpa),
      diff_empty, union_empty]
    exact h₁ j

  maximality X _ I hI hIX := by
    choose Js hJs using
      fun i ↦ (hI i).subset_isBasis'_of_subset (preimage_mono (f := Sigma.mk i) hIX)

    use univ.sigma Js
    simp only [maximal_subset_iff', mem_univ, mk_preimage_sigma, le_eq_subset, and_imp]
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `396fcfb891cd704812585f188504b88d8df1a486` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
