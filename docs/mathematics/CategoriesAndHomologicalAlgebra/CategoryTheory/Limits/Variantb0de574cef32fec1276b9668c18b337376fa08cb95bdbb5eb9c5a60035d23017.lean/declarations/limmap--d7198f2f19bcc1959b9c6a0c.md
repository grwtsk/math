# limMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1d2105a-45a5-7c84-7163-d2b6def5ca0d",
  "kind": "lemma",
  "lexical_name": "limMap",
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
  "slug": "limmap--d7198f2f19bcc1959b9c6a0c",
  "source": {
    "blob": "ae98efbe715d7f1c5839b32c72e2903ec63d7702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 436,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7198f2f19bcc1959b9c6a0cfacade180f8b1375219b7c121b930e6868b7b2ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1d2105a-45a5-7c84-7163-d2b6def5ca0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma limMap [W.IsStableUnderLimitsOfShape J] {X Y : J ⥤ C}
    (f : X ⟶ Y) [HasLimit X] [HasLimit Y] (hf : W.functorCategory _ f) :
    W (limMap f) :=
  limitsOfShape_le _ (limitsOfShape_limMap _ hf)

@[deprecated (since := "2025-05-11")] alias IsStableUnderLimitsOfShape.limitsOfShape_le :=
  limitsOfShape_le

@[deprecated (since := "2025-05-11")] alias IsStableUnderLimitsOfShape.limMap :=
  MorphismProperty.limMap

end LimitsOfShape

section ColimitsOfShape

variable (W : MorphismProperty C) (J : Type*) [Category J]

/-- The class of morphisms in `C` that are colimits of shape `J` of
natural transformations involving morphisms in `W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb0de574cef32fec1276b9668c18b337376fa08cb95bdbb5eb9c5a60035d23017.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae98efbe715d7f1c5839b32c72e2903ec63d7702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
