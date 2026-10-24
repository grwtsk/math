# differencePrimitiveSamplingKernel_eq_fixed_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e168f4-909c-8f53-bc34-dfc602624ded",
  "kind": "theorem",
  "lexical_name": "differencePrimitiveSamplingKernel_eq_fixed_sum",
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
  "slug": "differenceprimitivesamplingkernel-eq-fixed-sum--559de483dee1ecf5a7a64adc",
  "source": {
    "blob": "6c2493b3f8c282529b1ff3a350e9351ce7a0bd20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559de483dee1ecf5a7a64adcb617c908278115eac1568fd2ac688651e529c44b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e168f4-909c-8f53-bc34-dfc602624ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differencePrimitiveSamplingKernel_eq_fixed_sum (A x : ℝ)
    (hA : 1 ≤ A) (hx : 1 ≤ x) :
    differencePrimitiveSamplingKernel A x =
      ∑ l ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
        Real.log (l : ℝ) / Real.sqrt (x * (l : ℝ)) *
          (correlationPrimitive A (Real.log (x * (l : ℝ))) -
            sourceCorrelation explicitSecondDerivative A (Real.log (x * (l : ℝ)))) := by
  rw [differencePrimitiveSamplingKernel_eq,
    SourcePrimitiveSampling.sourcePrimitiveSamplingKernel_eq_fixed_sum A x hA hx]
  have hx0 : 0 < x := zero_lt_one.trans_le hx
  have hN : Real.exp (2 * A) / x ≤ (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ) := by
    have h := (div_le_self (Real.exp_pos (2 * A)).le hx).trans
      (Nat.lt_floor_add_one (Real.exp (2 * A))).le
    simpa only [Nat.cast_add, Nat.cast_one] using h
  rw [kernel_eq_fixed_sum A x _ hA hx0 hN]
  simp_rw [mul_sub, mul_neg, sum_sub_distrib, sum_neg_distrib, neg_neg]


open InnerPrimitiveTransport

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2493b3f8c282529b1ff3a350e9351ce7a0bd20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
