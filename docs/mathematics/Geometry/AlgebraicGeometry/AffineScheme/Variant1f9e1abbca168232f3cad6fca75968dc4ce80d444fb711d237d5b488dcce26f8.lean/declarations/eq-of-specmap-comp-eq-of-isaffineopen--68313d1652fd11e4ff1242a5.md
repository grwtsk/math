# eq_of_SpecMap_comp_eq_of_isAffineOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df29de16-6e97-1d33-fe7e-7e1fb3929e02",
  "kind": "lemma",
  "lexical_name": "eq_of_SpecMap_comp_eq_of_isAffineOpen",
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
  "slug": "eq-of-specmap-comp-eq-of-isaffineopen--68313d1652fd11e4ff1242a5",
  "source": {
    "blob": "0a0305ec46f99a3963a025fcdc52db6af41c9c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1095,
    "line": 1074,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68313d1652fd11e4ff1242a537d5b7b4ea7bbb9f87797d479e51ab72e01d8796",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df29de16-6e97-1d33-fe7e-7e1fb3929e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1074–1095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_SpecMap_comp_eq_of_isAffineOpen {R S : CommRingCat} {X : Scheme}
    (φ : R ⟶ S) (hφ : Function.Injective φ)
    {f g : Spec R ⟶ X} (U : X.Opens) (hU : IsAffineOpen U) (hUf : f ⁻¹ᵁ U = ⊤) (hUg : g ⁻¹ᵁ U = ⊤)
    (H : Spec.map φ ≫ f = Spec.map φ ≫ g) : f = g := by
  have : Mono φ := ConcreteCategory.mono_of_injective _ hφ
  rw [← IsOpenImmersion.lift_fac U.ι f (by simpa [Set.range_subset_iff] using fun x hx ↦ hUf.ge hx),
    ← IsOpenImmersion.lift_fac U.ι g (by simpa [Set.range_subset_iff] using fun x hx ↦ hUg.ge hx)]
  congr 1
  rw [← cancel_mono hU.isoSpec.hom, ← Spec.homEquiv.injective.eq_iff,
    ← cancel_mono φ, ← Spec.map_injective.eq_iff]
  simp [← cancel_mono U.ι, H]

section ZeroLocus

namespace Scheme

open ConcreteCategory

variable (X : Scheme.{u})

/-- On a scheme `X`, the preimage of the zero locus of the prime spectrum
of `Γ(X, ⊤)` under `X.toSpecΓ : X ⟶ Spec Γ(X, ⊤)` agrees with the associated zero locus on `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant1f9e1abbca168232f3cad6fca75968dc4ce80d444fb711d237d5b488dcce26f8.lean#L1074).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0305ec46f99a3963a025fcdc52db6af41c9c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
