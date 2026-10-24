# sourceMobiusKernel_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f953c3f-03a9-bab0-3f9e-72c5604514fb",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_deriv_abs_le",
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
  "slug": "sourcemobiuskernel-deriv-abs-le--92148676438b021f143d8910",
  "source": {
    "blob": "85d73aa9c149bd1752525d3fa69c1fa5f086305b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant52015fbe2fb44b9fcd1410d4bdc438e054761a04c5cc1882f0771550667e454a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92148676438b021f143d8910b51cc84202a49452a9d1194de78e90a9eba2cbfb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant52015fbe2fb44b9fcd1410d4bdc438e054761a04c5cc1882f0771550667e454a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f953c3f-03a9-bab0-3f9e-72c5604514fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_deriv_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / (x * Real.sqrt x) := by
  have hx0 : 0 < x := by linarith
  have hE := sourceMobiusKernel_euler_deriv_abs_le A x hA hx
  have hK := sourceMobiusKernel_abs_le A x hA hx
  have he : x * deriv (sourceMobiusKernel A) x =
      (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
        sourceMobiusKernel A x / 2 := by ring
  have h : |(x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
      sourceMobiusKernel A x / 2| ≤
      |x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2| +
        |sourceMobiusKernel A x / 2| := by
    simpa only [sub_eq_add_neg, abs_neg] using
      abs_add_le (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2)
        (-(sourceMobiusKernel A x / 2))
  rw [← he, abs_mul, abs_of_pos hx0, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  have hr : (40 / A + 260 / (3 * A ^ 2)) / Real.sqrt x +
      ((8 + 20 / A) / Real.sqrt x) / 2 =
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by ring
  have hb : x * |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by
    rw [← hr]
    linarith
  apply (le_div_iff₀ (mul_pos hx0 (Real.sqrt_pos.2 hx0))).2
  have hm := mul_le_mul_of_nonneg_right hb (Real.sqrt_nonneg x)
  simpa only [div_mul_cancel₀ _ (Real.sqrt_pos.2 hx0).ne', mul_assoc, mul_comm x] using hm

/-- The same derivative envelope with the conventional power `x^(3/2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant52015fbe2fb44b9fcd1410d4bdc438e054761a04c5cc1882f0771550667e454a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant52015fbe2fb44b9fcd1410d4bdc438e054761a04c5cc1882f0771550667e454a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d73aa9c149bd1752525d3fa69c1fa5f086305b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
