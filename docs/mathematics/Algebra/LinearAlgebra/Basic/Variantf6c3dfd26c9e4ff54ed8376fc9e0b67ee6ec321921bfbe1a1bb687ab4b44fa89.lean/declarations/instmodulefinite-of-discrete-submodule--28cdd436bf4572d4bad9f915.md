# instModuleFinite_of_discrete_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:053115649a37a8419fc6618cf543359e10da009fed983362fca02723fd2f4a60",
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
  "slug": "instmodulefinite-of-discrete-submodule--28cdd436bf4572d4bad9f915",
  "source": {
    "blob": "f474d705b90b30a0aaea43c0b49d82585a4cea9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 496,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28cdd436bf4572d4bad9f915a16484ce9867f62ed7792e5e08b4ad620e048821",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:053115649a37a8419fc6618cf543359e10da009fed983362fca02723fd2f4a60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–516.

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
    convert! this ▸ Module.Finite.map L₀ (f.restrictScalars ℤ)
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f474d705b90b30a0aaea43c0b49d82585a4cea9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
