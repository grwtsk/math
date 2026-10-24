# ToBackwardSearcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ffabc99059b959499acfb7ec1ab8b6e612e33c339b573e99def5ab7982cfa76",
  "kind": "class",
  "lexical_name": "ToBackwardSearcher",
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
  "slug": "tobackwardsearcher--b2c4f427af8c1fcee10ab587",
  "source": {
    "blob": "875959034908211184fa011d3f48f8d7c73a940e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 421,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2c4f427af8c1fcee10ab5870027831e1f61031c177b4bbf24b5ff5f642c5dc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ffabc99059b959499acfb7ec1ab8b6e612e33c339b573e99def5ab7982cfa76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ToBackwardSearcher {ρ : Type} (pat : ρ) (σ : outParam (Slice → Type)) where
  /--
  Build an iterator of {name}`SearchStep` corresponding to matches of {lean}`pat` along the slice
  {name}`s`. The {name}`SearchStep`s returned by this iterator must contain ranges that are
  adjacent, non-overlapping and cover all of {name}`s`.
  -/
  toSearcher : (s : Slice) → Std.Iter (α := σ s) (SearchStep s)

namespace ToBackwardSearcher

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant951026d7bed7e63ede29c173139627b00e2a8426adcea20e0ca68ccd401053e7.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875959034908211184fa011d3f48f8d7c73a940e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
