# compCreatesColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6ab481ff36041e79da6c95ad24d81a899331a0265b8d4761d1f7d245a887665",
  "kind": "instance",
  "lexical_name": "compCreatesColimits",
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
  "slug": "compcreatescolimits--455d68359f74751e058c9ea9",
  "source": {
    "blob": "a61005dca92999758e9193d2b8f9f0c19fedb467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 707,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455d68359f74751e058c9ea91309ee441a46c74d9b72cf5689e0ef6cb01549c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6ab481ff36041e79da6c95ad24d81a899331a0265b8d4761d1f7d245a887665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compCreatesColimits [CreatesColimitsOfSize.{w, w'} F] [CreatesColimitsOfSize.{w, w'} G] :
    CreatesColimitsOfSize.{w, w'} (F ⋙ G) where CreatesColimitsOfShape := inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant723add0c91a95e160784ebebc11b21dd7a26913b0e76ba61c35569d7e1870dc4.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61005dca92999758e9193d2b8f9f0c19fedb467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
