# sum_signedAbelActivePairs_eq_endpointFibres

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3663ba39-aac9-5f34-babe-bd59294f04f6",
  "kind": "theorem",
  "lexical_name": "sum_signedAbelActivePairs_eq_endpointFibres",
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
  "slug": "sum-signedabelactivepairs-eq-endpointfibres--11876fd0fb2c9744fd559279",
  "source": {
    "blob": "841c6083ed45756773d82c3b0d410a700ecd153b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11876fd0fb2c9744fd559279505af6169dbb2381743fe7c595e5cc3ad962f610",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3663ba39-aac9-5f34-babe-bd59294f04f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_signedAbelActivePairs_eq_endpointFibres
    (j : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ p ∈ signedAbelActiveTailPairSet j,
      F p.1 p.2) =
      ∑ q ∈ signedAbelEndpointFibrePairSet j,
        F (q.2 - 1) (q.1 - q.2) := by
  classical
  apply Finset.sum_bij'
    (fun p _hp => signedAbelActivePairToEndpoint p)
    (fun q _hq => signedAbelEndpointToActivePair q)
  · intro p hp
    exact signedAbelActivePairToEndpoint_mem hp
  · intro q hq
    exact signedAbelEndpointToActivePair_mem hq
  · intro p hp
    exact signedAbelEndpointToActivePair_leftInverse hp
  · intro q hq
    exact signedAbelActivePairToEndpoint_rightInverse hq
  · intro p hp
    have hleft :=
      signedAbelEndpointToActivePair_leftInverse hp
    change F p.1 p.2 = F (signedAbelEndpointToActivePair
      (signedAbelActivePairToEndpoint p)).1 (signedAbelEndpointToActivePair
      (signedAbelActivePairToEndpoint p)).2
    rw [hleft]

/-- On one active pair, the source amplitude-square times reciprocal weight is
the endpoint-fibre summand after the exact change of variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841c6083ed45756773d82c3b0d410a700ecd153b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
