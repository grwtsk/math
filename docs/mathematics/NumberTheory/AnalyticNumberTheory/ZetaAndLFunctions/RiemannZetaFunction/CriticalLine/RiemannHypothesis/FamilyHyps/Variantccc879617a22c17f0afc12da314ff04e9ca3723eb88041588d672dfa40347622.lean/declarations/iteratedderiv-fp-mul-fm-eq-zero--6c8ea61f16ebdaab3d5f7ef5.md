# iteratedDeriv_fP_mul_fM_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:828c2fd4-0b60-24bb-fa0d-9c2154cec8e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ff556b4-1401-373e-94c8-293254d6f66e",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_fP_mul_fM_eq_zero",
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
  "slug": "iteratedderiv-fp-mul-fm-eq-zero--6c8ea61f16ebdaab3d5f7ef5",
  "source": {
    "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8ea61f16ebdaab3d5f7ef5356e33e2306f74fede262750883fdc2ba9c5f44b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff556b4-1401-373e-94c8-293254d6f66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_fP_mul_fM_eq_zero (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L)
    {i j : ℕ} (hi : 1 ≤ i) (hi3 : i ≤ 3) (hj : 1 ≤ j) (hj3 : j ≤ 3) (u : ℝ) :
    iteratedDeriv i (fP ϱ L w) u * iteratedDeriv j (fM ϱ L w) u = 0 := by
  by_cases hu : u ∈ Set.Ioo (L / 2 - w) (L / 2)
  · have hu' : (L / 2 + u) / w ∉ Set.Ioo (0:ℝ) 1 := by
      have h1 : 1 ≤ (L / 2 + u) / w := by rw [le_div_iff₀ hw]; linarith [hu.1]
      simp only [Set.mem_Ioo, not_and_or, not_lt]
      exact Or.inr h1
    rw [iteratedDeriv_fM hϱ hj3, iteratedDeriv_eq_zero hϱ hj hj3 hu']; ring
  · have hu' : (L / 2 - u) / w ∉ Set.Ioo (0:ℝ) 1 := by
      intro h
      apply hu
      simp only [Set.mem_Ioo, div_pos_iff_of_pos_right hw, div_lt_one hw] at h
      constructor <;> linarith [h.1, h.2]
    rw [iteratedDeriv_fP hϱ hi3, iteratedDeriv_eq_zero hϱ hi hi3 hu']; ring

open Taper in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8809a5400e3378f2b0ff197da0aa74786efc02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
