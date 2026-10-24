# PXc_part_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4f435ef-5ea0-7bd3-9b24-b9948a11de29",
  "kind": "lemma",
  "lexical_name": "PXc_part_integrable",
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
  "slug": "pxc-part-integrable--156729d6dce2263103d9407c",
  "source": {
    "blob": "b7f058ea3d12e02b6f34456557fc66c69d693d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 687,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:156729d6dce2263103d9407c4b8197ff6476e3a19f8cb3847150db6c3ffa701d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4f435ef-5ea0-7bd3-9b24-b9948a11de29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PXc_part_integrable (hF : LocalHypsCoreW cϱ p F) (hc : CoeffOK q c) (t : ℝ) :
    MeasureTheory.Integrable (fun r => F.phiHat r ^ 2 * PXc c p.X (t + r)) := by
  refine hF.phiHat_sq_mul_integrable_of_bdd
    ((PXc_continuous c p.X_pos).comp (continuous_const_add t))
    (c := 1 / Real.pi * ∑ n ∈ Finset.Ioc 0 ⌊p.X⌋₊,
      (Λ n : ℝ) * (n : ℝ) ^ (-(1/2 : ℝ)) * 2) (fun x => ?_)
  rw [PXc_eq_sum_cos_sin, abs_mul, abs_neg,
    abs_of_pos (by positivity : (0:ℝ) < 1 / Real.pi)]
  gcongr
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n hn => ?_)
  have hn0 : 0 < n := (Finset.mem_Ioc.1 hn).1
  have ha : (0:ℝ) ≤ (Λ n : ℝ) * (n : ℝ) ^ (-(1/2 : ℝ)) := by
    have h0 := ArithmeticFunction.vonMangoldt_nonneg (n := n)
    positivity
  rw [abs_mul, abs_of_nonneg ha]
  gcongr
  have h1 := hc.norm_le n
  have h2 : |(c n).re| ≤ 1 := (Complex.abs_re_le_norm _).trans h1
  have h3 : |(c n).im| ≤ 1 := (Complex.abs_im_le_norm _).trans h1
  calc |(c n).re * Real.cos ((t + x) * Real.log n) + (c n).im * Real.sin ((t + x) * Real.log n)|
      ≤ |(c n).re * Real.cos ((t + x) * Real.log n)|
          + |(c n).im * Real.sin ((t + x) * Real.log n)| := abs_add_le _ _
    _ ≤ 1 * 1 + 1 * 1 := by
        rw [abs_mul, abs_mul]
        exact add_le_add (mul_le_mul h2 (Real.abs_cos_le_one _) (abs_nonneg _) zero_le_one)
          (mul_le_mul h3 (Real.abs_sin_le_one _) (abs_nonneg _) zero_le_one)
    _ = 2 := by norm_num

/-- Diagonal decomposition for χ: G_kk = μ_χ-part + P-part (no Π). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant7be0edcf892154aaa300dc0bb7502b743ce9709067f095d383a6d4df8f7ce063.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f058ea3d12e02b6f34456557fc66c69d693d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
