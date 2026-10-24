# actualMovingCriticalIncrementCovariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d9efbcbd5cfffb98f7324956e1db190c7afa6f8572d9d01b2d83edac0e04b0b",
  "kind": "def",
  "lexical_name": "actualMovingCriticalIncrementCovariance",
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
  "slug": "actualmovingcriticalincrementcovariance--817d34044a6c2d732b443dcc",
  "source": {
    "blob": "37cfea76d1825af7810c50f4cfb4aaf574793cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:817d34044a6c2d732b443dcc5c6048e422df8e832a3245a55872c6ada92510ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d9efbcbd5cfffb98f7324956e1db190c7afa6f8572d9d01b2d83edac0e04b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMovingCriticalIncrementCovariance (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..2 * A, actualClosedMangoldtIncrement t (2 * A) *
    Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- The genuine lower-seven payment for subtracting the actual upper error value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cfea76d1825af7810c50f4cfb4aaf574793cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
