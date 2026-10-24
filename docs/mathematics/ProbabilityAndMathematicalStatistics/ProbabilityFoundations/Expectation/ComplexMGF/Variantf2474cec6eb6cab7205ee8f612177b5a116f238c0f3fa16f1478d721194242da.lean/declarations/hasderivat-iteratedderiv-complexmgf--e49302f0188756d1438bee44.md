# hasDerivAt_iteratedDeriv_complexMGF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6598da0-9034-91b4-afd2-9545017cbc46",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_iteratedDeriv_complexMGF",
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
  "slug": "hasderivat-iteratedderiv-complexmgf--e49302f0188756d1438bee44",
  "source": {
    "blob": "5a323cace15f2ccbcaef485538525de60470b828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 213,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49302f0188756d1438bee4425253d107cb3e6135bfa4082b4fccc0102f078cb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6598da0-9034-91b4-afd2-9545017cbc46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_iteratedDeriv_complexMGF (hz : z.re ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    HasDerivAt (iteratedDeriv n (complexMGF X μ)) μ[fun ω ↦ X ω ^ (n + 1) * cexp (z * X ω)] z := by
  induction n generalizing z with
  | zero => simp [hasDerivAt_complexMGF hz]
  | succ n hn =>
    rw [iteratedDeriv_succ]
    have : deriv (iteratedDeriv n (complexMGF X μ))
        =ᶠ[𝓝 z] fun z ↦ μ[fun ω ↦ X ω ^ (n + 1) * cexp (z * X ω)] := by
      have h_mem : ∀ᶠ y in 𝓝 z, y.re ∈ interior (integrableExpSet X μ) := by
        refine IsOpen.eventually_mem ?_ hz
        exact isOpen_interior.preimage Complex.continuous_re
      filter_upwards [h_mem] with y hy using HasDerivAt.deriv (hn hy)
    rw [EventuallyEq.hasDerivAt_iff this]
    exact hasDerivAt_integral_pow_mul_exp hz (n + 1)

/-- For `z : ℂ` with `z.re ∈ interior (integrableExpSet X μ)`, the n-th derivative of the function
`complexMGF X μ` at `z` is `μ[X ^ n * cexp (z * X)]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variantf2474cec6eb6cab7205ee8f612177b5a116f238c0f3fa16f1478d721194242da.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a323cace15f2ccbcaef485538525de60470b828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
