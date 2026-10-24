# Scheme.pullback_map_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:615bce852dc3ed67ec2fcbf1546654562ffd7600e5dccd61fb1cb9c0f498b877",
  "kind": "instance",
  "lexical_name": "Scheme.pullback_map_isOpenImmersion",
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
  "slug": "scheme-pullback-map-isopenimmersion--ba6f6f26a078dd6b0e557154",
  "source": {
    "blob": "3d24fc40b93b703044deb4ca4f8c3b2615a593e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 608,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba6f6f26a078dd6b0e5571543ea7aa592d6ed5aa02225148073feab3fadea210",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:615bce852dc3ed67ec2fcbf1546654562ffd7600e5dccd61fb1cb9c0f498b877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Scheme.pullback_map_isOpenImmersion {X Y S X' Y' S' : Scheme}
    (f : X ⟶ S) (g : Y ⟶ S) (f' : X' ⟶ S') (g' : Y' ⟶ S')
    (i₁ : X ⟶ X') (i₂ : Y ⟶ Y') (i₃ : S ⟶ S') (e₁ : f ≫ i₃ = i₁ ≫ f') (e₂ : g ≫ i₃ = i₂ ≫ g')
    [IsOpenImmersion i₁] [IsOpenImmersion i₂] [Mono i₃] :
    IsOpenImmersion (pullback.map f g f' g' i₁ i₂ i₃ e₁ e₂) := by
  rw [pullback_map_eq_pullbackFstFstIso_inv]
  infer_instance

section Spec

variable (R S T : Type u) [CommRing R] [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]

open TensorProduct Algebra.TensorProduct CommRingCat RingHomClass

/-- The isomorphism between the fiber product of two schemes `Spec S` and `Spec T`
over a scheme `Spec R` and the `Spec` of the tensor product `S ⊗[R] T`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variantf8d01b94bd769f3358405db3de6b23fdcb550b24428e719957b864343f0e733e.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d24fc40b93b703044deb4ca4f8c3b2615a593e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
