# source_upper_row_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79ca41c1-08ce-0ae8-6f24-fda997b32f0a",
  "kind": "theorem",
  "lexical_name": "source_upper_row_inversion",
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
  "slug": "source-upper-row-inversion--9b1c3e73efd67f3b0bd1b0b0",
  "source": {
    "blob": "2202929344c6c0b07f8012228ee33e49862b7076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 99,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b1c3e73efd67f3b0bd1b0b0a024cbddfdfdb28274af8a0b8e891cfc926fd1cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79ca41c1-08ce-0ae8-6f24-fda997b32f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_upper_row_inversion (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) :
    (∑ j ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      ThetaKernelTransport.thetaKernel A (i * j)) = SourceSampling.sourceSamplingKernel A i := by
  let N := ⌊Real.exp A⌋₊
  let B := ⌊Real.exp (2 * A)⌋₊
  let F : ℕ → ℝ := fun n ↦ SourceSampling.sourceSamplingKernel A ((i * n : ℕ) : ℝ)
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
    simpa only [Nat.cast_one] using (Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A))
  have hNB : N ≤ B := Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hF : ∀ n, N < n → F n = 0 := fun n hn ↦ source_upper_row_support A i n hi hn
  calc
    _ = ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
        ∑ k ∈ Icc 1 B, F (j * k) := by
      apply sum_congr rfl
      intro j hj
      have hj1 := (mem_Icc.mp hj).1
      rw [ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel A (i * j)
        (Nat.mul_pos (show 1 ≤ i by omega) hj1)]
      congr 1
      apply sum_congr rfl
      intro k _
      simp only [F, Nat.mul_assoc]
    _ = F 1 := finite_moebius_upper_inversion N B F hN hNB hF
    _ = _ := by simp only [F, Nat.mul_one]

/-- The original closed lower core and strict-upper complement partition the positive cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionStatements/Variant28671d16eedcb65853fb6cb6716c6781ebe44c47398b7b846f3f6bf1cf87bdba.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2202929344c6c0b07f8012228ee33e49862b7076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
