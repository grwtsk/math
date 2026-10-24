# whisker_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f612ab0-0df5-163e-ed16-498a8214933e",
  "kind": "theorem",
  "lexical_name": "whisker_eq",
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
  "slug": "whisker-eq--d4e110a08fa740bbb830bd82",
  "source": {
    "blob": "a40f08cfe5c83edd38ecb66eadc5e0147847146c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e110a08fa740bbb830bd82a87fa1afd0600c6e622a3169e1fb565351403fd0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f612ab0-0df5-163e-ed16-498a8214933e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whisker_eq (f : X ⟶ Y) {g h : Y ⟶ Z} (w : g = h) : f ≫ g = f ≫ h := by rw [w]
#align category_theory.whisker_eq CategoryTheory.whisker_eq

/--
Notation for whiskering an equation by a morphism (on the right).
If `f g : X ⟶ Y` and `w : f = g` and `h : Y ⟶ Z`, then `w =≫ h : f ≫ h = g ≫ h`.
-/
scoped infixr:80 " =≫ " => eq_whisker

/--
Notation for whiskering an equation by a morphism (on the left).
If `g h : Y ⟶ Z` and `w : g = h` and `h : X ⟶ Y`, then `f ≫= w : f ≫ g = f ≫ h`.
-/
scoped infixr:80 " ≫= " => whisker_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf98a69e196d8fed957a915f9ea5f54fc06c84ad15ca928ccc21b23b7e1865624.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40f08cfe5c83edd38ecb66eadc5e0147847146c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
