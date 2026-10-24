# logSquare_integer_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f29ec908074cd5bd59eb2b9ec46d7af938a5f941",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f6da3f0-aa79-4712-6cd3-9ba3076ee132",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7fafe46-eb24-5bf2-3403-b2f1e351eda3",
  "kind": "theorem",
  "lexical_name": "logSquare_integer_bounds",
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
  "slug": "logsquare-integer-bounds--db0ef6b8d4c1baf693df406f",
  "source": {
    "blob": "f29ec908074cd5bd59eb2b9ec46d7af938a5f941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0ef6b8d4c1baf693df406f2a517d89f9e26280af9587055fd14f3ba9e64391",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7fafe46-eb24-5bf2-3403-b2f1e351eda3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSquare_integer_bounds (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      ∫ t in 1..(N : ℝ), (Real.log t) ^ 2 ∧
    (∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
      (∫ t in 1..(N : ℝ), (Real.log t) ^ 2) ≤ (Real.log (N : ℝ)) ^ 2 := by
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNext : (1 : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤ N + 1)
    have hle : (N : ℝ) ≤ (N + 1 : ℕ) := by exact_mod_cast Nat.le_succ N
    have hi := logSquare_intervalIntegrable (N : ℝ) (N + 1 : ℕ) hN1 hNext
    have hlo : (Real.log (N : ℝ)) ^ 2 ≤
        ∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N : ℝ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ)) hi
        (fun t ht => logSquare_monotoneOn hN1 (hN1.trans ht.1) ht.1)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hhi : (∫ t in (N : ℝ)..(N + 1 : ℕ), (Real.log t) ^ 2) ≤
        (Real.log (N + 1 : ℕ)) ^ 2 := by
      have h := intervalIntegral.integral_mono_on hle hi
        (intervalIntegrable_const : IntervalIntegrable
          (fun _ : ℝ => (Real.log (N + 1 : ℕ)) ^ 2) volume (N : ℝ) (N + 1 : ℕ))
        (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hNext ht.2)
      simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
        add_sub_cancel_left, smul_eq_mul, one_mul] using h
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    constructor <;> linarith [ih.1, ih.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f29ec908074cd5bd59eb2b9ec46d7af938a5f941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
