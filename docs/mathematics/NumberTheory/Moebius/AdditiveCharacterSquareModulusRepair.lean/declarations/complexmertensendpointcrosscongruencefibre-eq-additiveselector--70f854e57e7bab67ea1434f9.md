# complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4206d5c6-e121-0e2f-4a12-be2f15fb8ab2",
  "kind": "theorem",
  "lexical_name": "complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector",
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
  "slug": "complexmertensendpointcrosscongruencefibre-eq-additiveselector--70f854e57e7bab67ea1434f9",
  "source": {
    "blob": "1d43c5324923c0019b728634a661ba6b84dc187e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70f854e57e7bab67ea1434f9095f68f6da1432a33ca4c6d2fc5445cb793aba43",
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

Occurrence: `result:4206d5c6-e121-0e2f-4a12-be2f15fb8ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector
    (b d : ℕ) [NeZero d] :
    complexMertensEndpointCrossCongruenceFibre b d =
      additiveSelectorEndpointCrossFibre b d := by
  classical
  unfold complexMertensEndpointCrossCongruenceFibre
    additiveSelectorEndpointCrossFibre
    mertensEndpointCrossCongruenceBaseSet
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro a _ha
  by_cases hc :
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a)
  · rw [if_pos hc,
      additiveSquareDivisorSelector_eq_indicator,
      if_pos hc, one_mul]
  · rw [if_neg hc,
      additiveSquareDivisorSelector_eq_indicator,
      if_neg hc, zero_mul]

/-- One additive-character-twisted signed two-point Möbius correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveCharacterSquareModulusRepair.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d43c5324923c0019b728634a661ba6b84dc187e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
