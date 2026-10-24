# shiftMonoidalFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb75faf76b2846a994ddeca985ee2908a8f02811d577034c9fa2226da02049f2",
  "kind": "def",
  "lexical_name": "shiftMonoidalFunctor",
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
  "slug": "shiftmonoidalfunctor--eda21f49c557a7ed4126e9c5",
  "source": {
    "blob": "6671c2cb0503adec306ea2e7b8304b892f8c7bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eda21f49c557a7ed4126e9c520d21a5ff489758b8beaafaabcda689a2aef27ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb75faf76b2846a994ddeca985ee2908a8f02811d577034c9fa2226da02049f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftMonoidalFunctor : Discrete A ⥤ C ⥤ C :=
  HasShift.shift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7e1049f81a4f891249d311eba2b20736a6c5a7534a4f1b1d5e292b59765895c2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6671c2cb0503adec306ea2e7b8304b892f8c7bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
