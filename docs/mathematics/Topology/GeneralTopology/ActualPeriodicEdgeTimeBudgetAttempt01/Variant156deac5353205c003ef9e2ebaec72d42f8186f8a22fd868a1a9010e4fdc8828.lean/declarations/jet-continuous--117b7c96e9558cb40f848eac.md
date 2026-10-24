# jet_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b49dd87-f91f-63d2-b214-ba7685c2da5a",
  "kind": "theorem",
  "lexical_name": "jet_continuous",
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
  "slug": "jet-continuous--117b7c96e9558cb40f848eac",
  "source": {
    "blob": "87b628732d034d12da3d45da58d01278899dc1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:117b7c96e9558cb40f848eacb4c2844491c02486c3818005e8e5fd3ef2724aa6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b49dd87-f91f-63d2-b214-ba7685c2da5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem jet_continuous {A : ℝ} (hA : 0 < A) (j : ℕ) (hj : j ≤ 4) :
    Continuous (iteratedDeriv j (sourceCorrelation explicitSecondDerivative A)) :=
  (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv j (by exact_mod_cast hj)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt01/Variant156deac5353205c003ef9e2ebaec72d42f8186f8a22fd868a1a9010e4fdc8828.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b628732d034d12da3d45da58d01278899dc1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
