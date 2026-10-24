# toSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50cac2df491a5bbcea0499e6b3663e2c2736cf1cbde60e15444b0a062f8da0cd",
  "kind": "def",
  "lexical_name": "toSigma",
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
  "slug": "tosigma--60c656e4f1aa177b0a64d49c",
  "source": {
    "blob": "2aeafc715b69cf9fd1333df96b382244a1979d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60c656e4f1aa177b0a64d49cce7d3478235ba8729ad2456caa7b26b91c7d38be",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sigma/Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50cac2df491a5bbcea0499e6b3663e2c2736cf1cbde60e15444b0a062f8da0cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSigma (𝒰 : Cover.{v} P S) : 𝒰 ⟶ 𝒰.sigma where
  idx _ := default
  app i := Sigma.ι _ i
  app_prop _ := IsLocalAtSource.of_isOpenImmersion _

/-- A refinement of coverings induces a refinement on the single object coverings. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sigma/Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2aeafc715b69cf9fd1333df96b382244a1979d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
