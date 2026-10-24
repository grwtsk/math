# parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54ec2e28-4866-3b45-38b8-f26bc1e07025",
  "kind": "theorem",
  "lexical_name": "parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass",
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
  "slug": "parityevenhalfshiftsignedresiduefourier-zero-eq-two-mul-pairmass--e975400573e38bfe13de5268",
  "source": {
    "blob": "c30d36a1bc7da9d347ba2f01ba03c5d622f708b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e975400573e38bfe13de526836103a1545b40fe3522359e29421332ac2b8467b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54ec2e28-4866-3b45-38b8-f26bc1e07025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityEvenHalfShiftSignedResidueFourier b d r
        (0 : ZMod (d * d)) =
      (2 : ℂ) *
        (parityHalfIndexCenteredPairMass
          b r (positiveEndpointEvenShiftSet b) : ℂ) := by
  rw [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
    b d r hr]
  rw [parityHalfIndexCenteredResidueFourier_zero]

/-- The odd transform's zero mode is twice the total centered pair mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30d36a1bc7da9d347ba2f01ba03c5d622f708b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
