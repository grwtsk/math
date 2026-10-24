# comapStructureSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ac8615618057b3112c3d0b4ef826d89f1abbff0e6119dd067b5d7d3b08a557c",
  "kind": "def",
  "lexical_name": "comapStructureSheaf",
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
  "slug": "comapstructuresheaf--9121532463144a322aba55d6",
  "source": {
    "blob": "f5f37f58f3c6526946161b8be95e4e339a2fa164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 82,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9121532463144a322aba55d65db9ffabd4069e15180ee27ce94350334c895972",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ac8615618057b3112c3d0b4ef826d89f1abbff0e6119dd067b5d7d3b08a557c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def comapStructureSheaf :
    (Proj.structureSheaf 𝒜).1.obj (.op U) →+* (Proj.structureSheaf ℬ).1.obj (.op V) where
  toFun s := ⟨comapStructureSheafFun _ _ _ _ hUV s.1,
      isLocallyFraction_comapStructureSheafFun _ _ _ _ hUV _ s.2⟩
  map_one' := by ext; simp [comapStructureSheafFun]
  map_zero' := by ext; simp [comapStructureSheafFun]
  map_add' x y := by ext; simp [comapStructureSheafFun]
  map_mul' x y := by ext; simp [comapStructureSheafFun]

end Proj

end universe_polymorphic

section universe_monomorphic

namespace Proj

variable {A B C σ τ ψ : Type u} [CommRing A] [SetLike σ A] [AddSubgroupClass σ A]
  [CommRing B] [SetLike τ B] [AddSubgroupClass τ B]
  [CommRing C] [SetLike ψ C] [AddSubgroupClass ψ C]
  {𝒜 : ℕ → σ} {ℬ : ℕ → τ} {𝒞 : ℕ → ψ} [GradedRing 𝒜] [GradedRing ℬ] [GradedRing 𝒞]
  (f : 𝒜 →+*ᵍ ℬ) (g : ℬ →+*ᵍ 𝒞) (hf : ℬ₊ ≤ 𝒜₊.map f) (hg : 𝒞₊ ≤ ℬ₊.map g)

set_option backward.isDefEq.respectTransparency.types false in
/-- The underlying map of `Proj ℬ ⟶ Proj 𝒜` on the level of sheafed spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f37f58f3c6526946161b8be95e4e339a2fa164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
