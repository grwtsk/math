# sourcePrefixPairing_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed2a0e5a-cab5-e546-8cbb-b0e4187a8b2d",
  "kind": "theorem",
  "lexical_name": "sourcePrefixPairing_abs_le",
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
  "slug": "sourceprefixpairing-abs-le--e4dc167ba756e39b59614916",
  "source": {
    "blob": "12a4fec983b5bff7014bd7e3cb9c75becb9ab063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4dc167ba756e39b5961491613e99e9d4b7147a7ee9258cfc7a304886b9d7b84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2a0e5a-cab5-e546-8cbb-b0e4187a8b2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrefixPairing_abs_le (A S : ℝ) (hA : 1 ≤ A) (hS : 0 ≤ S) :
    |sourcePrefixPairing A S| ≤
      2080 / (3 * A ^ 2) * (Real.exp (S / 2) * (S + 2) - 2) := by
  have h := weighted_prefix_abs_le (G := sourceLogKernel A) (B := 520 / (3 * A ^ 2))
    hS (fun s hs => by
      simpa only [div_mul_eq_mul_div] using sourceLogKernel_deriv_abs_le_anchored A s hA hs.1)
  dsimp only [sourcePrefixPairing]
  convert h using 1
  ring

/-- At the real square-divisor front the compensated prefix has a vanishing
explicit envelope; the weighted endpoint is part of its definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a4fec983b5bff7014bd7e3cb9c75becb9ab063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
