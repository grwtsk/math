# joint_remainder_eq_complete_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39623519-d4cc-6a07-5eaf-9f748a72e4be",
  "kind": "theorem",
  "lexical_name": "joint_remainder_eq_complete_signed_block",
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
  "slug": "joint-remainder-eq-complete-signed-block--2e0b1265afc2607010dbc576",
  "source": {
    "blob": "eba887522b2b32be66072ea7993028227a4ca937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant566bde031a4ae347b06b662fbb3209808365276eac6f4e68508548be69740359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0b1265afc2607010dbc57627c5e31c01e9711f6ea114e806a0e34cbb71a601",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant566bde031a4ae347b06b662fbb3209808365276eac6f4e68508548be69740359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39623519-d4cc-6a07-5eaf-9f748a72e4be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_remainder_eq_complete_signed_block (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = completeSignedSamplingBlock A - oldDiagonalError A := by
  rw [jointSignedRemainder_eq_original_sampling_rows A hA]
  simp only [mul_add, mul_sub, mul_neg, Finset.sum_add_distrib,
    Finset.sum_sub_distrib, Finset.sum_neg_distrib]
  rw [actual_complete_short_multiples A hA, actual_complete_divisible_diagonal A hA]
  have hp := short_add_long_inventory A hA
    (fun m => vonMangoldt m * sourcePlainWeight A (m : ℝ))
  have hj : allMangoldtSamplingMain A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (∑ m ∈ longInventory A, vonMangoldt m *
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) +
      shortPlainMainTerm A (sourcePlainSamplingMainTerm A) := by
    unfold allMangoldtSamplingMain shortPlainMainTerm
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    have hc : (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * vonMangoldt m *
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) =
        realMoebius d * (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      ring
    rw [hc, ← mul_add, add_comm, short_add_long_inventory A hA]
  unfold completeSignedSamplingBlock oldDiagonalError fullMangoldtRow
    globalBaseline shortLogMainTerm shortMangoldtSource
  rw [hj]
  unfold shortPlainMainTerm
  simp_rw [Finset.mul_sum]
  simp only [mul_assoc]
  linarith only [hp]

/-- The canceled diagonal block already has an unconditional fixed source budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant566bde031a4ae347b06b662fbb3209808365276eac6f4e68508548be69740359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant566bde031a4ae347b06b662fbb3209808365276eac6f4e68508548be69740359.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba887522b2b32be66072ea7993028227a4ca937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
