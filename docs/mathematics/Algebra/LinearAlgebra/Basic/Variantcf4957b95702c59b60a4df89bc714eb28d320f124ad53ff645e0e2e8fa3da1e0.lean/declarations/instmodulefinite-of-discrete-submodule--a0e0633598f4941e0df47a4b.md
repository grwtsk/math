# instModuleFinite_of_discrete_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32994da05e81bbb578c5594ccdd71ec2306b7a31558aeab42e80b24772224771",
  "kind": "instance",
  "lexical_name": "instModuleFinite_of_discrete_submodule",
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
  "slug": "instmodulefinite-of-discrete-submodule--a0e0633598f4941e0df47a4b",
  "source": {
    "blob": "41ff06a60fc284974a394c63423af82e7deb545b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 488,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0e0633598f4941e0df47a4b50d4de6a5bef9febdf472dcfb7c60143e1455e0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32994da05e81bbb578c5594ccdd71ec2306b7a31558aeab42e80b24772224771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModuleFinite_of_discrete_submodule {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [FiniteDimensional ℝ E] (L : Submodule ℤ E) [DiscreteTopology L] :
    Module.Finite ℤ L := by
  let f := (span ℝ (L : Set E)).subtype
  let L₀ := L.comap (f.restrictScalars ℤ)
  have h_img : f '' L₀ = L := by
    rw [← LinearMap.coe_restrictScalars ℤ f, ← Submodule.map_coe (f.restrictScalars ℤ),
      Submodule.map_comap_eq_self]
    exact fun x hx ↦ LinearMap.mem_range.mpr ⟨⟨x, Submodule.subset_span hx⟩, rfl⟩
  suffices Module.Finite ℤ L₀ by
    have : L₀.map (f.restrictScalars ℤ) = L :=
      SetLike.ext'_iff.mpr h_img
    convert this ▸ Module.Finite.map L₀ (f.restrictScalars ℤ)
  have : DiscreteTopology L₀ := by
    refine DiscreteTopology.preimage_of_continuous_injective (L : Set E) ?_ (injective_subtype _)
    exact LinearMap.continuous_of_finiteDimensional f
  have : IsZLattice ℝ L₀ := ⟨by
    rw [← (Submodule.map_injective_of_injective (injective_subtype _)).eq_iff, Submodule.map_span,
      Submodule.map_top, range_subtype, h_img]⟩
  exact ZLattice.module_finite ℝ L₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ff06a60fc284974a394c63423af82e7deb545b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
