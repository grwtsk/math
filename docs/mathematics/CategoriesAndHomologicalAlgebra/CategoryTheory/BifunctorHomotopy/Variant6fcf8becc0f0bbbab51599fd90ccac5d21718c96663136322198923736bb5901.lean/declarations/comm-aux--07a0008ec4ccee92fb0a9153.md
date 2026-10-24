# comm₁_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69cfb9bc-60d6-d363-575f-4566818d2872",
  "kind": "lemma",
  "lexical_name": "comm₁_aux",
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
  "slug": "comm-aux--07a0008ec4ccee92fb0a9153",
  "source": {
    "blob": "d3b6b0179a33202d3df4987565f2973c8fef4883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07a0008ec4ccee92fb0a915323b92e988260fd9fdb6ff620951226cc823e4f25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69cfb9bc-60d6-d363-575f-4566818d2872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comm₁_aux {i₁ i₁' : I₁} (hi₁ : c₁.Rel i₁ i₁') {i₂ i₂' : I₂} (hi₂ : c₂.Rel i₂ i₂') (j : J)
    (hj : ComplexShape.π c₁ c₂ c (i₁', i₂) = j) :
    ComplexShape.ε₁ c₁ c₂ c (i₁, i₂) • (F.map (h₁.hom i₁' i₁)).app (K₂.X i₂) ≫
      (F.obj (L₁.X i₁)).map (f₂.f i₂) ≫
        (((F.mapBifunctorHomologicalComplex c₁ c₂).obj L₁).obj L₂).d₂ c i₁ i₂ j =
    -(((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).d₂ c i₁' i₂ (c.next j) ≫
      hom₁ h₁ f₂ F c (c.next j) j := by
  have hj' : ComplexShape.π c₁ c₂ c ⟨i₁, i₂'⟩ = j := by
    rw [← hj, ← ComplexShape.next_π₂ c₁ c i₁ hi₂, ComplexShape.next_π₁ c₂ c hi₁ i₂]
  rw [HomologicalComplex₂.d₂_eq _ _ _ hi₂ _ hj', HomologicalComplex₂.d₂_eq _ _ _ hi₂ _
        (by rw [← c.next_eq' (ComplexShape.rel_π₂ c₁ c i₁' hi₂), hj]),
    Linear.comp_units_smul, Linear.comp_units_smul, Linear.units_smul_comp, assoc,
    ιMapBifunctor_hom₁ _ _ _ _ _ _ _ _ _ _ (c₁.prev_eq' hi₁),
    ιMapBifunctorOrZero_eq _ _ _ _ _ _ _ hj',
    Linear.comp_units_smul, smul_smul, smul_smul,
    Functor.mapBifunctorHomologicalComplex_obj_obj_X_d,
    Functor.mapBifunctorHomologicalComplex_obj_obj_X_d,
    NatTrans.naturality_assoc, ComplexShape.ε₁_ε₂ c hi₁ hi₂, neg_mul, Units.neg_smul, neg_inj,
    smul_left_cancel_iff, ← Functor.map_comp_assoc, ← Functor.map_comp_assoc, f₂.comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant6fcf8becc0f0bbbab51599fd90ccac5d21718c96663136322198923736bb5901.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b6b0179a33202d3df4987565f2973c8fef4883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
