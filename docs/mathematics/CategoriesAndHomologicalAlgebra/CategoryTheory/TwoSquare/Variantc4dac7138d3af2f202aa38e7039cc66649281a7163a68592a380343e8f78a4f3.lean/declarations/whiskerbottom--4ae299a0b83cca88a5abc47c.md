# whiskerBottom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34897579a7d2ed13cb73810d774dbc74e10b3166c88cacbac93ace34903d7cbd",
  "kind": "def",
  "lexical_name": "whiskerBottom",
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
  "slug": "whiskerbottom--4ae299a0b83cca88a5abc47c",
  "source": {
    "blob": "fcef7afa2290577698a8e01970e124df6cebf114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ae299a0b83cca88a5abc47c1a58262229248c690709b315d551a3b92b94d44a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34897579a7d2ed13cb73810d774dbc74e10b3166c88cacbac93ace34903d7cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def whiskerBottom {B' : C₃ ⥤ C₄} (w : TwoSquare T L R B) (α : B ⟶ B') :
    TwoSquare T L R B' :=
  .mk _ _ _ _ <| w.natTrans ≫ whiskerLeft L α

variable {C₅ : Type u₅} {C₆ : Type u₆} {C₇ : Type u₇} {C₈ : Type u₈}
  [Category.{v₅} C₅] [Category.{v₆} C₆] [Category.{v₇} C₇] [Category.{v₈} C₈]
  {T' : C₂ ⥤ C₅} {R' : C₅ ⥤ C₆} {B' : C₄ ⥤ C₆} {L' : C₃ ⥤ C₇} {R'' : C₄ ⥤ C₈} {B'' : C₇ ⥤ C₈}

/-- The horizontal composition of 2-squares. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcef7afa2290577698a8e01970e124df6cebf114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
