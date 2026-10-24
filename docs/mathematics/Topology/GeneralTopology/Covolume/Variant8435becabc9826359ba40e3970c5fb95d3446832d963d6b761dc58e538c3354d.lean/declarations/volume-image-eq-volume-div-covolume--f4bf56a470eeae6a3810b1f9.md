# volume_image_eq_volume_div_covolume'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a80d79a-b342-77ab-bd6b-56a3e863e0c9",
  "kind": "theorem",
  "lexical_name": "volume_image_eq_volume_div_covolume'",
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
  "slug": "volume-image-eq-volume-div-covolume--f4bf56a470eeae6a3810b1f9",
  "source": {
    "blob": "27d6e0d0b791b553ec941145a34af57a38708e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4bf56a470eeae6a3810b1f99725ebf6a166383f58fbfc972de5c53552181ec7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a80d79a-b342-77ab-bd6b-56a3e863e0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_image_eq_volume_div_covolume' {E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    (L : Submodule ℤ E) [DiscreteTopology L] [IsZLattice ℝ L] {ι : Type*} [Fintype ι]
    (b : Basis ι ℤ L) {s : Set E} (hs : NullMeasurableSet s) :
    volume ((b.ofZLatticeBasis ℝ).equivFun '' s) = volume s / ENNReal.ofReal (covolume L) := by
  classical
  let e : Fin (finrank ℝ E) ≃ ι :=
    Fintype.equivOfCardEq (by rw [Fintype.card_fin, finrank_eq_card_basis (b.ofZLatticeBasis ℝ)])
  let f := (EuclideanSpace.equiv ι ℝ).symm.trans
    ((stdOrthonormalBasis ℝ E).reindex e).repr.toContinuousLinearEquiv.symm
  have hf : MeasurePreserving f :=
    ((stdOrthonormalBasis ℝ E).reindex e).measurePreserving_repr_symm.comp
      (EuclideanSpace.volume_preserving_measurableEquiv ι).symm
  rw [← hf.measure_preimage hs, ← (covolume_comap L volume volume hf),
    ← volume_image_eq_volume_div_covolume (ZLattice.comap ℝ L f.toLinearMap)
    (b.ofZLatticeComap ℝ L f.toLinearEquiv), Basis.ofZLatticeBasis_comap,
    ← f.image_symm_eq_preimage, ← Set.image_comp]
  simp only [Basis.equivFun_apply, ContinuousLinearEquiv.symm_toLinearEquiv, Basis.map_equivFun,
    LinearEquiv.symm_symm, Function.comp_apply, LinearEquiv.trans_apply,
    ContinuousLinearEquiv.coe_toLinearEquiv, ContinuousLinearEquiv.apply_symm_apply]

end Basic

namespace covolume

section General

open Filter Fintype Pointwise Topology BoxIntegral Bornology

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {L : Submodule ℤ E} [DiscreteTopology L] [IsZLattice ℝ L]
variable {ι : Type*} [Fintype ι] (b : Basis ι ℤ L)

/-- A version of `ZLattice.covolume.tendsto_card_div_pow` for the general case;
see the `Naming convention` section in the introduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d6e0d0b791b553ec941145a34af57a38708e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
