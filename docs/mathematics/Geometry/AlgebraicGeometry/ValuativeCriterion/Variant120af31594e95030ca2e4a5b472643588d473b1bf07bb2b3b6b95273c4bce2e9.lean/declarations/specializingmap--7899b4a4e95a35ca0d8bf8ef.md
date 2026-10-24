# specializingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d124f8631d739ffa31a604cb2b42f59e7f7739e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f471d0b-e413-9872-ce3a-d77650b717d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b21818c-431d-0e42-eab0-c59584ffd838",
  "kind": "lemma",
  "lexical_name": "specializingMap",
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
  "slug": "specializingmap--7899b4a4e95a35ca0d8bf8ef",
  "source": {
    "blob": "3d124f8631d739ffa31a604cb2b42f59e7f7739e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 110,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7899b4a4e95a35ca0d8bf8ef1b527bb6759397bef0c495fca781cd494edb4c50",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b21818c-431d-0e42-eab0-c59584ffd838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma specializingMap (H : ValuativeCriterion.Existence f) :
    SpecializingMap f.base := by
  intro x' y h
  let stalk_y_to_residue_x' : Y.presheaf.stalk y ⟶ X.residueField x' :=
    Y.presheaf.stalkSpecializes h ≫ f.stalkMap x' ≫ X.residue x'
  obtain ⟨A, hA, hA_local⟩ := exists_factor_valuationRing stalk_y_to_residue_x'.hom
  let stalk_y_to_A : Y.presheaf.stalk y ⟶ .of A :=
    CommRingCat.ofHom (stalk_y_to_residue_x'.hom.codRestrict _ hA)
  have w : X.fromSpecResidueField x' ≫ f =
      Spec.map (CommRingCat.ofHom (algebraMap A (X.residueField x'))) ≫
        Spec.map stalk_y_to_A ≫ Y.fromSpecStalk y := by
    rw [Scheme.fromSpecResidueField, Category.assoc, ← Scheme.Spec_map_stalkMap_fromSpecStalk,
      ← Scheme.Spec_map_stalkSpecializes_fromSpecStalk h]
    simp_rw [← Spec.map_comp_assoc]
    rfl
  obtain ⟨l, hl₁, hl₂⟩ := (H { R := A, K := X.residueField x', commSq := ⟨w⟩, .. }).exists_lift
  dsimp only at hl₁ hl₂
  refine ⟨l.base (closedPoint A), ?_, ?_⟩
  · simp_rw [← Scheme.fromSpecResidueField_apply x' (closedPoint (X.residueField x')), ← hl₁]
    exact (specializes_closedPoint _).map l.base.hom.2
  · rw [← Scheme.comp_base_apply, hl₂]
    simp only [Scheme.comp_coeBase, TopCat.coe_comp, Function.comp_apply]
    have : (Spec.map stalk_y_to_A).base (closedPoint A) = closedPoint (Y.presheaf.stalk y) :=
      comap_closedPoint (S := A) (stalk_y_to_residue_x'.hom.codRestrict A.toSubring hA)
    rw [this, Y.fromSpecStalk_closedPoint]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant120af31594e95030ca2e4a5b472643588d473b1bf07bb2b3b6b95273c4bce2e9.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d124f8631d739ffa31a604cb2b42f59e7f7739e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
