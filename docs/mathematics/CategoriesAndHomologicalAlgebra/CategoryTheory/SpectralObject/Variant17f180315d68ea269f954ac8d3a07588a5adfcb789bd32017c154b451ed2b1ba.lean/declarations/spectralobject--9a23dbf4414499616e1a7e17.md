# SpectralObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:435fc738803d6f028103b00569035e7e5facf1081d51b3a3ecda4520f6e58038",
  "kind": "structure",
  "lexical_name": "SpectralObject",
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
  "slug": "spectralobject--9a23dbf4414499616e1a7e17",
  "source": {
    "blob": "3a70a7e43b10658f52750010d47b0b1ff6bec02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a23dbf4414499616e1a7e174a4a5ef9e208d8cb6b83042884f4c65eff3b876a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:435fc738803d6f028103b00569035e7e5facf1081d51b3a3ecda4520f6e58038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpectralObject where
  /-- A functor from `ComposableArrows ι 1` to the pretriangulated category. -/
  ω₁ : ComposableArrows ι 1 ⥤ C
  /-- The connecting homomorphism of the spectral object. -/
  δ' : functorArrows ι 1 2 2 ⋙ ω₁ ⟶ functorArrows ι 0 1 2 ⋙ ω₁ ⋙ shiftFunctor C (1 : ℤ)
  distinguished' (D : ComposableArrows ι 2) :
    Triangle.mk (ω₁.map ((mapFunctorArrows ι 0 1 0 2 2).app D))
      (ω₁.map ((mapFunctorArrows ι 0 2 1 2 2).app D)) (δ'.app D) ∈ distTriang C

namespace SpectralObject

variable {C ι} (X : SpectralObject C ι)

/-- The functorial (distinguished) triangle attached to a spectral object in
a pretriangulated category. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a70a7e43b10658f52750010d47b0b1ff6bec02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
