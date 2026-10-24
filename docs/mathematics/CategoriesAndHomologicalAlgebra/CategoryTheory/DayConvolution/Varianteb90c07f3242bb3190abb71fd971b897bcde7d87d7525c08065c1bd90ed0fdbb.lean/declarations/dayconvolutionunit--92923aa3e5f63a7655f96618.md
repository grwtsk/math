# DayConvolutionUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c5f60baf2f32696a5195fdbca4baa019fe89f3293bcb772f2b32384b00f579d",
  "kind": "class",
  "lexical_name": "DayConvolutionUnit",
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
  "slug": "dayconvolutionunit--92923aa3e5f63a7655f96618",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 435,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92923aa3e5f63a7655f966185f0fe1eb00d44c4ff6cf1b0e2491875d229240de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c5f60baf2f32696a5195fdbca4baa019fe89f3293bcb772f2b32384b00f579d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DayConvolutionUnit (F : C ⥤ V) where
  /-- A "canonical" structure map `𝟙_ V ⟶ F.obj (𝟙_ C)` that defines a natural transformation
  `fromPUnit (𝟙_ V) ⟶ fromPUnit (𝟙_ C) ⋙ F`. -/
  can : 𝟙_ V ⟶ F.obj (𝟙_ C)
  /-- The canonical map `𝟙_ V ⟶ F.obj (𝟙_ C)` exhibits `F` as a pointwise left Kan extension
  of `fromPUnit.{0} 𝟙_ V` along `fromPUnit.{0} 𝟙_ C`. -/
  isPointwiseLeftKanExtensionCan : Functor.LeftExtension.mk F
    ({ app _ := can } : Functor.fromPUnit.{0} (𝟙_ V) ⟶
      Functor.fromPUnit.{0} (𝟙_ C) ⋙ F) |>.IsPointwiseLeftKanExtension

namespace DayConvolutionUnit

variable (U : C ⥤ V) [DayConvolutionUnit U]
open scoped DayConvolution
open ExternalProduct CategoryTheory.Functor

/-- A shorthand for the natural transformation of functors out of PUnit defined by
the canonical morphism `𝟙_ V ⟶ U.obj (𝟙_ C)` when `U` is a unit for Day convolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
