# actual_log_window_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf54dd6b-8a10-ecd5-3a5f-c97407c2f6af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80155425-610f-0d4c-5728-a3fd1aa8b679",
  "kind": "theorem",
  "lexical_name": "actual_log_window_order",
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
  "slug": "actual-log-window-order--f8c91fb4d11e8054740a94a5",
  "source": {
    "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c91fb4d11e8054740a94a5b1a2eba69f669ad23b40a5d6dfa2741a96724b48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80155425-610f-0d4c-5728-a3fd1aa8b679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_log_window_order {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ Real.log (vaughanCutoff A : ℝ) ∧
      Real.log (vaughanCutoff A : ℝ) ≤
        Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
        Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := zero_lt_one.trans_le hU
  have ha0 : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hUa : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    exact_mod_cast (show vaughanCutoff A ≤ vaughanCutoff A + 1 by omega)
  have haN : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast actual_adjacent_le_upper hA
  exact ⟨Real.log_nonneg hU, Real.log_le_log hU0 hUa, Real.log_le_log ha0 haN⟩

/-- The real strip width pays the true positive integer cutoff factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e40115283ec1a54d2cf404d1ac5cf4ad135527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
