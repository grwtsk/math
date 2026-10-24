# Projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b9577bf43e273a0954ae4f91abcef178dbce1e16dc41e47e67dcf4cf5c1327e",
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
  "slug": "projective--ab2c619e9c1433647ddd2a1b",
  "source": {
    "blob": "3b677e73402885cd8512eb3868175dacd85b3e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab2c619e9c1433647ddd2a1b355c8921923e423545e02b54557ae0ef77344452",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b9577bf43e273a0954ae4f91abcef178dbce1e16dc41e47e67dcf4cf5c1327e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b677e73402885cd8512eb3868175dacd85b3e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
