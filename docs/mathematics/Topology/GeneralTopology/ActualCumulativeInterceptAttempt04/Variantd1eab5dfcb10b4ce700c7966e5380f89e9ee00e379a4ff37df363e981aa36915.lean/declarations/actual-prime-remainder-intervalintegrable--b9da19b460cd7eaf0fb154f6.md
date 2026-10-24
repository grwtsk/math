# actual_prime_remainder_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71429cda-cbdf-ca06-6452-754610b8fda4",
  "kind": "theorem",
  "lexical_name": "actual_prime_remainder_intervalIntegrable",
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
  "slug": "actual-prime-remainder-intervalintegrable--b9da19b460cd7eaf0fb154f6",
  "source": {
    "blob": "67f996a5bcfc39781069f90a295790c5acda7032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variantd1eab5dfcb10b4ce700c7966e5380f89e9ee00e379a4ff37df363e981aa36915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9da19b460cd7eaf0fb154f618edb5a514c23318f68bac5505ffc14900885cb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variantd1eab5dfcb10b4ce700c7966e5380f89e9ee00e379a4ff37df363e981aa36915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71429cda-cbdf-ca06-6452-754610b8fda4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prime_remainder_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualPrimeRemainder volume a b := by
  have hd : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := ((criticalCumulativeDiscrepancy_intervalIntegrable a b).sub
    (intervalIntegrable_const (c:=actualAffineSlope))).add (hd.intervalIntegrable (μ:=volume) a b)
  convert! h using 1
  funext u
  rw [cumulative_discrepancy_eq_remainder]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variantd1eab5dfcb10b4ce700c7966e5380f89e9ee00e379a4ff37df363e981aa36915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variantd1eab5dfcb10b4ce700c7966e5380f89e9ee00e379a4ff37df363e981aa36915.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f996a5bcfc39781069f90a295790c5acda7032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
