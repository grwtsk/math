# OrthogonalFamily.decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f5411abd489d15431e5882d0b3eac07105111e939bf4c19dae1a7845b2b6c87",
  "kind": "abbrev",
  "lexical_name": "OrthogonalFamily.decomposition",
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
  "slug": "orthogonalfamily-decomposition--bdeaf4e2759e9ea7df50b107",
  "source": {
    "blob": "03df40376462cddf15be1598c4e201a610830a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdeaf4e2759e9ea7df50b10760d2cfd709bda25a4833eff508f408e45810487a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f5411abd489d15431e5882d0b3eac07105111e939bf4c19dae1a7845b2b6c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev OrthogonalFamily.decomposition
    [DecidableEq ι] [Fintype ι] {V : ι → Submodule 𝕜 E}
    [∀ i, CompleteSpace (V i)] (hV : OrthogonalFamily 𝕜 (fun i => V i) fun i => (V i).subtypeₗᵢ)
    (h : iSup V = ⊤) : DirectSum.Decomposition V where
  decompose' x := DFinsupp.equivFunOnFintype.symm fun i => (V i).orthogonalProjectionOnto x
  left_inv x := by
    dsimp only
    let := fun i => Classical.decEq (V i)
    rw [DirectSum.coeAddMonoidHom, DirectSum.toAddMonoid, DFinsupp.liftAddHom_apply]
    -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
    erw [DFinsupp.sumAddHom_apply]; rw [DFinsupp.sum_eq_sum_fintype]
    · simp_rw [Equiv.apply_symm_apply, AddSubmonoidClass.coe_subtype]
      exact hV.sum_projection_of_mem_iSup _ ((h.ge :) Submodule.mem_top)
    · intro i
      exact map_zero _
  right_inv x := by
    dsimp only
    simp_rw [hV.projection_directSum_coeAddHom, DFinsupp.equivFunOnFintype_symm_coe]

end OrthogonalFamily

section OrthonormalBasis

variable {v : Set E}

open Module Submodule Set

/-- An orthonormal set in an `InnerProductSpace` is maximal, if and only if the orthogonal
complement of its span is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03df40376462cddf15be1598c4e201a610830a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
