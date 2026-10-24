# HasDetector.wellPowered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:193b3ea1532ed12e7e910588a9e6516f0923e3b4a50a80391747a1668adeb323",
  "kind": "instance",
  "lexical_name": "HasDetector.wellPowered",
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
  "slug": "hasdetector-wellpowered--e5b2ce0875af7c3ee20bc0fc",
  "source": {
    "blob": "9d78ee21bc97f38c22d46856930a153ee651f443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 955,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5b2ce0875af7c3ee20bc0fcd2701712f58115af732303cd56b0d7557d0974ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:193b3ea1532ed12e7e910588a9e6516f0923e3b4a50a80391747a1668adeb323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance HasDetector.wellPowered [HasPullbacks C] [HasDetector C] : WellPowered.{v₁} C :=
  isDetector_detector C |> wellPowered_of_isDetector _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d78ee21bc97f38c22d46856930a153ee651f443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
