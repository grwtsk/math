# covolume_div_covolume_eq_relIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df50a9d5-d01c-781c-0d52-a43dd9cbe721",
  "kind": "theorem",
  "lexical_name": "covolume_div_covolume_eq_relIndex",
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
  "slug": "covolume-div-covolume-eq-relindex--fb610468a8ca53dea4623d51",
  "source": {
    "blob": "2ea7846d49f9b471740e48867069f6a6e43c1cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb610468a8ca53dea4623d513df913ea2865cb5ad92253180b1211d766c57e31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df50a9d5-d01c-781c-0d52-a43dd9cbe721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covolume_div_covolume_eq_relIndex {ι : Type*} [Fintype ι] (L₁ L₂ : Submodule ℤ (ι → ℝ))
    [DiscreteTopology L₁] [IsZLattice ℝ L₁] [DiscreteTopology L₂] [IsZLattice ℝ L₂] (h : L₁ ≤ L₂) :
    covolume L₁ / covolume L₂ = L₁.toAddSubgroup.relIndex L₂.toAddSubgroup := by
  classical
  let b₁ := IsZLattice.basis L₁
  let b₂ := IsZLattice.basis L₂
  rw [AddSubgroup.relIndex_eq_natAbs_det L₁.toAddSubgroup L₂.toAddSubgroup h b₁ b₂,
    Nat.cast_natAbs, Int.cast_abs]
  trans |(b₂.ofZLatticeBasis ℝ).det (b₁.ofZLatticeBasis ℝ)|
  · rw [← Basis.det_mul_det _ (Pi.basisFun ℝ ι) _, abs_mul, Pi.basisFun_det_apply,
      ← Basis.det_inv, Units.val_inv_eq_inv_val, IsUnit.unit_spec, Pi.basisFun_det_apply,
      covolume_eq_det _ b₁, covolume_eq_det _ b₂, mul_comm, abs_inv]
    congr 3 <;> ext <;> simp
  · rw [Basis.det_apply, Basis.det_apply, Int.cast_det]
    congr; ext i j
    rw [Matrix.map_apply, Basis.toMatrix_apply, Basis.toMatrix_apply, Basis.ofZLatticeBasis_apply]
    exact (b₂.ofZLatticeBasis_repr_apply ℝ L₂ ⟨b₁ j, h (coe_mem _)⟩ i)

/--
A more general version of `covolume_div_covolume_eq_relIndex`;
see the `Naming conventions` section in the introduction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ea7846d49f9b471740e48867069f6a6e43c1cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
