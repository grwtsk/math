# _root_.CategoryTheory.Limits.IsColimit.whiskerEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:795aa364c6faf07f06a52f4299e077d8d94a8964b6d762c1887e2870e4256d85",
  "kind": "def",
  "lexical_name": "_root_.CategoryTheory.Limits.IsColimit.whiskerEquivalence",
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
  "slug": "root-categorytheory-limits-iscolimit-whiskerequivalence--c8b78809e2007da84c35a0be",
  "source": {
    "blob": "d260a878bda7df2fded444d9b58e9d08a2efa058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 377,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8b78809e2007da84c35a0be0c690e7a26276768942a1e25a4b036ac8f69c444",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:795aa364c6faf07f06a52f4299e077d8d94a8964b6d762c1887e2870e4256d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.CategoryTheory.Limits.IsColimit.whiskerEquivalence {s : Cocone F}
    (P : IsColimit s) (e : K ≌ J) : IsColimit (s.whisker e.functor) :=
  IsColimit.ofLeftAdjoint (Cocone.whiskeringEquivalence e).toAdjunction P

/-- If `s : Cone F` whiskered by an equivalence `e` is a limit cone, so is `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d260a878bda7df2fded444d9b58e9d08a2efa058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
