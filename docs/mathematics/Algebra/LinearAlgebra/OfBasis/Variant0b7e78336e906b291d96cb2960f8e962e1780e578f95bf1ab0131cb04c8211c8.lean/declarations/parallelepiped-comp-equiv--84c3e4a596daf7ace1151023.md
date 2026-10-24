# parallelepiped_comp_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88065f83c0f02742394220b65e548b1d7143a3f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43d46328-907b-a40f-c7ce-14fe3f727c8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd08eb90-886b-377b-eede-0f5a40b65b2e",
  "kind": "theorem",
  "lexical_name": "parallelepiped_comp_equiv",
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
  "slug": "parallelepiped-comp-equiv--84c3e4a596daf7ace1151023",
  "source": {
    "blob": "88065f83c0f02742394220b65e548b1d7143a3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c3e4a596daf7ace11510238361523864edda24c46a22c530384bebdffe6139",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd08eb90-886b-377b-eede-0f5a40b65b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallelepiped_comp_equiv (v : ι → E) (e : ι' ≃ ι) :
    parallelepiped (v ∘ e) = parallelepiped v := by
  simp only [parallelepiped]
  let K : (ι' → ℝ) ≃ (ι → ℝ) := Equiv.piCongrLeft' (fun _a : ι' => ℝ) e
  have : Icc (0 : ι → ℝ) 1 = K '' Icc (0 : ι' → ℝ) 1 := by
    rw [← Equiv.preimage_eq_iff_eq_image]
    ext x
    simp only [K, mem_preimage, mem_Icc, Pi.le_def, Pi.zero_apply, Equiv.piCongrLeft'_apply,
      Pi.one_apply]
    refine
      ⟨fun h => ⟨fun i => ?_, fun i => ?_⟩, fun h =>
        ⟨fun i => h.1 (e.symm i), fun i => h.2 (e.symm i)⟩⟩
    · simpa only [Equiv.symm_apply_apply] using h.1 (e i)
    · simpa only [Equiv.symm_apply_apply] using h.2 (e i)
  rw [this, ← image_comp]
  congr 1 with x
  have := fun z : ι' → ℝ => e.symm.sum_comp fun i => z i • v (e i)
  simp_rw [Equiv.apply_symm_apply] at this
  simp_rw [Function.comp_apply, mem_image, mem_Icc, K, Equiv.piCongrLeft'_apply, this]

-- The parallelepiped associated to an orthonormal basis of `ℝ` is either `[0, 1]` or `[-1, 0]`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88065f83c0f02742394220b65e548b1d7143a3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
