# Projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2160cb344cee3263cc678c0ddb93641e87f3568ebf4b7d0b7b83edc21718c784",
  "kind": "class",
  "lexical_name": "Projective",
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
  "slug": "projective--6c35d7bea129a12b48410e44",
  "source": {
    "blob": "d473f03a1a66fd4e639d7c3e5a075fddcb79ff20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c35d7bea129a12b48410e44150ecae6f94cdd1f7fe4036f92766c961d8138cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2160cb344cee3263cc678c0ddb93641e87f3568ebf4b7d0b7b83edc21718c784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Projective (P : C) : Prop where
  factors : ∀ {E X : C} (f : P ⟶ X) (e : E ⟶ X) [Epi e], ∃ f', f' ≫ e = f
#align category_theory.projective CategoryTheory.Projective

section

/-- A projective presentation of an object `X` consists of an epimorphism `f : P ⟶ X`
from some projective object `P`.
-/
-- Porting note: was @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d473f03a1a66fd4e639d7c3e5a075fddcb79ff20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
