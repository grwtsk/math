# density_right_slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77f54a5c-5835-1c53-a556-c9683bd1c6de",
  "kind": "theorem",
  "lexical_name": "density_right_slice",
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
  "slug": "density-right-slice--7db429b2a676b6a49949478f",
  "source": {
    "blob": "bb9d13f61ac6a36df6f81491ce98895897190f6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db429b2a676b6a49949478f145e93a86a767559938e83a44396ec5cfd267aea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f54a5c-5835-1c53-a556-c9683bd1c6de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_right_slice (A y : ℝ) (hA : 1 ≤ A)
    (hy : y ∈ Ioc (2 : ℝ) (Real.exp (2 * A))) :
    (∫ t in Ioc (Real.log 2) (2 * A), finiteDensity A (t, y)) =
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hyp : 0 < y := by linarith [hy.1]
  have hl : Real.log 2 < Real.log y :=
    (Real.log_lt_log_iff (by norm_num : (0 : ℝ) < 2) hyp).mpr hy.1
  have hu : Real.log y ≤ 2 * A := (Real.log_le_iff_le_exp hyp).mpr hy.2
  have he : Ioc (Real.log 2) (2 * A) ∩ Ici (Real.log y) = Icc (Real.log y) (2 * A) := by
    ext t
    simp only [mem_inter_iff, mem_Ioc, mem_Ici, mem_Icc]
    constructor
    · intro h; exact ⟨h.2, h.1.2⟩
    · intro h; exact ⟨⟨hl.trans_le h.1, h.2⟩, h.1⟩
  have hf : (fun t => finiteDensity A (t, y)) = (Ici (Real.log y)).indicator
      (fun t => shiftedActualChebyshev y * (literalXiWeight t y *
        deriv (deriv (cesaroWeight A)) t)) := by
    funext t
    unfold finiteDensity
    simp only [indicator_apply, mem_Ici, (Real.log_le_iff_le_exp hyp)]
    split_ifs <;> ring
  rw [hf, setIntegral_indicator measurableSet_Ici, he, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hu, intervalIntegral.integral_const_mul,
    inner_kernel_eq_actual_plain_derivative A y (by linarith) hyp]

/-- Complete original finite row contracts to the original plain-profile derivative, PLUS sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9d13f61ac6a36df6f81491ce98895897190f6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
