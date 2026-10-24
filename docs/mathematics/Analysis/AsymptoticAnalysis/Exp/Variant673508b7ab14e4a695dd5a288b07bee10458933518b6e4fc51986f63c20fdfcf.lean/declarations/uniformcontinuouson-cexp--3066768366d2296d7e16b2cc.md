# UniformContinuousOn.cexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1272eb89a229af163e16b805e3268067b535db9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:361a0243-9cde-f8ed-a0d3-d136155f98db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93223fb5-c21e-1070-f26e-3ad1fe8b722b",
  "kind": "lemma",
  "lexical_name": "UniformContinuousOn.cexp",
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
  "slug": "uniformcontinuouson-cexp--3066768366d2296d7e16b2cc",
  "source": {
    "blob": "e1272eb89a229af163e16b805e3268067b535db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3066768366d2296d7e16b2cc43b5ca4457e7b2ddae7b0e725993db752c31f8d5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93223fb5-c21e-1070-f26e-3ad1fe8b722b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformContinuousOn.cexp (a : ℝ) : UniformContinuousOn exp {x : ℂ | x.re ≤ a} := by
  have : Continuous (cexp - 1) := Continuous.sub (Continuous.cexp continuous_id') continuous_one
  rw [Metric.uniformContinuousOn_iff, Metric.continuous_iff'] at *
  intro ε hε
  simp only [gt_iff_lt, Pi.sub_apply, Pi.one_apply, dist_sub_eq_dist_add_right,
    sub_add_cancel] at this
  have ha : 0 < ε / (2 * Real.exp a) := by positivity
  have H := this 0 (ε / (2 * Real.exp a)) ha
  rw [Metric.eventually_nhds_iff] at H
  obtain ⟨δ, hδ⟩ := H
  refine ⟨δ, hδ.1, ?_⟩
  intros x _ y hy hxy
  have h3 := hδ.2 (y := x - y) (by simpa only [dist_zero_right] using hxy)
  rw [dist_eq_norm, exp_zero] at *
  have : cexp x - cexp y = cexp y * (cexp (x - y) - 1) := by
      rw [mul_sub_one, ← exp_add]
      ring_nf
  rw [this, mul_comm]
  have hya : ‖cexp y‖ ≤ Real.exp a := by
    simp only [norm_exp, Real.exp_le_exp]
    exact hy
  simp only [gt_iff_lt, dist_zero_right, Set.mem_setOf_eq, norm_mul, Complex.norm_exp] at *
  apply lt_of_le_of_lt (mul_le_mul h3.le hya (Real.exp_nonneg y.re) (le_of_lt ha))
  have hrr : ε / (2 * a.exp) * a.exp = ε / 2 := by
    nth_rw 2 [mul_comm]
    field_simp [mul_assoc]
  rw [hrr]
  exact div_two_lt_of_pos hε

@[deprecated (since := "2025-02-11")] alias UniformlyContinuousOn.cexp := UniformContinuousOn.cexp

end ComplexContinuousExpComp

namespace Real

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1272eb89a229af163e16b805e3268067b535db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
