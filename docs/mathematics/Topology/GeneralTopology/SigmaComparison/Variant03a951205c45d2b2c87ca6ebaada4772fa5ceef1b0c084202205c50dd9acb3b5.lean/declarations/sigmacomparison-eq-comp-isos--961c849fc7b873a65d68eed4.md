# sigmaComparison_eq_comp_isos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c242ca3a-6452-24fa-8761-17e0fb0a2c98",
  "kind": "theorem",
  "lexical_name": "sigmaComparison_eq_comp_isos",
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
  "slug": "sigmacomparison-eq-comp-isos--961c849fc7b873a65d68eed4",
  "source": {
    "blob": "2f06e8b1100c678a63a6f9aa3594b069f319b077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961c849fc7b873a65d68eed4a9f1b036fe4810bd9dc9b4be7296b87d0ba1f003",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c242ca3a-6452-24fa-8761-17e0fb0a2c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmaComparison_eq_comp_isos : sigmaComparison X σ =
    (X.mapIso (opCoproductIsoProduct'
      (finiteCoproduct.isColimit.{u, u} (fun a ↦ of P (σ a)))
      (productIsProduct fun x ↦ Opposite.op (of P (σ x))))).hom ≫
    (PreservesProduct.iso X fun a ↦ ⟨of P (σ a)⟩).hom ≫
    (Types.productIso.{u, max u w} fun a ↦ X.obj ⟨of P (σ a)⟩).hom := by
  ext x a
  simp only [Cofan.mk_pt, Fan.mk_pt, Functor.mapIso_hom,
    PreservesProduct.iso_hom, types_comp_apply, Types.productIso_hom_comp_eval_apply]
  have := congrFun (piComparison_comp_π X (fun a ↦ ⟨of P (σ a)⟩) a)
  simp only [types_comp_apply] at this
  rw [this, ← FunctorToTypes.map_comp_apply]
  simp only [sigmaComparison]
  apply congrFun
  congr 2
  rw [← opCoproductIsoProduct_inv_comp_ι]
  simp only [coe_of, Opposite.unop_op, unop_comp, Quiver.Hom.unop_op, Category.assoc]
  simp only [opCoproductIsoProduct, ← unop_comp, opCoproductIsoProduct'_comp_self]
  erw [IsColimit.fac]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f06e8b1100c678a63a6f9aa3594b069f319b077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
