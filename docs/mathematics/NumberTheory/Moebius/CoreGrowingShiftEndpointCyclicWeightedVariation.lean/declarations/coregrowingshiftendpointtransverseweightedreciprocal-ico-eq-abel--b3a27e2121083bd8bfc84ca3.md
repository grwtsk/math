# coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bf61d2c-822f-6350-0d66-2060e90e9fe8",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_eq_abel",
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
  "slug": "coregrowingshiftendpointtransverseweightedreciprocal-ico-eq-abel--b3a27e2121083bd8bfc84ca3",
  "source": {
    "blob": "6b446847c63dd265e974e1d8918a1df90c2b14bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicWeightedVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3a27e2121083bd8bfc84ca3865c28e58d4505d783da56b604e83814cd095a4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicWeightedVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bf61d2c-822f-6350-0d66-2060e90e9fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseWeightedReciprocal_Ico_eq_abel
    (a : ℕ → ℂ)
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      a n * coreGrowingShiftEndpointTransverseNatCharacter j u n /
        (((n + R : ℕ) : ℂ))) =
      (a (B - 1) / ((((B - 1) + R : ℕ) : ℂ))) *
          (∑ n ∈ Finset.Ico A B,
            coreGrowingShiftEndpointTransverseNatCharacter j u n) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (a k / (((k + R : ℕ) : ℂ)) -
              a (k + 1) / ((((k + 1) + R : ℕ) : ℂ))) *
            (∑ n ∈ Finset.Ico A (k + 1),
              coreGrowingShiftEndpointTransverseNatCharacter j u n) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter,
    div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
    GRWTSK.NumberTheory.CharacterSums.sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
      (q := coreGrowingShiftEndpointDoubledFourierModulus j)
      (a := fun n => a n / (((n + R : ℕ) : ℂ)))
      u A B hAB

/-- Authentic endpoint variation transfer.  This is valid for empty and
reversed intervals as well as nonempty intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicWeightedVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicWeightedVariation.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b446847c63dd265e974e1d8918a1df90c2b14bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
