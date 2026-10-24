# ContMDiffOn.contMDiffOn_tangentMapWithin_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f90fed0-7ffd-8160-3bdf-dcb39d0e7b0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad44858d-9d36-5242-b3d7-f986f249f16a",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.contMDiffOn_tangentMapWithin_aux",
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
  "slug": "contmdiffon-contmdiffon-tangentmapwithin-aux--3ead8d137552b1b75ac15e11",
  "source": {
    "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 287,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ead8d137552b1b75ac15e1153362ac83102b79ce8e386afb314f73a12dd91c1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad44858d-9d36-5242-b3d7-f986f249f16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.contMDiffOn_tangentMapWithin_aux {f : H → H'} {s : Set H}
    (hf : ContMDiffOn I I' n f s) (hmn : m + 1 ≤ n) (hs : UniqueMDiffOn I s) :
    ContMDiffOn I.tangent I'.tangent m (tangentMapWithin I I' f s)
      (π E (TangentSpace I) ⁻¹' s) := by
  have m_le_n : m ≤ n := (le_add_right le_rfl).trans hmn
  have one_le_n : 1 ≤ n := (le_add_left le_rfl).trans hmn
  have U' : UniqueDiffOn 𝕜 (range I ∩ I.symm ⁻¹' s) := fun y hy ↦ by
    simpa only [UniqueMDiffOn, UniqueMDiffWithinAt, hy.1, inter_comm, mfld_simps]
      using hs (I.symm y) hy.2
  rw [contMDiffOn_iff]
  refine' ⟨hf.continuousOn_tangentMapWithin_aux one_le_n hs, fun p q => _⟩
  suffices h :
    ContDiffOn 𝕜 m
      (((fun p : H' × E' => (I' p.fst, p.snd)) ∘ TotalSpace.toProd H' E') ∘
        tangentMapWithin I I' f s ∘
          (TotalSpace.toProd H E).symm ∘ fun p : E × E => (I.symm p.fst, p.snd))
      ((range I ∩ I.symm ⁻¹' s) ×ˢ univ)
  · -- Porting note: was `simpa [(· ∘ ·)] using h`
    convert h using 1
    · ext1 ⟨x, y⟩
      simp only [mfld_simps]; rfl
    · simp only [mfld_simps]
      rw [inter_prod, prod_univ, prod_univ]
      rfl
  change
    ContDiffOn 𝕜 m
      (fun p : E × E =>
        ((I' (f (I.symm p.fst)), (mfderivWithin I I' f s (I.symm p.fst) : E → E') p.snd) : E' × E'))
      ((range I ∩ I.symm ⁻¹' s) ×ˢ univ)
  -- check that all bits in this formula are `C^n`
  have hf' := contMDiffOn_iff.1 hf
  have A : ContDiffOn 𝕜 m (I' ∘ f ∘ I.symm) (range I ∩ I.symm ⁻¹' s) := by
    simpa only [mfld_simps] using (hf'.2 (I.symm 0) (I'.symm 0)).of_le m_le_n
  have B : ContDiffOn 𝕜 m
      ((I' ∘ f ∘ I.symm) ∘ Prod.fst) ((range I ∩ I.symm ⁻¹' s) ×ˢ (univ : Set E)) :=
    A.comp contDiff_fst.contDiffOn (prod_subset_preimage_fst _ _)
  suffices C :
    ContDiffOn 𝕜 m
      (fun p : E × E => (fderivWithin 𝕜 (I' ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I) p.1 : _) p.2)
      ((range I ∩ I.symm ⁻¹' s) ×ˢ (univ : Set E))
  · refine ContDiffOn.prod B ?_
    refine C.congr fun p hp => ?_
    simp only [mfld_simps] at hp
    simp only [mfderivWithin, hf.mdifferentiableOn one_le_n _ hp.2, hp.1, if_pos, mfld_simps]
  have D :
    ContDiffOn 𝕜 m (fun x => fderivWithin 𝕜 (I' ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I) x)
      (range I ∩ I.symm ⁻¹' s) := by
    have : ContDiffOn 𝕜 n (I' ∘ f ∘ I.symm) (range I ∩ I.symm ⁻¹' s) := by
      simpa only [mfld_simps] using hf'.2 (I.symm 0) (I'.symm 0)
    simpa only [inter_comm] using this.fderivWithin U' hmn
  refine ContDiffOn.clm_apply ?_ contDiffOn_snd
  exact D.comp contDiff_fst.contDiffOn (prod_subset_preimage_fst _ _)
#align cont_mdiff_on.cont_mdiff_on_tangent_map_within_aux ContMDiffOn.contMDiffOn_tangentMapWithin_aux

/-- If a function is `C^n` on a domain with unique derivatives, then its bundled derivative
is `C^m` when `m+1 ≤ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba07e05f39d0f635cb34837afe54a28fd14fcab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
