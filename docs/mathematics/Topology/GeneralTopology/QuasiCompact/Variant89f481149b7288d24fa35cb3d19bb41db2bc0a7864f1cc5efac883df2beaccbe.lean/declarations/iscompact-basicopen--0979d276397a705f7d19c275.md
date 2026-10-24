# isCompact_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5472a38-6c3d-fcb5-1533-f165785dbf2a",
  "kind": "theorem",
  "lexical_name": "isCompact_basicOpen",
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
  "slug": "iscompact-basicopen--0979d276397a705f7d19c275",
  "source": {
    "blob": "05399ce62aa03a6bf827e5e15e46066b6be70e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0979d276397a705f7d19c275ab326d4cafe8a96ab0394474759124fb872f81b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5472a38-6c3d-fcb5-1533-f165785dbf2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_basicOpen (X : Scheme) {U : Opens X.carrier} (hU : IsCompact (U : Set X.carrier))
    (f : X.presheaf.obj (op U)) : IsCompact (X.basicOpen f : Set X.carrier) := by
  classical
  refine' ((isCompact_open_iff_eq_finset_affine_union _).mpr _).1
  obtain ⟨s, hs, e⟩ := (isCompact_open_iff_eq_finset_affine_union _).mp ⟨hU, U.isOpen⟩
  let g : s → X.affineOpens := by
    intro V
    use V.1 ⊓ X.basicOpen f
    have : V.1.1 ⟶ U := by
      apply homOfLE; change _ ⊆ (U : Set X.carrier); rw [e]
      convert @Set.subset_iUnion₂ _ _ _
        (fun (U : X.affineOpens) (_ : U ∈ s) => ↑U) V V.prop using 1
    erw [← X.toLocallyRingedSpace.toRingedSpace.basicOpen_res this.op]
    exact IsAffineOpen.basicOpenIsAffine V.1.prop _
  haveI : Finite s := hs.to_subtype
  refine' ⟨Set.range g, Set.finite_range g, _⟩
  refine' (Set.inter_eq_right_iff_subset.mpr
            (SetLike.coe_subset_coe.2 <| RingedSpace.basicOpen_le _ _)).symm.trans _
  rw [e, Set.iUnion₂_inter]
  apply le_antisymm <;> apply Set.iUnion₂_subset
  · intro i hi
    -- porting note: had to make explicit the first given parameter to `Set.subset_iUnion₂`
    exact Set.Subset.trans (Set.Subset.rfl : _ ≤ g ⟨i, hi⟩)
      (@Set.subset_iUnion₂ _ _ _
        (fun (i : Scheme.affineOpens X) (_ : i ∈ Set.range g) => (i : Set X.toPresheafedSpace)) _
        (Set.mem_range_self ⟨i, hi⟩))
  · rintro ⟨i, hi⟩ ⟨⟨j, hj⟩, hj'⟩
    rw [← hj']
    refine' Set.Subset.trans _ (Set.subset_iUnion₂ j hj)
    exact Set.Subset.rfl
#align algebraic_geometry.is_compact_basic_open AlgebraicGeometry.isCompact_basicOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant89f481149b7288d24fa35cb3d19bb41db2bc0a7864f1cc5efac883df2beaccbe.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05399ce62aa03a6bf827e5e15e46066b6be70e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
