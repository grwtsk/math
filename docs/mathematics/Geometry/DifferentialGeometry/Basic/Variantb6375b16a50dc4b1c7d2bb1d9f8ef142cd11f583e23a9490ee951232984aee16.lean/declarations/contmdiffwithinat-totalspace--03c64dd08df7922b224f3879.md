# contMDiffWithinAt_totalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f346dee-9197-4286-9c5d-8d0a8e1f03d2",
  "kind": "theorem",
  "lexical_name": "contMDiffWithinAt_totalSpace",
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
  "slug": "contmdiffwithinat-totalspace--03c64dd08df7922b224f3879",
  "source": {
    "blob": "e3533206111b8a53876ce93ea62a1d30d6f5dc61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 176,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03c64dd08df7922b224f38795b7fa8e48e287b7d638a77e5bbd061c1b2f4f69b",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f346dee-9197-4286-9c5d-8d0a8e1f03d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_totalSpace (f : M → TotalSpace F E) {s : Set M} {x₀ : M} :
    ContMDiffWithinAt IM (IB.prod 𝓘(𝕜, F)) n f s x₀ ↔
      ContMDiffWithinAt IM IB n (fun x => (f x).proj) s x₀ ∧
      ContMDiffWithinAt IM 𝓘(𝕜, F) n (fun x ↦ (trivializationAt F E (f x₀).proj (f x)).2) s x₀ := by
  simp +singlePass only [contMDiffWithinAt_iff_target]
  rw [and_and_and_comm, ← FiberBundle.continuousWithinAt_totalSpace, and_congr_right_iff]
  intro hf
  simp_rw [modelWithCornersSelf_prod, FiberBundle.extChartAt, Function.comp_def,
    PartialEquiv.trans_apply, PartialEquiv.prod_coe, PartialEquiv.refl_coe,
    extChartAt_self_apply, modelWithCornersSelf_coe, Function.id_def, ← chartedSpaceSelf_prod]
  refine (contMDiffWithinAt_prod_iff _).trans (and_congr ?_ Iff.rfl)
  have h1 : (fun x => (f x).proj) ⁻¹' (trivializationAt F E (f x₀).proj).baseSet ∈ 𝓝[s] x₀ :=
    ((FiberBundle.continuous_proj F E).continuousWithinAt.comp hf (mapsTo_image f s))
      ((Trivialization.open_baseSet _).mem_nhds (mem_baseSet_trivializationAt F E _))
  refine EventuallyEq.contMDiffWithinAt_iff (eventually_of_mem h1 fun x hx => ?_) ?_
  · simp_rw [Function.comp, PartialHomeomorph.coe_coe, Trivialization.coe_coe]
    rw [Trivialization.coe_fst']
    exact hx
  · simp only [mfld_simps]

/-- Characterization of `C^n` functions into a vector bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3533206111b8a53876ce93ea62a1d30d6f5dc61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
