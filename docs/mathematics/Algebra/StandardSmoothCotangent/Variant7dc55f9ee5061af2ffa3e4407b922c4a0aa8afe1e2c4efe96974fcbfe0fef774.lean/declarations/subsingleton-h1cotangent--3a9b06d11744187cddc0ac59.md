# subsingleton_h1Cotangent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e43de9bc829ba26a487f9ae515c86affc544aefc1309f9ef1bfc95654d9a1a6d",
  "kind": "instance",
  "lexical_name": "subsingleton_h1Cotangent",
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
  "slug": "subsingleton-h1cotangent--3a9b06d11744187cddc0ac59",
  "source": {
    "blob": "0f9f30f25e73ad3865fa8950332f4424d469497b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 132,
    "path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9b06d11744187cddc0ac59c4dbbbc6062b1d5b8f915d9dbd002797d91e3be4",
  "verification": {
    "reference": "docs/verification/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e43de9bc829ba26a487f9ae515c86affc544aefc1309f9ef1bfc95654d9a1a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_h1Cotangent : Subsingleton P.toExtension.H1Cotangent := by
  rw [Algebra.Extension.subsingleton_h1Cotangent]
  exact cotangentComplex_injective P

/-- The classes of `P.relation i` form a basis of `I ⧸ I ^ 2`. -/
@[stacks 00T7 "(3)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9f30f25e73ad3865fa8950332f4424d469497b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
