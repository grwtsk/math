# mertens_second_theorem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 866,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0755991b-15a3-211c-6663-3050920658a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5c5cf28-9c17-382c-bc3c-537a21b9532a",
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
  "slug": "mertens-second-theorem--16f100f0c8bd641eeb877067",
  "source": {
    "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 866,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f100f0c8bd641eeb877067cb625b835243e3b1eb32074381a54c34ab5c9df8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c5cf28-9c17-382c-bc3c-537a21b9532a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–894.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9055ac071fb1dff52c5bdf94a6cceb862831b174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
