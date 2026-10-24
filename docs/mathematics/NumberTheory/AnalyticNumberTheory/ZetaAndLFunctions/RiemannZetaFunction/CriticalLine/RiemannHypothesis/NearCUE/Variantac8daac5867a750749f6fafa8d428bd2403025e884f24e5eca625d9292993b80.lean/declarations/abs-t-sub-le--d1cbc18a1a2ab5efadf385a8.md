# abs_T_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75d57533-77eb-2b0c-224b-312e1fa287a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f96b36ee-f7af-c634-7541-0925f26df9b6",
  "kind": "lemma",
  "lexical_name": "abs_T_sub_le",
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
  "slug": "abs-t-sub-le--d1cbc18a1a2ab5efadf385a8",
  "source": {
    "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1cbc18a1a2ab5efadf385a8a510c4a42141f07a24f6bfeced98f8bfa9f8d991",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f96b36ee-f7af-c634-7541-0925f26df9b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_T_sub_le (h : NearCUE S N τ) {m : ℕ} (hm : m + 1 ≤ N) :
    |(N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2| ≤ m * τ := by
  induction m with
  | zero => simp [T_zero]
  | succ m ih =>
    have ih' := ih (by omega)
    have hrow := h (m + 1) (by omega) (by omega)
    rw [T_succ]
    push_cast at hrow ⊢
    have e : (N : ℝ) * (T S m + S (m + 1)) - ((m : ℝ) + 1) * ((m : ℝ) + 1 + 1) / 2
        = ((N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2) + ((N : ℝ) * S (m + 1) - ((m : ℝ) + 1)) := by ring
    rw [e]
    calc |((N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2) + ((N : ℝ) * S (m + 1) - ((m : ℝ) + 1))|
        ≤ |(N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2| + |(N : ℝ) * S (m + 1) - ((m : ℝ) + 1)| := abs_add_le _ _
      _ ≤ m * τ + τ := add_le_add ih' hrow
      _ = ((m : ℝ) + 1) * τ := by ring

/-- N·U_m = (m³ − m)/6 up to m(m−1)τ/2, for m ≤ N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b654e8cb36264ab066d261168879ca5f94e91fc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
