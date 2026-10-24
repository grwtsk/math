# additiveSelectorEndpointCrossFibre_eq_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70623ddb-b468-8ca8-bfdf-680154c56db9",
  "kind": "theorem",
  "lexical_name": "additiveSelectorEndpointCrossFibre_eq_fourier",
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
  "slug": "additiveselectorendpointcrossfibre-eq-fourier--97ac992b775eb9d70c8069b2",
  "source": {
    "blob": "1d43c5324923c0019b728634a661ba6b84dc187e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ac992b775eb9d70c8069b2a6a90697703434bb901b32654b1d9b6f2201164f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70623ddb-b468-8ca8-bfdf-680154c56db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additiveSelectorEndpointCrossFibre_eq_fourier
    (b d : ℕ) [NeZero d] :
    additiveSelectorEndpointCrossFibre b d =
      additiveFourierEndpointCrossCongruenceFibre b d := by
  classical
  let : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  unfold additiveSelectorEndpointCrossFibre
    additiveSquareDivisorSelector
    additiveZeroResidueSelector
    additiveFourierEndpointCrossCongruenceFibre
    additiveTwistedEndpointCrossCorrelation
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _hk
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- Main exact repair: every real square-modulus congruence fibre is, after
complexification, the finite average of additive-character-twisted two-point
Möbius correlations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d43c5324923c0019b728634a661ba6b84dc187e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
