# standardSourceTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57ceb7e92d7d9f63283ee6d6c57ee05ee745f646147674b654caf59b7f1dc653",
  "kind": "def",
  "lexical_name": "standardSourceTransform",
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
  "slug": "standardsourcetransform--db6e642ce9744e12ca38c712",
  "source": {
    "blob": "a293f5068463434f1f74e1482f8c1686ccac324a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db6e642ce9744e12ca38c71274ebb7bb0df07d7829ef53207765193d15850f8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57ceb7e92d7d9f63283ee6d6c57ee05ee745f646147674b654caf59b7f1dc653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def standardSourceTransform (A : ℝ) : ℝ → ℂ :=
  𝓕 (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ))

/-- The literal zero-frequency value is the already evaluated source integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a293f5068463434f1f74e1482f8c1686ccac324a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
