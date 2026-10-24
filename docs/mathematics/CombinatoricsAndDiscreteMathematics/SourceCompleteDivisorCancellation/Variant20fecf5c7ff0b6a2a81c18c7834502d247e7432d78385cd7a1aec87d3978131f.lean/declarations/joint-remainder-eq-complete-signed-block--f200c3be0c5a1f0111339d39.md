# joint_remainder_eq_complete_signed_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2acaf51a-4da6-9f61-0142-df48b9bf89ff",
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
  "slug": "joint-remainder-eq-complete-signed-block--f200c3be0c5a1f0111339d39",
  "source": {
    "blob": "1a930f3015cb64c7d0f10bb2e3636a5be71514b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant20fecf5c7ff0b6a2a81c18c7834502d247e7432d78385cd7a1aec87d3978131f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f200c3be0c5a1f0111339d39ea57b32ae2a7bf72e2a255901070c95fc80e3800",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant20fecf5c7ff0b6a2a81c18c7834502d247e7432d78385cd7a1aec87d3978131f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2acaf51a-4da6-9f61-0142-df48b9bf89ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–190.

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
    rw [← mul_add, add_comm, short_add_long_inventory A hA]
  unfold completeSignedSamplingBlock oldDiagonalError fullMangoldtRow
    globalBaseline shortLogMainTerm shortMangoldtSource
  rw [hj]
  linarith only [hp]

/-- A witness for this COMPLETE block would suffice; no such witness is constructed here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant20fecf5c7ff0b6a2a81c18c7834502d247e7432d78385cd7a1aec87d3978131f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variant20fecf5c7ff0b6a2a81c18c7834502d247e7432d78385cd7a1aec87d3978131f.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a930f3015cb64c7d0f10bb2e3636a5be71514b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
