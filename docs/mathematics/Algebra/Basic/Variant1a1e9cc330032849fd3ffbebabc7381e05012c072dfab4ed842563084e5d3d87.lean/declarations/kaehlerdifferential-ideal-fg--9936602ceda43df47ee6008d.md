# KaehlerDifferential.ideal_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bf782da-1802-d503-1755-58ff397f7af6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b435a0e-8799-966f-afd2-642baead8c06",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.ideal_fg",
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
  "slug": "kaehlerdifferential-ideal-fg--9936602ceda43df47ee6008d",
  "source": {
    "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 405,
    "path": "GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9936602ceda43df47ee6008d58159501bf55126005abac8bc6a984fb18e8c366",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b435a0e-8799-966f-afd2-642baead8c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.ideal_fg [EssFiniteType R S] :
    (KaehlerDifferential.ideal R S).FG := by
  classical
  use (EssFiniteType.finset R S).image (fun s ↦ (1 : S) ⊗ₜ[R] s - s ⊗ₜ[R] (1 : S))
  apply le_antisymm
  · rw [Finset.coe_image, Ideal.span_le]
    rintro _ ⟨x, _, rfl⟩
    exact KaehlerDifferential.one_smul_sub_smul_one_mem_ideal R x
  · rw [← KaehlerDifferential.span_range_eq_ideal, Ideal.span_le]
    rintro _ ⟨x, rfl⟩
    let I : Ideal (S ⊗[R] S) := Ideal.span
      ((EssFiniteType.finset R S).image (fun s ↦ (1 : S) ⊗ₜ[R] s - s ⊗ₜ[R] (1 : S)))
    change _ - _ ∈ I
    have : (IsScalarTower.toAlgHom R (S ⊗[R] S) (S ⊗[R] S ⧸ I)).comp TensorProduct.includeRight =
        (IsScalarTower.toAlgHom R (S ⊗[R] S) (S ⊗[R] S ⧸ I)).comp TensorProduct.includeLeft := by
      apply EssFiniteType.algHom_ext
      intro a ha
      simp only [AlgHom.coe_comp, IsScalarTower.coe_toAlgHom', Ideal.Quotient.algebraMap_eq,
        Function.comp_apply, TensorProduct.includeLeft_apply, TensorProduct.includeRight_apply,
        Ideal.Quotient.mk_eq_mk_iff_sub_mem]
      refine Ideal.subset_span ?_
      simp only [Finset.coe_image, Set.mem_image, Finset.mem_coe]
      exact ⟨a, ha, rfl⟩
    simpa [Ideal.Quotient.mk_eq_mk_iff_sub_mem] using AlgHom.congr_fun this x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cef68402fb7b80b00ca0436233549a4e9ceee37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
