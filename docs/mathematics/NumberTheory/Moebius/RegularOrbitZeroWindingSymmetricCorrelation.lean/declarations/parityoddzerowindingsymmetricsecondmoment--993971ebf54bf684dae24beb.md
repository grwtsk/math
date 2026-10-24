# parityOddZeroWindingSymmetricSecondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95870fcd1856ca7437f02ab2ee19b8e2f263c6252be4af664f36e75d4d140860",
  "kind": "def",
  "lexical_name": "parityOddZeroWindingSymmetricSecondMoment",
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
  "slug": "parityoddzerowindingsymmetricsecondmoment--993971ebf54bf684dae24beb",
  "source": {
    "blob": "278d3e340294bd6fbf24780b1782e1b6325a0ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:993971ebf54bf684dae24bebaf7425c8bdb8fe0fc9edbce5185259b69ab09c5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95870fcd1856ca7437f02ab2ee19b8e2f263c6252be4af664f36e75d4d140860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parityOddZeroWindingSymmetricSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingSymmetricMobiusCorrelation
      b r c (positiveEndpointOddShiftSet b) ^ 2

/-- Exact even-family identification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278d3e340294bd6fbf24780b1782e1b6325a0ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
