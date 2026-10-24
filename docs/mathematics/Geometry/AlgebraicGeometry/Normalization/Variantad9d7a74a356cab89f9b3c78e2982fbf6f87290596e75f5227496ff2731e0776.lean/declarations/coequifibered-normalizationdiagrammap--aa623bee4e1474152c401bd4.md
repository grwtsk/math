# coequifibered_normalizationDiagramMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c998cb5-b51b-9f46-332f-728c770fad95",
  "kind": "lemma",
  "lexical_name": "coequifibered_normalizationDiagramMap",
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
  "slug": "coequifibered-normalizationdiagrammap--aa623bee4e1474152c401bd4",
  "source": {
    "blob": "5ae53fc5e8b129ad008bb61b2d33ac664b547236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 86,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa623bee4e1474152c401bd4547d431ca5fde2ce188144330d29176c4ee61ced",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c998cb5-b51b-9f46-332f-728c770fad95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coequifibered_normalizationDiagramMap :
    ((toOpensFunctor Y).op.whiskerLeft f.normalizationDiagramMap).Coequifibered := by
  refine coequifibered_iff_forall_isLocalizationAway.mpr fun U r ↦ ?_
  let : Algebra Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1) := (f.app U.1).hom.toAlgebra
  let : Algebra Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r) :=
    (f.app (U.basicOpen r).1).hom.toAlgebra
  let : Algebra (integralClosure Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1))
      (integralClosure Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r)) :=
    ((normalizationDiagram f).map (homOfLE (Y.basicOpen_le r)).op).hom.toAlgebra
  let inst : Algebra Γ(X, f ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ Y.basicOpen r) :=
    (X.presheaf.map (homOfLE (f.preimage_mono (Y.basicOpen_le r))).op).hom.toAlgebra
  have : IsLocalization.Away r Γ(Y, Y.basicOpen r) :=
    U.2.isLocalization_basicOpen _
  have : IsLocalization.Away ((algebraMap ↑Γ(Y, U.1) ↑Γ(X, f ⁻¹ᵁ U.1)) r)
      Γ(X, f ⁻¹ᵁ Y.basicOpen r) := by
    let : Algebra Γ(X, f ⁻¹ᵁ U.1) Γ(X, X.basicOpen (f.app _ r)) :=
      (X.presheaf.map (homOfLE (X.basicOpen_le _)).op).hom.toAlgebra
    dsimp +instances [inst]
    rw! (castMode := .all) [f.preimage_basicOpen r]
    exact isLocalization_basicOpen_of_qcqs (f.isCompact_preimage U.2.isCompact)
        (f.isQuasiSeparated_preimage U.2.isQuasiSeparated) (f.app _ r)
  change IsLocalization.Away ((algebraMap Γ(Y, U.1) (integralClosure Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1))) r)
    (integralClosure Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r))
  let : Algebra ↑Γ(Y, U.1) ↑Γ(X, f ⁻¹ᵁ Y.basicOpen r) :=
    (f.appLE _ _ (f.preimage_mono (Y.basicOpen_le _))).hom.toAlgebra
  have : IsScalarTower Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ Y.basicOpen r) := .of_algebraMap_eq' rfl
  have : IsScalarTower Γ(Y, U.1) Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r) :=
    .of_algebraMap_eq' <| by
      simp only [RingHom.algebraMap_toAlgebra, ← CommRingCat.hom_comp, Scheme.Hom.app_eq_appLE,
        Scheme.Hom.map_appLE, AffineZariskiSite.basicOpen]
  have : IsScalarTower (integralClosure Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1))
    (integralClosure Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r))
    Γ(X, f ⁻¹ᵁ Y.basicOpen r) := .of_algebraMap_eq' rfl
  have : IsScalarTower Γ(Y, U.1) (integralClosure Γ(Y, U.1) Γ(X, f ⁻¹ᵁ U.1))
    (integralClosure Γ(Y, Y.basicOpen r) Γ(X, f ⁻¹ᵁ Y.basicOpen r)) := .of_algebraMap_eq' rfl
  exact IsLocalization.Away.integralClosure r

/-- The diagram of affine schemes that we glue to form the normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae53fc5e8b129ad008bb61b2d33ac664b547236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
