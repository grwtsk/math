# theorem_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11803b93-4fb1-65ff-d929-78495c3798d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6072ca7-22dd-0d43-bca5-7c84ae2f494c",
  "kind": "theorem",
  "lexical_name": "theorem_d",
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
  "slug": "theorem-d--45d6a0a2fe4ae266120a217b",
  "source": {
    "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 303,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45d6a0a2fe4ae266120a217b639e06d64d8c68f8f3042a65ac94e63f0214a131",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6072ca7-22dd-0d43-bca5-7c84ae2f494c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_d (x : ℝ) (hx : x > 1) :
    |θ x - x| ≤ 515 * x / (log x) ^ 3 := by
  by_cases! h2 : x ≥ 2
  · have hmem : (3, (20.83 : ℝ), (2 : ℝ)) ∈ Dusart.Table_4_2 := by
      unfold Dusart.Table_4_2; simp [List.mem_cons]
    have hEθ := Dusart.theorem_4_2 hmem (show x ≥ 2 from h2)
    unfold Eθ at hEθ
    have hx_pos : (0 : ℝ) < x := by linarith
    have hlog3_pos : (0 : ℝ) < (log x) ^ 3 := pow_pos (log_pos (by linarith)) 3
    rw [div_le_div_iff₀ hx_pos hlog3_pos] at hEθ
    calc |θ x - x| ≤ 20.83 * x / (log x) ^ 3 := by
            rw [le_div_iff₀ hlog3_pos]; linarith
      _ ≤ 515 * x / (log x) ^ 3 := by
          apply div_le_div_of_nonneg_right _ hlog3_pos.le; nlinarith
  · rw [Chebyshev.theta_eq_zero_of_lt_two h2, zero_sub, abs_neg, abs_of_pos (by linarith)]
    have hlog_pos : (0 : ℝ) < log x := log_pos hx
    rw [le_div_iff₀ (pow_pos hlog_pos 3)]
    have : (log x) ^ 3 ≤ 1 := by
      calc (log x) ^ 3 ≤ (log x) ^ 1 :=
              pow_le_pow_of_le_one hlog_pos.le
                ((log_lt_iff_lt_exp (by linarith)).mpr (by nlinarith [exp_one_gt_d9])).le
                (by omega)
        _ = log x := pow_one _
        _ ≤ 1 := ((log_lt_iff_lt_exp (by linarith)).mpr
            (by nlinarith [exp_one_gt_d9])).le
    nlinarith

end Dusart1999

namespace Dusart

blueprint_comment /-- Some results from \cite{Dusart2018}-/

@[blueprint
  "thm:dusart2018-theta-improv-1"
  (title := "Dusart 2018, $\\vartheta$ improvement 1")
  (statement := /-- For $x > 1$, we have $|\vartheta(x) - x| \leq \frac{20.83\, x}{\log^3 x}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce3979ff32048626872bfc88c58371b04468b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
