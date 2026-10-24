# coreLengthCoefficientMass_le_of_reciprocalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb0a1d0-ecc4-efed-b019-5ceeeb9b28b7",
  "kind": "theorem",
  "lexical_name": "coreLengthCoefficientMass_le_of_reciprocalBound",
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
  "slug": "corelengthcoefficientmass-le-of-reciprocalbound--b644bff5d9e75bae116d957c",
  "source": {
    "blob": "2ec29fb62160ffffbad322d48730172b68726c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 210,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b644bff5d9e75bae116d957c015710f527a78126c4f244c93eebb6a95b56bc06",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb0a1d0-ecc4-efed-b019-5ceeeb9b28b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreLengthCoefficientMass_le_of_reciprocalBound
    (h : ReciprocalLengthCoefficientMassBound) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j n : ℕ,
      logarithmicShiftThreshold j ≤ n →
      n ≤ 2 ^ j →
      coreLengthCoefficientMass j n ≤
        C * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2) := by
  obtain ⟨C, hC, hb⟩ := h
  refine ⟨C, hC, ?_⟩
  intro j n hnH hnX
  exact le_trans (coreLengthCoefficientMass_le_full j n)
    (hb j n hnH hnX)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftReciprocal_eq_left
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftReciprocal_eq_right
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.fullLengthCoefficientMass_eq_left_add_right
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.coreLengthCoefficientMass_le_of_reciprocalBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec29fb62160ffffbad322d48730172b68726c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
