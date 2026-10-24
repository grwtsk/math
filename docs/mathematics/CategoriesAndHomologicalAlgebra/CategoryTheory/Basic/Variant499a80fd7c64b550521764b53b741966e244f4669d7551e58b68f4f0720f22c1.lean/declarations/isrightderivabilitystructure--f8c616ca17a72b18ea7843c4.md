# IsRightDerivabilityStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c0a292d66605440ea3d27e9283585292e00f4503c7372f250b409fb292f8633",
  "kind": "class",
  "lexical_name": "IsRightDerivabilityStructure",
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
  "slug": "isrightderivabilitystructure--f8c616ca17a72b18ea7843c4",
  "source": {
    "blob": "8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8c616ca17a72b18ea7843c4eed2e7e26d308bbd67b3bd40a74666fd3c4d1611",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c0a292d66605440ea3d27e9283585292e00f4503c7372f250b409fb292f8633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsRightDerivabilityStructure : Prop where
  hasRightResolutions : Φ.HasRightResolutions := by infer_instance
  /-- Do not use this field directly: use the more general
  `guitartExact_of_isRightDerivabilityStructure` instead,
  see also the lemma `isRightDerivabilityStructure_iff`. -/
  guitartExact' : TwoSquare.GuitartExact ((Φ.catCommSq W₁.Q W₂.Q).iso).hom

attribute [instance] IsRightDerivabilityStructure.hasRightResolutions
  IsRightDerivabilityStructure.guitartExact'

variable {D₁ D₂ : Type*} [Category D₁] [Category D₂] (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂)
  [L₁.IsLocalization W₁] [L₂.IsLocalization W₂] (F : D₁ ⥤ D₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
