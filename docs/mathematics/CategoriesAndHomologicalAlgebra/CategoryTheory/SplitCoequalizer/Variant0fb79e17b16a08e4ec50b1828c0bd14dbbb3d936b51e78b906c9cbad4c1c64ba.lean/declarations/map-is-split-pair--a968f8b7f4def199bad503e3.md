# map_is_split_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ffe8153bc68585da648f3eede1b2efe8d2a341faf68be5c36902a07ac69f8f2",
  "kind": "instance",
  "lexical_name": "map_is_split_pair",
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
  "slug": "map-is-split-pair--a968f8b7f4def199bad503e3",
  "source": {
    "blob": "a3a445275f01a4a5f54ccc127627c84b3896bec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a968f8b7f4def199bad503e3b965f05a186a7bdc02fdc07ecb52eece3d81168d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ffe8153bc68585da648f3eede1b2efe8d2a341faf68be5c36902a07ac69f8f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance map_is_split_pair [HasSplitCoequalizer f g] : HasSplitCoequalizer (G.map f) (G.map g) where
  splittable :=
    ⟨_, _, ⟨IsSplitCoequalizer.map (HasSplitCoequalizer.isSplitCoequalizer f g) _⟩⟩

namespace Limits

/-- If a pair has a split coequalizer, it has a coequalizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant0fb79e17b16a08e4ec50b1828c0bd14dbbb3d936b51e78b906c9cbad4c1c64ba.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a445275f01a4a5f54ccc127627c84b3896bec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
