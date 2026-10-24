# short_moebius_quotient_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d56678e1-5fe6-3a4d-f9ef-bbb45b866e09",
  "kind": "theorem",
  "lexical_name": "short_moebius_quotient_triangle",
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
  "slug": "short-moebius-quotient-triangle--45fb3076d5c6651cad42fba4",
  "source": {
    "blob": "cbef27e04d908016dc2cd0372dc5d7a53a70de88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45fb3076d5c6651cad42fba48ea84e30d3877208f619a02739ccd4abe344f6e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d56678e1-5fe6-3a4d-f9ef-bbb45b866e09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem short_moebius_quotient_triangle (U : ℕ) (hU : 1 ≤ U)
    (f : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      ∑ k ∈ Finset.Icc 1 (U / d), f (d * k)) = f 1 := by
  classical
  let w : ℕ → ℝ := fun n => if n ≤ U then f n else 0
  have hw (n : ℕ) (hn : U < n) : w n = 0 := by
    simp [w, Nat.not_le.mpr hn]
  have hv := finite_convolution_sum U (moebius : ArithmeticFunction ℝ)
    (zeta : ArithmeticFunction ℝ) w hw
  rw [coe_moebius_mul_coe_zeta] at hv
  have hl : (∑ n ∈ Finset.Icc 1 U, (1 : ArithmeticFunction ℝ) n * w n) = f 1 := by
    simp [ArithmeticFunction.one_apply, w, hU]
  have hi (d : ℕ) (hd : 1 ≤ d) :
      (∑ k ∈ Finset.Icc 1 U, (zeta : ArithmeticFunction ℝ) k * w (d * k)) =
        ∑ k ∈ Finset.Icc 1 (U / d), f (d * k) := by
    have hz :
        (∑ k ∈ Finset.Icc 1 U, (zeta : ArithmeticFunction ℝ) k * w (d * k)) =
          ∑ k ∈ Finset.Icc 1 U, if d * k ≤ U then f (d * k) else 0 := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega),
        Nat.cast_one, one_mul]
      rfl
    rw [hz]
    symm
    calc
      _ = ∑ k ∈ Finset.Icc 1 (U / d),
          if d * k ≤ U then f (d * k) else 0 := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [if_pos (by
          have h := (Nat.le_div_iff_mul_le hd).1 (Finset.mem_Icc.mp hk).2
          simpa only [Nat.mul_comm] using h)]
      _ = _ := by
        apply Finset.sum_subset
          (by
            intro k hk
            exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1,
              (Finset.mem_Icc.mp hk).2.trans (Nat.div_le_self U d)⟩)
        intro k hk hnot
        rw [if_neg (by
          intro h
          apply hnot
          exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1,
            (Nat.le_div_iff_mul_le hd).2 (by simpa only [Nat.mul_comm] using h)⟩)]
  have hr :
      (∑ d ∈ Finset.Icc 1 U, ∑ k ∈ Finset.Icc 1 U,
        (moebius : ArithmeticFunction ℝ) d * (zeta : ArithmeticFunction ℝ) k *
          w (d * k)) =
        ∑ d ∈ Finset.Icc 1 U, realMoebius d *
          ∑ k ∈ Finset.Icc 1 (U / d), f (d * k) := by
    apply Finset.sum_congr rfl
    intro d hd
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, hi d (Finset.mem_Icc.mp hd).1]
    simp only [intCoe_apply, realMoebius]
  calc
    _ = _ := hr.symm
    _ = _ := hv.symm
    _ = f 1 := hl

/-- The complete signed physical boundary is the original long Mangoldt unit column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbef27e04d908016dc2cd0372dc5d7a53a70de88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
