# irreducibleSpace_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bee270ba6ea4061b013e95283515be94dc57b06af8e88654ca0a82fab7925b0",
  "kind": "instance",
  "lexical_name": "irreducibleSpace_of_isIntegral",
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
  "slug": "irreduciblespace-of-isintegral--ef0afd47bb727cbbcb3992d4",
  "source": {
    "blob": "41e1c8984029eda620242bb284655f4e5074b953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 220,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef0afd47bb727cbbcb3992d49197c0eb263096a39921d46d7aa76d443dbe4d8a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bee270ba6ea4061b013e95283515be94dc57b06af8e88654ca0a82fab7925b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance irreducibleSpace_of_isIntegral [IsIntegral X] : IrreducibleSpace X := by
  by_contra H
  replace H : ¬IsPreirreducible (⊤ : Set X) := fun h =>
    H { toPreirreducibleSpace := ⟨h⟩
        toNonempty := inferInstance }
  simp_rw [isPreirreducible_iff_isClosed_union_isClosed, not_forall, not_or] at H
  rcases H with ⟨S, T, hS, hT, h₁, h₂, h₃⟩
  rw [Set.not_top_subset] at h₂ h₃
  haveI : Nonempty (⟨Sᶜ, hS.1⟩ : X.Opens) := ⟨⟨_, h₂.choose_spec⟩⟩
  haveI : Nonempty (⟨Tᶜ, hT.1⟩ : X.Opens) := ⟨⟨_, h₃.choose_spec⟩⟩
  haveI : Nonempty (⟨Sᶜ, hS.1⟩ ⊔ ⟨Tᶜ, hT.1⟩ : X.Opens) := ⟨⟨_, Or.inl h₂.choose_spec⟩⟩
  let e : Γ(X, _) ≅ CommRingCat.of _ :=
    (X.sheaf.isProductOfDisjoint ⟨_, hS.1⟩ ⟨_, hT.1⟩ ?_).conePointUniqueUpToIso
      (CommRingCat.prodFanIsLimit _ _)
  · have : IsDomain (Γ(X, ⟨Sᶜ, hS.1⟩) × Γ(X, ⟨Tᶜ, hT.1⟩)) :=
      e.symm.commRingCatIsoToRingEquiv.toMulEquiv.isDomain _
    exact false_of_nontrivial_of_product_domain Γ(X, ⟨Sᶜ, hS.1⟩) Γ(X, ⟨Tᶜ, hT.1⟩)
  · ext x
    constructor
    · rintro ⟨hS, hT⟩
      rcases h₁ (show x ∈ ⊤ by trivial) with h | h
      exacts [hS h, hT h]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant0dd44de05a3840f15248753f799126e72821ccdaf200b411d27eb83c7c4985f4.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e1c8984029eda620242bb284655f4e5074b953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
