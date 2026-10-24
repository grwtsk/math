# InjectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85697ac23936b1279673c5902022805dfe0d0d0b70f7199c6893bed65f545123",
  "kind": "structure",
  "lexical_name": "InjectiveResolution",
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
  "slug": "injectiveresolution--e9f1ea5d152b1ecef025add0",
  "source": {
    "blob": "351b284b0641ef098afc6b699dc9c9041952e6bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9f1ea5d152b1ecef025add0f37e2e86c668035b79b048a54260e63c88bf2131",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85697ac23936b1279673c5902022805dfe0d0d0b70f7199c6893bed65f545123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InjectiveResolution (Z : C) where
  /-- the cochain complex involved in the resolution -/
  cocomplex : CochainComplex C ℕ
  /-- the cochain complex must be degreewise injective -/
  injective : ∀ n, Injective (cocomplex.X n) := by infer_instance
  /-- the cochain complex must have homology -/
  [hasHomology : ∀ i, cocomplex.HasHomology i]
  /-- the morphism from the single cochain complex with `Z` in degree `0` -/
  ι : (single₀ C).obj Z ⟶ cocomplex
  /-- the morphism from the single cochain complex with `Z` in degree `0` is a quasi-isomorphism -/
  quasiIso : QuasiIso ι := by infer_instance

open InjectiveResolution in
attribute [instance] injective hasHomology InjectiveResolution.quasiIso

/-- An object admits an injective resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351b284b0641ef098afc6b699dc9c9041952e6bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
