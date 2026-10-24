# hardy_k_ratio_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26ea2976-c14b-6118-0d5f-f7e5138a9b5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6eb872e5-da7a-5217-3583-28d6e96ba46d",
  "kind": "lemma",
  "lexical_name": "hardy_k_ratio_bounded",
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
  "slug": "hardy-k-ratio-bounded--fb6e3f5e40cf84ac56ee5143",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb6e3f5e40cf84ac56ee514330b45d0d8421dce84c7a41628caeebe2f5a0aece",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eb872e5-da7a-5217-3583-28d6e96ba46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hardy_k_ratio_bounded (ε : ℝ) (hε : 0 < ε) :
    Filter.IsBoundedUnder (· ≤ ·) Filter.atTop (fun (n : ℕ) => (n : ℝ) / (hardy_k ε n : ℝ)) := by
  -- We know `hardy_k ε n = max 1 (floor (ε * n))`. Eventually `floor (ε * n) >= 1`, so `hardy_k = floor`.
  have h_eventually_floor : ∀ᶠ n in Filter.atTop, hardy_k ε n = Nat.floor (ε * n) := by
    simp +zetaDelta at *;
    exact ⟨ ⌈ε⁻¹⌉₊ + 1, fun n hn => max_eq_right <| Nat.floor_pos.mpr <| by nlinarith [ Nat.le_ceil ( ε⁻¹ ), show ( n : ℝ ) ≥ ⌈ε⁻¹⌉₊ + 1 by exact_mod_cast hn, mul_inv_cancel₀ hε.ne' ] ⟩;
  -- We already proved `n / floor` is bounded in `k_n_properties`.
  have h_bounded_floor : Filter.IsBoundedUnder (· ≤ ·) Filter.atTop (fun n : ℕ => (n : ℝ) / (Nat.floor (ε * n)) : ℕ → ℝ) := by
    exact k_n_properties ε hε |>.1;
  obtain ⟨ C, hC ⟩ := h_bounded_floor;
  refine' ⟨ Max.max C 1, Filter.eventually_atTop.mpr _ ⟩;
  obtain ⟨ N, hN ⟩ := Filter.eventually_atTop.mp hC; obtain ⟨ M, hM ⟩ := Filter.eventually_atTop.mp h_eventually_floor; use Max.max N M; intros n hn; aesop;

/-
Hardy's Tauberian Theorem: If the arithmetic means of partial sums of a series converge to S, and the terms are O(1/n), then the series converges to S.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
