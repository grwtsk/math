# continuousOn_neg_logDeriv_LFunctionTrivChar₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89c72580697983d86706cff17ccbea2cee6475a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93ea6181-4117-8a51-c82a-df65a4b4e70d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:696fd379-de69-2630-1ab4-109174bbcc24",
  "kind": "lemma",
  "lexical_name": "continuousOn_neg_logDeriv_LFunctionTrivChar₁",
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
  "slug": "continuouson-neg-logderiv-lfunctiontrivchar--e1da5101a67313e0036bb3ad",
  "source": {
    "blob": "89c72580697983d86706cff17ccbea2cee6475a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 369,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1da5101a67313e0036bb3ad6aa5526cb03839e33f239b2da029af5a139e48c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:696fd379-de69-2630-1ab4-109174bbcc24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_neg_logDeriv_LFunctionTrivChar₁ :
    ContinuousOn (fun s ↦ -deriv (LFunctionTrivChar₁ n) s / LFunctionTrivChar₁ n s)
      {s | s = 1 ∨ LFunctionTrivChar n s ≠ 0} := by
  simp_rw [neg_div]
  have h := differentiable_LFunctionTrivChar₁ n
  refine ((h.contDiff.continuous_deriv le_rfl).continuousOn.div
    h.continuous.continuousOn fun w hw ↦ ?_).neg
  rcases eq_or_ne w 1 with rfl | hw'
  · exact LFunctionTrivChar₁_apply_one_ne_zero _
  · rw [LFunctionTrivChar₁, Function.update_of_ne hw', mul_ne_zero_iff]
    exact ⟨sub_ne_zero_of_ne hw', (Set.mem_ofPred.mp hw).resolve_left hw'⟩

end trivial

section nontrivial

variable {n : ℕ} [NeZero n] {χ : DirichletCharacter ℂ n}

/-- The negative logarithmic derivative of the L-function of a nontrivial Dirichlet character
is continuous away from the zeros of the L-function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant7ef38fb53f462e19dfd6746fc1826423e55bb5e2672c2b5667e2fd4889f401b6.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89c72580697983d86706cff17ccbea2cee6475a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
