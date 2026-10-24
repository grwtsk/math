# mertens_second_theorem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b977ebd6-2854-74fb-9d85-006b5c477bd9",
  "kind": "theorem",
  "lexical_name": "mertens_second_theorem'",
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
  "slug": "mertens-second-theorem--f2f3f40d0f1c20a597c8b438",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 874,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f3f40d0f1c20a597c8b438ab5e7de03c1381bbac37dbd7b73c8b1d5caaf2f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b977ebd6-2854-74fb-9d85-006b5c477bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_second_theorem' :
    ∃ C, ∀ x ≥ 2, |∑ p ∈ filter Prime (Iic ⌊x⌋₊), 1 / (p : ℝ) - log (log x)| ≤ C := by
  obtain ⟨C, hC⟩ := pnt
  refine ⟨|meisselMertensConstant| + C / Real.log 2 ^ 3 +
    ∫ y in Set.Ioi 2, |(θ y - y) * deriv (fun t ↦ 1 / t / Real.log t) y|, fun x hx => ?_⟩
  calc
  _ ≤ |meisselMertensConstant + (θ x - x) / (x * log x)
    + ∫ y in Set.Ioi x, (θ y - y) * deriv (fun t ↦ 1 / t / Real.log t) y| := by
    rw [meisselMertensConstant_identity hx]; ring_nf; rfl
  _ ≤ |meisselMertensConstant| + |(θ x - x) / (x * log x)|
    + ∫ y in Set.Ioi x, |(θ y - y) * deriv (fun t ↦ 1 / t / Real.log t) y| := by
    grw [sub_eq_add_neg, abs_add_le, abs_add_le, abs_integral_le_integral_abs]
  _ ≤ _ := by
    gcongr
    · grw [abs_div, hC.2 x hx, abs_of_nonneg (mul_nonneg (by grind) (log_nonneg (by grind))),
        div_right_comm, ← div_div, mul_div_cancel_right₀ _ (by grind)]
      ring_nf
      gcongr
      · exact hC.1
      · exact inv_nonneg.2 (log_nonneg (by grind))
    · filter_upwards with a
      apply abs_nonneg
    · exact integrableOn_deriv_inv_div_log.1.abs

@[blueprint
  "Mertens-constant"
  (title := "Mertens constant E")
  (statement := /--
  $E := \lim_{x \to \infty} \left( \sum_{p \leq x} \frac{\log p}{p} - \log x \right)$. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
