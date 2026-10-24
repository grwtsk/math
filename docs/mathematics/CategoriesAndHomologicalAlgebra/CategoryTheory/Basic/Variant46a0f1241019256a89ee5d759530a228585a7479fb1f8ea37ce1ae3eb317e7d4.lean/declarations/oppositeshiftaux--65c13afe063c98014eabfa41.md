# OppositeShiftAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83415d908931d5b4c5ed4c3026c7d015a7ef7ced6bfe1d8d52032b15a96b7bf5",
  "kind": "abbrev",
  "lexical_name": "OppositeShiftAux",
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
  "slug": "oppositeshiftaux--65c13afe063c98014eabfa41",
  "source": {
    "blob": "e82851f439eab15a9522e1768874eb5642182273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a0f1241019256a89ee5d759530a228585a7479fb1f8ea37ce1ae3eb317e7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65c13afe063c98014eabfa4124958d52bed31381fe4643511ec580e69b87de32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a0f1241019256a89ee5d759530a228585a7479fb1f8ea37ce1ae3eb317e7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83415d908931d5b4c5ed4c3026c7d015a7ef7ced6bfe1d8d52032b15a96b7bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private abbrev OppositeShiftAux :=
  PullbackShift (OppositeShift C ℤ)
    (AddMonoidHom.mk' (fun (n : ℤ) => -n) (by intros; lia))

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The category `Cᵒᵖ` is equipped with the shift such that the shift by `n` on `Cᵒᵖ`
corresponds to the shift by `-n` on `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a0f1241019256a89ee5d759530a228585a7479fb1f8ea37ce1ae3eb317e7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a0f1241019256a89ee5d759530a228585a7479fb1f8ea37ce1ae3eb317e7d4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e82851f439eab15a9522e1768874eb5642182273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
