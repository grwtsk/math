# profile_integer_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43af0ff5-d536-691f-df3e-5f211d52bcca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c729a6ac-704e-68aa-0a57-8bcc61fc3c9f",
  "kind": "theorem",
  "lexical_name": "profile_integer_sum_bound",
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
  "slug": "profile-integer-sum-bound--803272dfefc435109875aa1c",
  "source": {
    "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:803272dfefc435109875aa1c047e66e766b80a773b5405fdca0dd96cddc8de35",
  "verification": {
    "reference": "docs/verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c729a6ac-704e-68aa-0a57-8bcc61fc3c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_integer_sum_bound {u : ℝ} (hu : 0 ≤ u) :
    (∑ n ∈ integerInventory u, profile u n) ≤ u := by
  let N := ⌊Real.exp u⌋₊
  have h1x : 1 ≤ Real.exp u := by simpa using Real.exp_le_exp.mpr hu
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos u).le).mpr
    simpa using h1x
  have hNle : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have h1N : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hanti : AntitoneOn (profile u) (Icc (1 : ℝ) N) :=
    profile_antitone.mono (Icc_subset_Icc_right hNle)
  have hs := antitone_sum_first_integral hN hanti
  have hif : IntervalIntegrable (profile u) volume 1 (Real.exp u) :=
    (profile_continuousOn (u := u)).intervalIntegrable_of_Icc h1x
  have hi : (∫ t in (1 : ℝ)..N, profile u t) ≤
      ∫ t in (1 : ℝ)..Real.exp u, profile u t :=
    intervalIntegral.integral_mono_interval le_rfl h1N hNle
      (Filter.Eventually.of_forall (fun t => sq_nonneg _)) hif
  exact (show (∑ n ∈ integerInventory u, profile u n) ≤
    profile u 1 + ∫ t in (1 : ℝ)..N, profile u t from hs).trans
      ((by linarith : profile u 1 + (∫ t in (1 : ℝ)..N, profile u t) ≤
        profile u 1 + (∫ t in (1 : ℝ)..Real.exp u, profile u t)).trans
          (profile_endpoint_integral_bound hu))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
