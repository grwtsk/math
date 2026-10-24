# rank_trace_mult_k

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fa52061-f5ab-49ce-d69a-e44943013abb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b86be13c-0d15-6ad0-4971-e9ec265ee3f2",
  "kind": "theorem",
  "lexical_name": "rank_trace_mult_k",
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
  "slug": "rank-trace-mult-k--7f65ea8ee403d6022e693372",
  "source": {
    "blob": "56727106c5990a07e3f7e29eae3122be737a1cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 369,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f65ea8ee403d6022e693372e2779c7e2bf6f6155999709fc7fc95f4cb50c8de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86be13c-0d15-6ad0-4971-e9ec265ee3f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_trace_mult_k {m : ι → ℝ} (hm : ∀ j, 0 ≤ m j) (v : ι → n → 𝕜)
    {Q : Matrix n n 𝕜} (hQ : Q.IsHermitian) {b : ℕ} (hb : posIndex hQ ≤ b) {c : ℝ} (hc : 0 < c) :
    2 * c * rtrace (Pmat m v + Q) - frobSq (Pmat m v + Q) ≤ (∑ j, kc c (m j * xsq v j)) + c ^ 2 * b := by
  have h := rank_trace_mult hm v hQ hb hc
  have htr : rtrace (Pmat m v) = ∑ j, m j * xsq v j := rtrace_Pmat hm v
  have hk : ∑ j, kc c (m j * xsq v j) = c * ∑ j, m j * xsq v j - ∑ j, gc c (m j * xsq v j) := by
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => kc_eq c _
  rw [rtrace_add, hk, ← htr]
  linarith

/-- … and the **leak-free** form: with ‖v_j‖² ≤ 1 the right side only increases when x_j ↦ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variantd58c03b0b8701f791fa47adab197382f0d468aaa946a9f37ead56d0193c74d71.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56727106c5990a07e3f7e29eae3122be737a1cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
