# finite_second_abel_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:644bb541-d92f-18da-a2b0-45ded81cd640",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59964def-574b-0cbe-2b98-272d8c5695df",
  "kind": "theorem",
  "lexical_name": "finite_second_abel_identity",
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
  "slug": "finite-second-abel-identity--225503934f93fc12107a49f1",
  "source": {
    "blob": "0c42f09290414d90b352cd246d303a54d94c5ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:225503934f93fc12107a49f1971262402b9bc264e0c645001f80b09a1ca6f366",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59964def-574b-0cbe-2b98-272d8c5695df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_second_abel_identity (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 2 F) (B : ℝ)
    (hthreshold : ∀ n ∈ S, 0 ≤ threshold n ∧ threshold n ≤ B)
    (hFB : F B = 0) (hF'B : deriv F B = 0) :
    (∑ n ∈ S, weight n * F (threshold n)) -
      (∫ t in (0 : ℝ)..B, Real.exp t * F t) =
      ∫ t in (0 : ℝ)..B, finiteAbelPrimitive S threshold weight t * deriv (deriv F) t := by
  have hFcc : Continuous (deriv (deriv F)) :=
    (hF.deriv' (n := 1)).continuous_deriv_one
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ S,
      weight n * (max (t - threshold n) 0 * deriv (deriv F) t)) volume 0 B := by
    apply Continuous.intervalIntegrable
    exact continuous_finsetSum S (fun n _ ↦
      ((((continuous_id.sub continuous_const).max continuous_const).mul hFcc).const_mul
        (weight n)))
  have hc : Continuous (fun t ↦ (Real.exp t - 1 - t) * deriv (deriv F) t) := by
    fun_prop
  have he (t : ℝ) : finiteAbelPrimitive S threshold weight t * deriv (deriv F) t =
      (∑ n ∈ S, weight n * (max (t - threshold n) 0 * deriv (deriv F) t)) -
        (Real.exp t - 1 - t) * deriv (deriv F) t := by
    simp [finiteAbelPrimitive, sub_mul, Finset.sum_mul, mul_assoc]
  simp_rw [he]
  rw [intervalIntegral.integral_sub hs (hc.intervalIntegrable 0 B),
    intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul]
    rw [continuum_second_abel F hF B hFB hF'B]
    congr 1
    exact Finset.sum_congr rfl (fun n hn ↦ by
      rw [ramp_second_abel_atom F hF B (threshold n)
        (hthreshold n hn).1 (hthreshold n hn).2 hFB hF'B])
  · intro n _
    have hn : Continuous (fun t ↦ weight n *
        (max (t - threshold n) 0 * deriv (deriv F) t)) := by fun_prop
    exact hn.intervalIntegrable 0 B

/-- The actual finite lower-sector Chebyshev count keeps every strict prime and square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variant4a345fc8ccfe1365d7f4befca2aa8b5b229b2024c7334de7e1d74e28ea21e526.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c42f09290414d90b352cd246d303a54d94c5ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
