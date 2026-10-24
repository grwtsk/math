# posLog_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6808e95f-84e4-1cac-08d8-2156ab5af770",
  "kind": "theorem",
  "lexical_name": "posLog_sum",
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
  "slug": "poslog-sum--16dedde72adf7bcb3d06da45",
  "source": {
    "blob": "d7aefd9ffdb51543ce53e92808b7303ed08c41e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16dedde72adf7bcb3d06da458d1b8a25650892c63b03edc2e0b250cb8e7f9d01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6808e95f-84e4-1cac-08d8-2156ab5af770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posLog_sum {α : Type*} (s : Finset α) (f : α → ℝ) :
    log⁺ (∑ t ∈ s, f t) ≤ log (s.card) + ∑ t ∈ s, log⁺ (f t) := by
  -- Trivial case: empty sum
  by_cases hs : s = ∅
  · simp [hs, posLog]
  -- Nontrivial case: Obtain maximal element…
  obtain ⟨t_max, ht_max⟩ := s.exists_max_image (fun t ↦ |f t|)
    (Finset.nonempty_iff_ne_empty.mpr hs)
  -- …then calculate
  calc log⁺ (∑ t ∈ s, f t)
  _ = log⁺ |∑ t ∈ s, f t| := by
    rw [Real.posLog_abs]
  _ ≤ log⁺ (∑ t ∈ s, |f t|) := by
    apply monotoneOn_posLog (by simp) (by simp [Finset.sum_nonneg])
    simp [Finset.abs_sum_le_sum_abs]
  _ ≤ log⁺ (∑ t ∈ s, |f t_max|) := by
    apply monotoneOn_posLog (by simp [Finset.sum_nonneg]) (by simp [Finset.sum_nonneg]; positivity)
    apply Finset.sum_le_sum (fun i ih ↦ ht_max.2 i ih)
  _ = log⁺ (s.card * |f t_max|) := by
    simp [Finset.sum_const]
  _ ≤ log s.card + log⁺ |f t_max| := posLog_nat_mul
  _ ≤ log s.card + ∑ t ∈ s, log⁺ (f t) := by
    gcongr
    rw [posLog_abs]
    apply Finset.single_le_sum (fun _ _ ↦ posLog_nonneg) ht_max.1

/-- Estimate for `log⁺` of a sum. See `Real.posLog_sum` for a variant involving
multiple summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7aefd9ffdb51543ce53e92808b7303ed08c41e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
