# descHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1a4c14f59eaaa833331523b3e2ac3be485ef10dd8bb20abeeafeebfdac8b9ff",
  "kind": "def",
  "lexical_name": "descHomotopy",
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
  "slug": "deschomotopy--bba363991dda9e785b72ba2e",
  "source": {
    "blob": "7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 418,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bba363991dda9e785b72ba2ee4a085db3dcf79a9c3990149def9a7f625e88dce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1a4c14f59eaaa833331523b3e2ac3be485ef10dd8bb20abeeafeebfdac8b9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def descHomotopy {K : CochainComplex C ℤ} (f₁ f₂ : mappingCone φ ⟶ K)
    (γ₁ : Cochain F K (-2)) (γ₂ : Cochain G K (-1))
    (h₁ : (inl φ).comp (Cochain.ofHom f₁) (add_zero (-1)) =
      δ (-2) (-1) γ₁ + (Cochain.ofHom φ).comp γ₂ (zero_add (-1)) +
      (inl φ).comp (Cochain.ofHom f₂) (add_zero (-1)))
    (h₂ : Cochain.ofHom (inr φ ≫ f₁) = δ (-1) 0 γ₂ + Cochain.ofHom (inr φ ≫ f₂)) :
    Homotopy f₁ f₂ :=
  (Cochain.equivHomotopy f₁ f₂).symm ⟨descCochain φ γ₁ γ₂ (by simp), by
    simp only [Cochain.ofHom_comp] at h₂
    simp [ext_cochain_from_iff _ _ _ (neg_add_cancel 1),
      δ_descCochain _ _ _ _ _ (neg_add_cancel 1), h₁, h₂]⟩

section

variable {K : CochainComplex C ℤ} {n m : ℤ}

/-- Given `φ : F ⟶ G`, this is the cochain in `Cochain (mappingCone φ) K n` that is
constructed from two cochains `α : Cochain F K m` (with `m + 1 = n`) and `β : Cochain F K n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant4db6d463c22f0a35187a4f0d2c2868cd3142d8b1671fa63938476ae163b096b7.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd925f7157706b3a4a8db9bc5fa33bc3d9698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
