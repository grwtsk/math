# normalizationDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7081040fdc078d0d118c9f220a6e0e03ec37d6b64f209efc5e1e2dd7e0dc392",
  "kind": "def",
  "lexical_name": "normalizationDiagram",
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
  "slug": "normalizationdiagram--dfe2315e46786dd0b94ca5cb",
  "source": {
    "blob": "5ae53fc5e8b129ad008bb61b2d33ac664b547236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 53,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfe2315e46786dd0b94ca5cbd1a1db820fb339d7b511ad33460ab1ca0b31efa9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7081040fdc078d0d118c9f220a6e0e03ec37d6b64f209efc5e1e2dd7e0dc392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizationDiagram : Y.Opensᵒᵖ ⥤ CommRingCat where
  obj U :=
    letI := (f.app U.unop).hom.toAlgebra
    .of (integralClosure Γ(Y, U.unop) Γ(X, f ⁻¹ᵁ U.unop))
  map {V U} i :=
    CommRingCat.ofHom ((X.presheaf.map (homOfLE (f.preimage_mono i.unop.le)).op).hom.restrict
      _ _ fun x hx ↦ by
      obtain ⟨U, rfl⟩ := Opposite.op_surjective U
      obtain ⟨V, rfl⟩ := Opposite.op_surjective V
      algebraize [(f.app U).hom, (f.app V).hom, (Y.presheaf.map i).hom,
        (X.presheaf.map (homOfLE (f.preimage_mono i.unop.le)).op).hom,
        (f.appLE V (f ⁻¹ᵁ U) (f.preimage_mono i.unop.le)).hom]
      have : IsScalarTower Γ(Y, V) Γ(Y, U) Γ(X, f ⁻¹ᵁ U) := .of_algebraMap_eq' <| by
        simp [RingHom.algebraMap_toAlgebra, ← CommRingCat.hom_comp]; rfl
      have : IsScalarTower Γ(Y, V) Γ(X, f ⁻¹ᵁ V) Γ(X, f ⁻¹ᵁ U) := .of_algebraMap_eq' rfl
      exact (hx.map (IsScalarTower.toAlgHom Γ(Y, V) _ Γ(X, f ⁻¹ᵁ U))).tower_top)
  map_id U := by simp; rfl
  map_comp i j := by
    simp only [← CommRingCat.ofHom_comp]
    rw [← homOfLE_comp (f.preimage_mono j.unop.le) (f.preimage_mono i.unop.le), op_comp]
    simp_rw [X.presheaf.map_comp]
    rfl

/-- The inclusion from the structure presheaf of `Y` to the integral closure of `Y` in `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae53fc5e8b129ad008bb61b2d33ac664b547236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
