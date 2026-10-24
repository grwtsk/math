# image.eqToIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34b52e5569cc7bb3089a95d37ea6ccfc9be70067b3265dc3018a88f5de0ec8c5",
  "kind": "def",
  "lexical_name": "image.eqToIso",
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
  "slug": "image-eqtoiso--73acec824a40cf8d86e789c4",
  "source": {
    "blob": "9ab47764eda15212de71e047565ca1dfba6dc581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73acec824a40cf8d86e789c4a8775303cb05ee4d04d76ab7458dec2eb24fd156",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34b52e5569cc7bb3089a95d37ea6ccfc9be70067b3265dc3018a88f5de0ec8c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def image.eqToIso (h : f = f') : image f ≅ image f' :=
  asIso (image.eqToHom h)
#align category_theory.limits.image.eq_to_iso CategoryTheory.Limits.image.eqToIso

/-- As long as the category has equalizers,
the image inclusion maps commute with `image.eqToIso`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant31d727fd421209030951c8eb4e7af43f4adea0833fe9b2fd5c4310fd93e389a6.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ab47764eda15212de71e047565ca1dfba6dc581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
