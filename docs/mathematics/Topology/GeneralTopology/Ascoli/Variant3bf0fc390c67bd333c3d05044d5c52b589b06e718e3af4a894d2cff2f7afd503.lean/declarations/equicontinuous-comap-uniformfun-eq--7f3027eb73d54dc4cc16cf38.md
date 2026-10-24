# Equicontinuous.comap_uniformFun_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb999def-baef-4f55-0207-e446539392d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d76fa34-282e-c3a5-28ad-7cc04bc818b4",
  "kind": "theorem",
  "lexical_name": "Equicontinuous.comap_uniformFun_eq",
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
  "slug": "equicontinuous-comap-uniformfun-eq--7f3027eb73d54dc4cc16cf38",
  "source": {
    "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3027eb73d54dc4cc16cf38d302857b3c107799957626dcfa6599a3d2244ed3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d76fa34-282e-c3a5-28ad-7cc04bc818b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equicontinuous.comap_uniformFun_eq [CompactSpace X] (F_eqcont : Equicontinuous F) :
    (UniformFun.uniformSpace X α).comap F =
    (Pi.uniformSpace _).comap F := by
  -- The `≤` inequality is trivial
  refine le_antisymm (UniformSpace.comap_mono UniformFun.uniformContinuous_toFun) ?_
  -- A bit of rewriting to get a nice intermediate statement.
  simp_rw [UniformSpace.comap, UniformSpace.le_def, uniformity_comap, Pi.uniformity,
    Filter.comap_iInf, comap_comap, Function.comp_def]
  refine ((UniformFun.hasBasis_uniformity X α).comap (Prod.map F F)).ge_iff.mpr ?_
  -- Core of the proof: we need to show that, for any entourage `U` in `α`,
  -- the set `𝐓(U) := {(i,j) : ι × ι | ∀ x : X, (F i x, F j x) ∈ U}` belongs to the filter
  -- `⨅ x, comap ((i,j) ↦ (F i x, F j x)) (𝓤 α)`.
  -- In other words, we have to show that it contains a finite intersection of
  -- sets of the form `𝐒(V, x) := {(i,j) : ι × ι | (F i x, F j x) ∈ V}` for some
  -- `x : X` and `V ∈ 𝓤 α`.
  intro U hU
  -- We will do an `ε/3` argument, so we start by choosing a symmetric entourage `V ∈ 𝓤 α`
  -- such that `V ○ V ○ V ⊆ U`.
  rcases comp_comp_symm_mem_uniformity_sets hU with ⟨V, hV, Vsymm, hVU⟩
  -- Set `Ω x := {y | ∀ i, (F i x, F i y) ∈ V}`. The equicontinuity of `F` guarantees that
  -- each `Ω x` is a neighborhood of `x`.
  let Ω x : Set X := {y | ∀ i, (F i x, F i y) ∈ V}
  -- Hence, by compactness of `X`, we can find some `A ⊆ X` finite such that the `Ω a`s for `a ∈ A`
  -- still cover `X`.
  rcases CompactSpace.elim_nhds_subcover Ω (fun x ↦ F_eqcont x V hV) with ⟨A, Acover⟩
  -- We now claim that `⋂ a ∈ A, 𝐒(V, a) ⊆ 𝐓(U)`.
  have : (⋂ a ∈ A, {ij : ι × ι | (F ij.1 a, F ij.2 a) ∈ V}) ⊆
      (Prod.map F F) ⁻¹' UniformFun.gen X α U := by
    -- Given `(i, j) ∈ ⋂ a ∈ A, 𝐒(V, a)` and `x : X`, we have to prove that `(F i x, F j x) ∈ U`.
    rintro ⟨i, j⟩ hij x
    rw [mem_iInter₂] at hij
    -- We know that `x ∈ Ω a` for some `a ∈ A`, so that both `(F i x, F i a)` and `(F j a, F j x)`
    -- are in `V`.
    rcases mem_iUnion₂.mp (Acover.symm.subset <| mem_univ x) with ⟨a, ha, hax⟩
    -- Since `(i, j) ∈ 𝐒(V, a)` we also have `(F i a, F j a) ∈ V`, and finally we get
    -- `(F i x, F j x) ∈ V ○ V ○ V ⊆ U`.
    exact hVU <| SetRel.prodMk_mem_comp (SetRel.prodMk_mem_comp (SetRel.symm V <| hax i) (hij a ha))
      (hax j)
  -- This completes the proof.
  exact mem_of_superset
    (A.iInter_mem_sets.mpr fun x _ ↦ mem_iInf_of_mem x <| preimage_mem_comap hV) this

/-- Let `X` be a compact topological space, `α` a uniform space, and `F : ι → (X → α)` an
equicontinuous family. Then, the uniform structures of uniform convergence and pointwise
convergence induce the same uniform structure on `ι`.

In other words, pointwise convergence and uniform convergence coincide on an equicontinuous
subset of `X → α`.

This is a version of `Equicontinuous.comap_uniformFun_eq` stated in terms of `IsUniformInducing`
for convenience. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f145894de7f09e3804d0e70c3bd402867e616593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
