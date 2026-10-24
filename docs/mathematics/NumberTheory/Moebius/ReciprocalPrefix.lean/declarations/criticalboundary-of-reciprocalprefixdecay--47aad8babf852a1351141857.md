# criticalBoundary_of_reciprocalPrefixDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5211941-4f38-e355-2f29-5cd08f2def95",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_reciprocalPrefixDecay",
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
  "slug": "criticalboundary-of-reciprocalprefixdecay--47aad8babf852a1351141857",
  "source": {
    "blob": "9014c091e12c7104e8087204b2aa12552b6a7afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47aad8babf852a135114185772ff6f0bea9190bf3ef0764646fe4ddaa5e2c974",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5211941-4f38-e355-2f29-5cd08f2def95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_reciprocalPrefixDecay {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    CriticalBoundaryVerticalLineUniform := by
  apply criticalBoundary_of_nonnegative_mertensPowerSaving
      (C := C + C / β) (β := β)
  · exact add_nonneg hC (div_nonneg hC hβ0.le)
  · exact hβ0.le
  · exact hβ1
  · exact pickupMertensPrefix_le_of_reciprocalPrefixDecay hC hβ0 hβ1 hR

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_eq_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_abs_le_reciprocalPartialSummation
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.pickupMertensPrefix_le_of_reciprocalPrefixDecay
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefix.criticalBoundary_of_reciprocalPrefixDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9014c091e12c7104e8087204b2aa12552b6a7afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
