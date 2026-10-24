# hardy_sigma_delayed_bound

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
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f37ce65-735a-a6c2-0694-e3d0a443f6c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93227c08-7229-2caa-ca52-3a6872f1b4bb",
  "kind": "theorem",
  "lexical_name": "hardy_sigma_delayed_bound",
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
  "slug": "hardy-sigma-delayed-bound--67fa59fc32c474261e95dfcf",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fa59fc32c474261e95dfcfd3127987bbdabd89de6209cf7b9e35a5f6327e21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93227c08-7229-2caa-ca52-3a6872f1b4bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_sigma_delayed_bound (u : ℕ → ℝ) (n k : ℕ) (A : ℝ) (hk : k ≠ 0)
    (h_u_bound : ∀ m, n < m → m ≤ n + k → |u m| ≤ A / m) :
    |hardy_sigma_delayed u n k - hardy_s u n| ≤ (k : ℝ) / (n + 1) * A := by
  -- Applying the bound $|u_{n+j}| \leq A / (n+j)$ to each term in the sum.
  have h_sum_bound : ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * |u (n + j)| ≤ ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * (A / (n + j : ℝ)) := by
    exact Finset.sum_le_sum fun x hx => mul_le_mul_of_nonneg_left ( mod_cast h_u_bound _ ( by linarith [ Finset.mem_Icc.mp hx ] ) ( by linarith [ Finset.mem_Icc.mp hx ] ) ) ( by linarith [ show ( x : ℝ ) ≤ k by norm_cast; linarith [ Finset.mem_Icc.mp hx ] ] );
  -- Applying the bound $|(k - j + 1) u_{n+j}| \leq k |u_{n+j}|$ to each term in the sum.
  have h_sum_bound' : ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * |u (n + j)| ≤ ∑ j ∈ Finset.Icc 1 k, k * (A / (n + 1 : ℝ)) := by
    refine le_trans h_sum_bound <| Finset.sum_le_sum fun x hx => mul_le_mul ?_ ?_ ?_ ?_;
    · linarith [ show ( x : ℝ ) ≥ 1 by norm_cast; linarith [ Finset.mem_Icc.mp hx ] ];
    · field_simp;
      rw [ div_le_iff₀ ] <;> nlinarith only [ show ( x : ℝ ) ≥ 1 by norm_cast; linarith [ Finset.mem_Icc.mp hx ], show ( n : ℝ ) ≥ 0 by positivity, show ( A : ℝ ) ≥ 0 by exact le_of_not_gt fun h => by have := h_u_bound ( n + 1 ) ( by linarith [ Finset.mem_Icc.mp hx ] ) ( by linarith [ Finset.mem_Icc.mp hx ] ) ; rw [ le_div_iff₀ ] at this <;> norm_num at * <;> nlinarith [ abs_nonneg ( u ( n + 1 ) ) ] ];
    · exact le_trans ( abs_nonneg _ ) ( h_u_bound ( n + x ) ( by linarith [ Finset.mem_Icc.mp hx ] ) ( by linarith [ Finset.mem_Icc.mp hx ] ) ) |> le_trans <| by norm_num;
    · positivity;
  -- Applying the bound $|(k - j + 1) u_{n+j}| \leq k |u_{n+j}|$ to each term in the sum and using the triangle inequality.
  have h_triangle : |hardy_sigma_delayed u n k - hardy_s u n| ≤ (1 / k : ℝ) * ∑ j ∈ Finset.Icc 1 k, (k - j + 1 : ℝ) * |u (n + j)| := by
    rw [ hardy_sigma_delayed_sub_s_eq u n k hk ];
    rw [ abs_mul, abs_of_nonneg ( by positivity ) ];
    exact mul_le_mul_of_nonneg_left ( le_trans ( Finset.abs_sum_le_sum_abs _ _ ) ( Finset.sum_le_sum fun _ _ => by rw [ abs_mul, abs_of_nonneg ] ; linarith [ show ( ↑‹ℕ› : ℝ ) ≤ k by norm_cast; linarith [ Finset.mem_Icc.mp ‹_› ] ] ) ) ( by positivity );
  convert h_triangle.trans ( mul_le_mul_of_nonneg_left h_sum_bound' <| by positivity ) using 1 ; norm_num ; ring_nf;
  simp +decide [ sq, mul_right_comm, hk ]

/-
Properties of k_n = floor(epsilon * n): eventually positive and n/k_n is bounded.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
