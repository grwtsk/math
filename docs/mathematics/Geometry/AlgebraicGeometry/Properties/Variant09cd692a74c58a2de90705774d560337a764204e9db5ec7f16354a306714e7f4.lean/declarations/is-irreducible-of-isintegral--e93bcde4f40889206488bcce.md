# is_irreducible_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f32b8ec055ab05132cd2e37aff3823d891fd17398e1b77701f63196ffaecfd4e",
  "kind": "instance",
  "lexical_name": "is_irreducible_of_isIntegral",
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
  "slug": "is-irreducible-of-isintegral--e93bcde4f40889206488bcce",
  "source": {
    "blob": "ed6d4a8066b68c57d9108f1b862dd6bff0a98774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 227,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e93bcde4f40889206488bcce4a26b62371fd5f76139a18cb851b68c96b915ad5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f32b8ec055ab05132cd2e37aff3823d891fd17398e1b77701f63196ffaecfd4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance is_irreducible_of_isIntegral [IsIntegral X] : IrreducibleSpace X.carrier := by
  by_contra H
  replace H : ¬IsPreirreducible (⊤ : Set X.carrier) := fun h =>
    H { toPreirreducibleSpace := ⟨h⟩
        toNonempty := inferInstance }
  simp_rw [isPreirreducible_iff_closed_union_closed, not_forall, not_or] at H
  rcases H with ⟨S, T, hS, hT, h₁, h₂, h₃⟩
  erw [not_forall] at h₂ h₃
  simp_rw [not_forall] at h₂ h₃
  haveI : Nonempty (⟨Sᶜ, hS.1⟩ : Opens X.carrier) := ⟨⟨_, h₂.choose_spec.choose_spec⟩⟩
  haveI : Nonempty (⟨Tᶜ, hT.1⟩ : Opens X.carrier) := ⟨⟨_, h₃.choose_spec.choose_spec⟩⟩
  haveI : Nonempty (⟨Sᶜ, hS.1⟩ ⊔ ⟨Tᶜ, hT.1⟩ : Opens X.carrier) :=
    ⟨⟨_, Or.inl h₂.choose_spec.choose_spec⟩⟩
  let e : X.presheaf.obj _ ≅ CommRingCat.of _ :=
    (X.sheaf.isProductOfDisjoint ⟨_, hS.1⟩ ⟨_, hT.1⟩ ?_).conePointUniqueUpToIso
      (CommRingCat.prodFanIsLimit _ _)
  apply (config := { allowSynthFailures := true }) false_of_nontrivial_of_product_domain
  · exact e.symm.commRingCatIsoToRingEquiv.toMulEquiv.isDomain _
  · apply X.toLocallyRingedSpace.component_nontrivial
  · apply X.toLocallyRingedSpace.component_nontrivial
  · ext x
    constructor
    · rintro ⟨hS, hT⟩
      cases' h₁ (show x ∈ ⊤ by trivial) with h h
      exacts [hS h, hT h]
    · intro x
      refine' x.rec (by contradiction)
#align algebraic_geometry.is_irreducible_of_is_integral AlgebraicGeometry.is_irreducible_of_isIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed6d4a8066b68c57d9108f1b862dd6bff0a98774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
