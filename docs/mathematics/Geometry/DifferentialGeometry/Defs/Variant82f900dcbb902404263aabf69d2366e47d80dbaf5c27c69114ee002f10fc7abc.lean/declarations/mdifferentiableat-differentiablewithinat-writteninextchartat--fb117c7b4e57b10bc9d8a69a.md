# MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48dd0ffe-debb-2b82-f393-9e42c3abded3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70a86017-63e9-61a3-8f69-96c3b48fc9aa",
  "kind": "theorem",
  "lexical_name": "MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt",
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
  "slug": "mdifferentiableat-differentiablewithinat-writteninextchartat--fb117c7b4e57b10bc9d8a69a",
  "source": {
    "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb117c7b4e57b10bc9d8a69acdd5949204f43944ba005319f1bbf3af9f46d862",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a86017-63e9-61a3-8f69-96c3b48fc9aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt {f : M → M'} {x : M}
    (hf : MDifferentiableAt I I' f x) :
    DifferentiableWithinAt 𝕜 (writtenInExtChartAt I I' x f) (range I) ((extChartAt I x) x) :=
  mdifferentiableAt_iff .. |>.1 hf |>.2

variable (I I') in
/-- `MDifferentiableOn I I' f s` indicates that the function `f` between manifolds
has a derivative within `s` at all points of `s`.
This is a generalization of `DifferentiableOn` to manifolds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a5df6a2c9d5199fc0b85f34a824e029a40551f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
