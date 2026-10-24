# eulerMascheroniSeq_step_lb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e99d1b6-164b-dc19-bf6b-054eb88c90fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e373919e-9d42-e236-1a8c-009f1bd4741b",
  "kind": "lemma",
  "lexical_name": "eulerMascheroniSeq_step_lb",
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
  "slug": "eulermascheroniseq-step-lb--279c7f62f1491683d42ce849",
  "source": {
    "blob": "67adb0c44c59889ed996a6114ab1cd9d4b74928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:279c7f62f1491683d42ce849f275548cfc52e4f5db798a9e46524acc0f2bc3c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e373919e-9d42-e236-1a8c-009f1bd4741b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroniSeq_step_lb (k : ℕ) :
    1 / (2 * ((k : ℝ) + 1) * ((k : ℝ) + 2)) ≤
    eulerMascheroniSeq (k + 1) - eulerMascheroniSeq k := by
  unfold eulerMascheroniSeq
  have h_log_bound : ∀ x : ℝ, 0 ≤ x → Real.log (1 + x) ≤ x * (2 + x) / (2 * (1 + x)) :=
    fun x a => log_one_add_le_quadratic a
  have := h_log_bound (1 / (k + 1)) (by positivity)
  norm_num at *
  field_simp at *
  rw [Real.log_div (by positivity) (by positivity)] at this
  grind

/-- For `m ≥ n`, the difference of Euler-Mascheroni sequence values is bounded below
    by a telescoping sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variant43a20de0397f6193e80a957e9579d072292e7e26cebe1ff8ed71bda1c137ab24.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adb0c44c59889ed996a6114ab1cd9d4b74928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
