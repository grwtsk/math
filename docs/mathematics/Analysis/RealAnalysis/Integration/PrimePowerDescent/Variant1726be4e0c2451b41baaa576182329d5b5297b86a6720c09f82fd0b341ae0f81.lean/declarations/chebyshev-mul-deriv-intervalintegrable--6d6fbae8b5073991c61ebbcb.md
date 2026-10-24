# chebyshev_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc8ffbcd-5e2c-2f95-c00b-2525b0223398",
  "kind": "theorem",
  "lexical_name": "chebyshev_mul_deriv_intervalIntegrable",
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
  "slug": "chebyshev-mul-deriv-intervalintegrable--6d6fbae8b5073991c61ebbcb",
  "source": {
    "blob": "3a91d1da973c2c5f8d4fcac7ee8fee07fad01995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d6fbae8b5073991c61ebbcbc724f565abe9c24c97b5945b8cbad6c363cf5cfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8ffbcd-5e2c-2f95-c00b-2525b0223398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_mul_deriv_intervalIntegrable (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t ↦ chebyshevPrimePower (Real.exp t) * deriv F t)
      volume lowerEndpoint b := by
  have hs : IntervalIntegrable (fun t ↦ ∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then deriv F t else 0))
      volume lowerEndpoint b := by
    have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
        fun t : ℝ ↦ ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) volume lowerEndpoint b :=
      IntervalIntegrable.sum (primePowerInventory b) (fun n _ ↦
      (intervalIntegrable_closed_step lowerEndpoint b (Real.log n) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable lowerEndpoint b)).const_mul
          (ArithmeticFunction.vonMangoldt n))
    have heq : (∑ n ∈ primePowerInventory b,
        fun t : ℝ ↦ ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) =
        (fun t ↦ ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n *
          (if Real.log n ≤ t then deriv F t else 0)) := by
      funext t
      simp only [Finset.sum_apply]
    rw [heq] at hi
    exact hi
  apply hs.congr
  intro t ht
  exact (chebyshev_mul_eq_steps b t (deriv F t)
    ((uIoc_of_le hb ▸ ht).2)).symm

/-- Exact finite Stieltjes summation for the actual closed-right Chebyshev count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a91d1da973c2c5f8d4fcac7ee8fee07fad01995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
