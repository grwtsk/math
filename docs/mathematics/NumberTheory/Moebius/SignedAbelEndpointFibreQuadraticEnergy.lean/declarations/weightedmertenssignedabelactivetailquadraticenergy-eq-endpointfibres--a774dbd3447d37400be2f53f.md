# weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d25b0b9b-2873-c507-99d0-d933636ddf9f",
  "kind": "theorem",
  "lexical_name": "weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres",
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
  "slug": "weightedmertenssignedabelactivetailquadraticenergy-eq-endpointfibres--a774dbd3447d37400be2f53f",
  "source": {
    "blob": "841c6083ed45756773d82c3b0d410a700ecd153b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 270,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a774dbd3447d37400be2f53f9040e55afcf0a506850c251ce3dcfbe5bcb6475b",
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

Occurrence: `result:d25b0b9b-2873-c507-99d0-d933636ddf9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres
    (j : ℕ) :
    weightedMertensSignedAbelActiveTailQuadraticEnergy j =
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j := by
  rw [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum]
  calc
    (∑ p ∈ signedAbelActiveTailPairSet j,
      signedAbelDepthAmplitude j p.1 p.2 ^ 2 *
        (((p.1 + 1 + p.2 : ℕ) : ℝ)⁻¹ -
          (((p.1 + 1 + p.2 + 1 : ℕ) : ℝ))⁻¹)) =
      ∑ q ∈ signedAbelEndpointFibrePairSet j,
        4 * mertensTwoPointPrefix (q.1 - q.2) q.2 ^ 2 *
          ((q.1 : ℝ)⁻¹ - (((q.1 + 1 : ℕ) : ℝ))⁻¹) := by
      rw [sum_signedAbelActivePairs_eq_endpointFibres j
        (fun t h => signedAbelDepthAmplitude j t h ^ 2 *
          (((t + 1 + h : ℕ) : ℝ)⁻¹ - (((t + 1 + h + 1 : ℕ) : ℝ))⁻¹))]
      apply Finset.sum_congr rfl
      intro q hq
      have hp := signedAbelEndpointToActivePair_mem hq
      have hterm :=
        signedAbelActivePairTerm_eq_endpointTerm
          (j := j) (p := signedAbelEndpointToActivePair q) hp
      have hright :=
        signedAbelActivePairToEndpoint_rightInverse hq
      have hpBounds :
          2 ^ j ≤ (signedAbelEndpointToActivePair q).1 + 1 +
            (signedAbelEndpointToActivePair q).2 ∧
          (signedAbelEndpointToActivePair q).1 + 1 +
            (signedAbelEndpointToActivePair q).2 < 2 ^ (j + 1) :=
        (Finset.mem_filter.mp hp).2
      rw [signedAbelActiveReciprocalWeight_eq_reciprocalDiff hpBounds.1 hpBounds.2] at hterm
      rw [hright] at hterm
      simpa [signedAbelEndpointToActivePair, add_assoc, add_comm, add_left_comm] using hterm
    _ = weightedMertensSignedAbelEndpointFibreQuadraticEnergy j :=
      sum_signedAbelEndpointPairs_eq_endpointFibreEnergy j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841c6083ed45756773d82c3b0d410a700ecd153b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
