# karoubi.retractArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51abb167eb178633a9ddd89d37665b1ca4fba3350a2e329c27af2fea3d6b707e",
  "kind": "def",
  "lexical_name": "karoubi.retractArrow",
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
  "slug": "karoubi-retractarrow--ac21643b2a38051c9ea9f631",
  "source": {
    "blob": "b41139f8b64de6eabb9bfc3e6de5e5699002cc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac21643b2a38051c9ea9f63158c0ba1ea09d3de0ccb477b95e02b6157fb28d46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51abb167eb178633a9ddd89d37665b1ca4fba3350a2e329c27af2fea3d6b707e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def karoubi.retractArrow (X : A) :
    RetractArrow ((karoubi.π' Λ).app X) ((toKaroubi _).map (Λ.π.app X)) where
  i := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  r := Arrow.homMk ⟨ι.map ((karoubi.F' Λ).obj X).p, by simp [← Functor.map_comp]⟩ (𝟙 _)
  retract := by
    ext
    · simp [← Functor.map_comp]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reduced/Variant7af0e95de1aef9bd65311ab7f6be094f4c8c737763494aa872b88b7b2a08ea83.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b41139f8b64de6eabb9bfc3e6de5e5699002cc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
