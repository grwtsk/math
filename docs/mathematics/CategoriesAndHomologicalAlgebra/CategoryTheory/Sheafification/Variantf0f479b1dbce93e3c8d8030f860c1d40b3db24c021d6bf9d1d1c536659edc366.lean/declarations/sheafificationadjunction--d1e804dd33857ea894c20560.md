# sheafificationAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c436b24fb42458bff8cb4f5eca40487d20af27d58013fd92b28605a0dcfec34",
  "kind": "def",
  "lexical_name": "sheafificationAdjunction",
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
  "slug": "sheafificationadjunction--d1e804dd33857ea894c20560",
  "source": {
    "blob": "e05b9740654162b1a8f5c4c2317bc3f04b9f9fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1e804dd33857ea894c20560803fe1d961cd09d159f2511074f70f53f9de39ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c436b24fb42458bff8cb4f5eca40487d20af27d58013fd92b28605a0dcfec34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafificationAdjunction :
    sheafification.{v} α ⊣ SheafOfModules.forget R ⋙ restrictScalars α :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦ sheafificationHomEquiv α
      homEquiv_naturality_left_symm := fun {P₀ Q₀ N} f g ↦ by
        apply (SheafOfModules.toSheaf _).map_injective
        rw [Functor.map_comp]
        erw [toSheaf_map_sheafificationHomEquiv_symm,
          toSheaf_map_sheafificationHomEquiv_symm α g]
        rw [Functor.map_comp]
        apply (CategoryTheory.sheafificationAdjunction J
          AddCommGrp.{v}).homEquiv_naturality_left_symm
      homEquiv_naturality_right := fun {P₀ M N} f g ↦ by
        apply (toPresheaf _).map_injective
        erw [toPresheaf_map_sheafificationHomEquiv] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05b9740654162b1a8f5c4c2317bc3f04b9f9fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
