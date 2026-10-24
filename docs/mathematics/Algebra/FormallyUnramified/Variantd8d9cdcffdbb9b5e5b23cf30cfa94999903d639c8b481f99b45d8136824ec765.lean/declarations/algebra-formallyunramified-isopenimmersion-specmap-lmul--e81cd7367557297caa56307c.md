# Algebra.FormallyUnramified.isOpenImmersion_SpecMap_lmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad8973e7315dcd414ed185ef2c5af46b165bd11301584f0be1133347a0af101c",
  "kind": "instance",
  "lexical_name": "Algebra.FormallyUnramified.isOpenImmersion_SpecMap_lmul",
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
  "slug": "algebra-formallyunramified-isopenimmersion-specmap-lmul--e81cd7367557297caa56307c",
  "source": {
    "blob": "7cae1f37c7a807e19f1382e90c51d11389c0f56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e81cd7367557297caa56307cc8c7670380a4ddd3977fa57b239fb0020cfbe37a",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad8973e7315dcd414ed185ef2c5af46b165bd11301584f0be1133347a0af101c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra.FormallyUnramified.isOpenImmersion_SpecMap_lmul {R S : Type u} [CommRing R]
    [CommRing S] [Algebra R S] [Algebra.FormallyUnramified R S] [Algebra.EssFiniteType R S] :
    IsOpenImmersion (Spec.map (CommRingCat.ofHom (TensorProduct.lmul' R (S := S)).toRingHom)) := by
  rw [isOpenImmersion_SpecMap_iff_of_surjective _ (fun x ↦ ⟨1 ⊗ₜ x, by simp⟩)]
  apply (Ideal.isIdempotentElem_iff_of_fg _ (KaehlerDifferential.ideal_fg R S)).mp
  apply (Ideal.cotangent_subsingleton_iff _).mp
  exact inferInstanceAs <| Subsingleton Ω[S⁄R]

namespace AlgebraicGeometry

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

/-- A morphism of schemes `f : X ⟶ Y` is formally unramified if for each affine `U ⊆ Y` and
`V ⊆ f ⁻¹' U`, The induced map `Γ(Y, U) ⟶ Γ(X, V)` is formally unramified.

See `FormallyUnramified.hom_ext` and `FormallyUnramified.of_hom_ext`
for the infinitesimal lifting criterion. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cae1f37c7a807e19f1382e90c51d11389c0f56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
