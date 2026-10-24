# UniqueMDiffWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49d8d7f5e228ddb6d4c8670fa430ed16f50e086585b1e9d20286e4d608c635f8",
  "kind": "def",
  "lexical_name": "UniqueMDiffWithinAt",
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
  "slug": "uniquemdiffwithinat--5a5d34ba1b7f8c3520b83435",
  "source": {
    "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 202,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a5d34ba1b7f8c3520b83435c6abcc01daa04e27cc21b154d610307501323d1e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49d8d7f5e228ddb6d4c8670fa430ed16f50e086585b1e9d20286e4d608c635f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniqueMDiffWithinAt (s : Set M) (x : M) :=
  UniqueDiffWithinAt 𝕜 ((extChartAt I x).symm ⁻¹' s ∩ range I) ((extChartAt I x) x)

variable (I) in
/-- Predicate ensuring that, at all points of a set, a function can have at most one derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a5df6a2c9d5199fc0b85f34a824e029a40551f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
