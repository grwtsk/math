# differentiableWithinAt_localInvariantProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4a5653f1c80fac7aa9fa904409bcada1d6759d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf6fb2be-a3f3-71f3-a9b9-321acda72c34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:312dbcd1-f5f8-59ba-0c0a-2cbc37375e97",
  "kind": "theorem",
  "lexical_name": "differentiableWithinAt_localInvariantProp",
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
  "slug": "differentiablewithinat-localinvariantprop--7db852e4465bf01516a1e1f2",
  "source": {
    "blob": "e4a5653f1c80fac7aa9fa904409bcada1d6759d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 149,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db852e4465bf01516a1e1f2456ff59675061a239e546cb7b98dc2d2a915379e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:312dbcd1-f5f8-59ba-0c0a-2cbc37375e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableWithinAt_localInvariantProp :
    (contDiffGroupoid 1 I).LocalInvariantProp (contDiffGroupoid 1 I')
      (DifferentiableWithinAtProp I I') :=
  { is_local := by
      intro s x u f u_open xu
      have : I.symm ⁻¹' (s ∩ u) ∩ Set.range I = I.symm ⁻¹' s ∩ Set.range I ∩ I.symm ⁻¹' u := by
        simp only [Set.inter_right_comm, Set.preimage_inter]
      rw [DifferentiableWithinAtProp, DifferentiableWithinAtProp, this]
      symm
      apply differentiableWithinAt_inter
      have : u ∈ 𝓝 (I.symm (I x)) := by
        rw [ModelWithCorners.left_inv]
        exact u_open.mem_nhds xu
      apply I.continuous_symm.continuousAt this
    right_invariance' := by
      intro s x f e he hx h
      rw [DifferentiableWithinAtProp] at h ⊢
      have : I x = (I ∘ e.symm ∘ I.symm) (I (e x)) := by simp only [hx, mfld_simps]
      rw [this] at h
      have : I (e x) ∈ I.symm ⁻¹' e.target ∩ Set.range I := by simp only [hx, mfld_simps]
      have := (mem_groupoid_of_pregroupoid.2 he).2.contDiffWithinAt this
      convert (h.comp' _ (this.differentiableWithinAt le_rfl)).mono_of_mem_nhdsWithin _
        using 1
      · ext y; simp only [mfld_simps]
      refine
        mem_nhdsWithin.mpr
          ⟨I.symm ⁻¹' e.target, e.open_target.preimage I.continuous_symm, by
            simp_rw [Set.mem_preimage, I.left_inv, e.mapsTo hx], ?_⟩
      mfld_set_tac
    congr_of_forall := by
      intro s x f g h hx hf
      apply hf.congr
      · intro y hy
        simp only [mfld_simps] at hy
        simp only [h, hy, mfld_simps]
      · simp only [hx, mfld_simps]
    left_invariance' := by
      intro s x f e' he' hs hx h
      rw [DifferentiableWithinAtProp] at h ⊢
      have A : (I' ∘ f ∘ I.symm) (I x) ∈ I'.symm ⁻¹' e'.source ∩ Set.range I' := by
        simp only [hx, mfld_simps]
      have := (mem_groupoid_of_pregroupoid.2 he').1.contDiffWithinAt A
      convert (this.differentiableWithinAt le_rfl).comp _ h _
      · ext y; simp only [mfld_simps]
      · intro y hy; simp only [mfld_simps] at hy; simpa only [hy, mfld_simps] using hs hy.1 }

variable (I) in
/-- Predicate ensuring that, at a point and within a set, a function can have at most one
derivative. This is expressed using the preferred chart at the considered point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a5653f1c80fac7aa9fa904409bcada1d6759d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
