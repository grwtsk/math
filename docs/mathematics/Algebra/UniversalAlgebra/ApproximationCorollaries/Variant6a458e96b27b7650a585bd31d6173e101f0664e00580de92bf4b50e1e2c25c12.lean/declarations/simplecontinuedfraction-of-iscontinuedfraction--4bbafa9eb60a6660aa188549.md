# SimpleContinuedFraction.of_isContinuedFraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7956dcc-40eb-1e92-6696-455d0b271deb",
  "kind": "theorem",
  "lexical_name": "SimpleContinuedFraction.of_isContinuedFraction",
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
  "slug": "simplecontinuedfraction-of-iscontinuedfraction--4bbafa9eb60a6660aa188549",
  "source": {
    "blob": "e81ffcf31e24f1558804cfccec857ec0a72802bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bbafa9eb60a6660aa188549dc85decb10bfccebb146ba490ddd2bd29e7e498b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7956dcc-40eb-1e92-6696-455d0b271deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SimpleContinuedFraction.of_isContinuedFraction :
    (SimpleContinuedFraction.of v).IsContinuedFraction := fun _ _ nth_part_denom_eq =>
  lt_of_lt_of_le zero_lt_one (of_one_le_get?_part_denom nth_part_denom_eq)
#align simple_continued_fraction.of_is_continued_fraction SimpleContinuedFraction.of_isContinuedFraction

/-- Creates the continued fraction of a value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e81ffcf31e24f1558804cfccec857ec0a72802bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
