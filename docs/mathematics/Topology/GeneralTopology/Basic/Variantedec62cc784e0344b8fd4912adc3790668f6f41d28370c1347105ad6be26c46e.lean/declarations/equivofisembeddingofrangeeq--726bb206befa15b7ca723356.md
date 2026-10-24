# equivOfIsEmbeddingOfRangeEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc3d3caeb38b7304b69528179a7bbb6494cae6a3db9d187cdc8471af9fd067f4",
  "kind": "def",
  "lexical_name": "equivOfIsEmbeddingOfRangeEq",
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
  "slug": "equivofisembeddingofrangeeq--726bb206befa15b7ca723356",
  "source": {
    "blob": "3b06bda08122ae49503febfe80755ec5b014be69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 588,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:726bb206befa15b7ca72335681cb36910fd3490aa170bab5f727b929f939d2b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc3d3caeb38b7304b69528179a7bbb6494cae6a3db9d187cdc8471af9fd067f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivOfIsEmbeddingOfRangeEq :
    OnePoint X ≃ₜ Y :=
  have _i := hf.t2Space
  have : Tendsto f (coclosedCompact X) (𝓝 y) := by
    rw [coclosedCompact_eq_cocompact, hasBasis_cocompact.tendsto_left_iff]
    intro N hN
    obtain ⟨U, hU₁, hU₂, hU₃⟩ := mem_nhds_iff.mp hN
    refine ⟨f⁻¹' Uᶜ, ?_, by simpa using (mapsTo_preimage f U).mono_right hU₁⟩
    rw [hf.isCompact_iff, image_preimage_eq_iff.mpr (by simpa [hy])]
    exact (isClosed_compl_iff.mpr hU₂).isCompact
  let e : OnePoint X ≃ Y :=
    { toFun := fun p ↦ p.elim y f
      invFun := fun q ↦ if hq : q = y then ∞ else ↑(show q ∈ range f by simpa [hy]).choose
      left_inv := fun p ↦ by
        induction p using OnePoint.rec with
        | infty => simp
        | coe p =>
          have hp : f p ≠ y := by simpa [hy] using mem_range_self (f := f) p
          simpa [hp] using hf.injective (mem_range_self p).choose_spec
      right_inv := fun q ↦ by
        rcases eq_or_ne q y with rfl | hq
        · simp
        · have hq' : q ∈ range f := by simpa [hy]
          simpa [hq] using hq'.choose_spec }
  Continuous.homeoOfEquivCompactToT2 <| (continuous_iff e).mpr ⟨this, hf.continuous⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06bda08122ae49503febfe80755ec5b014be69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
