# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efc1a9b7d1aff8a9f3e48942de1032c3133e534c45e755c7ff32f296db87b99a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e05541d4a2bbe3e8a43bf69f",
  "source": {
    "blob": "e0e5c78b39d4efbdedade2068d4266bcaef70d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e05541d4a2bbe3e8a43bf69f67e4ccc2b81d0e38b39eb7d6bc9a040b4facab80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efc1a9b7d1aff8a9f3e48942de1032c3133e534c45e755c7ff32f296db87b99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsEmpty.oriented [IsEmpty ι] : Module.Oriented R M ι where
  positiveOrientation :=
    rayOfNeZero R (AlternatingMap.constLinearEquivOfIsEmpty 1) <|
      AlternatingMap.constLinearEquivOfIsEmpty.injective.ne (by exact one_ne_zero)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e5c78b39d4efbdedade2068d4266bcaef70d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
