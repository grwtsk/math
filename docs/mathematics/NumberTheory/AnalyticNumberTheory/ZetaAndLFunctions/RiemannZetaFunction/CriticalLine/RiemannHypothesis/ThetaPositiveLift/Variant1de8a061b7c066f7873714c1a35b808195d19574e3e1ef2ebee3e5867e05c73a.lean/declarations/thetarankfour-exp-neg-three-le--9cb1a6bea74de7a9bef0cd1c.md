# thetaRankFour_exp_neg_three_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20b0c83d-ea85-5ce7-8f81-088114795bea",
  "kind": "theorem",
  "lexical_name": "thetaRankFour_exp_neg_three_le",
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
  "slug": "thetarankfour-exp-neg-three-le--9cb1a6bea74de7a9bef0cd1c",
  "source": {
    "blob": "7715a65ed23e6e48213dd9fa4f474501737ac431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cb1a6bea74de7a9bef0cd1c17be3226ef360c21f7f081b1afb70c45805c59bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20b0c83d-ea85-5ce7-8f81-088114795bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFour_exp_neg_three_le
    {A : ℝ} (hA : 12 ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 20 ^ 12 := by
  have hpow := pow_le_pow_left₀
    (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 12
  have h36 : Real.exp (36 : ℝ) = Real.exp 3 ^ 12 := by
    convert! Real.exp_nat_mul (3 : ℝ) 12 using 1
    norm_num
  calc
    Real.exp (-3 * A) ≤ Real.exp (-36) :=
      Real.exp_le_exp.mpr (by linarith)
    _ = 1 / Real.exp 36 := by
      rw [Real.exp_neg, one_div]
    _ ≤ 1 / 20 ^ 12 :=
      one_div_le_one_div_of_le (by positivity) (by rwa [h36])

/-- Polynomial growth of degree ten is dominated by the first exponential
factor uniformly for A >= 12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant1de8a061b7c066f7873714c1a35b808195d19574e3e1ef2ebee3e5867e05c73a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7715a65ed23e6e48213dd9fa4f474501737ac431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
