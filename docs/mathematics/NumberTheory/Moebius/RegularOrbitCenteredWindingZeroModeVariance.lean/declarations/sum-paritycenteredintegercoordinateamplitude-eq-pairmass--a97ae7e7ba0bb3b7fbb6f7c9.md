# sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a0c88d0-6b0a-e934-3367-a98011b2f6b0",
  "kind": "theorem",
  "lexical_name": "sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass",
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
  "slug": "sum-paritycenteredintegercoordinateamplitude-eq-pairmass--a97ae7e7ba0bb3b7fbb6f7c9",
  "source": {
    "blob": "86aee0d7b10b468badc8e0f46d5d369e33c3f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a97ae7e7ba0bb3b7fbb6f7c956f789c589e8b8f9caa420cacbc3b7d10c1b8a6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0c88d0-6b0a-e934-3367-a98011b2f6b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass
    (b r : ℕ) (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      parityCenteredIntegerCoordinateAmplitude b r H c) =
      parityHalfIndexCenteredPairMass b r H := by
  classical
  unfold parityCenteredIntegerCoordinateAmplitude
  simp_rw [← parityHalfIndexZeroWindingFiber_eq_shiftCorrelation]
  unfold parityHalfIndexZeroWindingFiber parityHalfIndexCenteredPairMass
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m hm
  simp [halfIndexZeroWindingCoordinate_lt_endpoint hm]

/-- Mean integer-center amplitude over the N=b+1 possible centers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86aee0d7b10b468badc8e0f46d5d369e33c3f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
