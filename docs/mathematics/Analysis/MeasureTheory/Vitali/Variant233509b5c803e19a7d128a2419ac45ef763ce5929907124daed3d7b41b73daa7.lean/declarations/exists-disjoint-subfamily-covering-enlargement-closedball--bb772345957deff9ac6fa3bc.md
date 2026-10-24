# exists_disjoint_subfamily_covering_enlargement_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e02b7dbe19ff492ea2dc81f51941cb641aad448",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64c3641d-bc44-5850-eae8-fbb41a33e6f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:550ef273-3638-1445-5fe0-78e196b4fa75",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_subfamily_covering_enlargement_closedBall",
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
  "slug": "exists-disjoint-subfamily-covering-enlargement-closedball--bb772345957deff9ac6fa3bc",
  "source": {
    "blob": "8e02b7dbe19ff492ea2dc81f51941cb641aad448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 160,
    "path": "GRWTSK/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb772345957deff9ac6fa3bce601048832899336e84aed8bbc0f1aeef6279ea5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:550ef273-3638-1445-5fe0-78e196b4fa75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_subfamily_covering_enlargement_closedBall
    [PseudoMetricSpace α] (t : Set ι)
    (x : ι → α) (r : ι → ℝ) (R : ℝ) (hr : ∀ a ∈ t, r a ≤ R) (τ : ℝ) (hτ : 3 < τ) :
    ∃ u ⊆ t,
      (u.PairwiseDisjoint fun a => closedBall (x a) (r a)) ∧
        ∀ a ∈ t, ∃ b ∈ u, closedBall (x a) (r a) ⊆ closedBall (x b) (τ * r b) := by
  rcases eq_empty_or_nonempty t with (rfl | _)
  · exact ⟨∅, Subset.refl _, pairwiseDisjoint_empty, by simp⟩
  by_cases ht : ∀ a ∈ t, r a < 0
  · exact ⟨t, Subset.rfl, fun a ha b _ _ => by
      #adaptation_note /-- nightly-2024-03-16
      Previously `Function.onFun` unfolded in the following `simp only`,
      but now needs a separate `rw`.
      This may be a bug: a no import minimization may be required. -/
      rw [Function.onFun]
      simp only [Function.onFun, closedBall_eq_empty.2 (ht a ha), empty_disjoint],
      fun a ha => ⟨a, ha, by simp only [closedBall_eq_empty.2 (ht a ha), empty_subset]⟩⟩
  push_neg at ht
  let t' := { a ∈ t | 0 ≤ r a }
  rcases exists_disjoint_subfamily_covering_enlargement (fun a => closedBall (x a) (r a)) t' r
      ((τ - 1) / 2) (by linarith) (fun a ha => ha.2) R (fun a ha => hr a ha.1) fun a ha =>
      ⟨x a, mem_closedBall_self ha.2⟩ with
    ⟨u, ut', u_disj, hu⟩
  have A : ∀ a ∈ t', ∃ b ∈ u, closedBall (x a) (r a) ⊆ closedBall (x b) (τ * r b) := by
    intro a ha
    rcases hu a ha with ⟨b, bu, hb, rb⟩
    refine ⟨b, bu, ?_⟩
    have : dist (x a) (x b) ≤ r a + r b := dist_le_add_of_nonempty_closedBall_inter_closedBall hb
    apply closedBall_subset_closedBall'
    linarith
  refine ⟨u, ut'.trans fun a ha => ha.1, u_disj, fun a ha => ?_⟩
  rcases le_or_lt 0 (r a) with (h'a | h'a)
  · exact A a ⟨ha, h'a⟩
  · rcases ht with ⟨b, rb⟩
    rcases A b ⟨rb.1, rb.2⟩ with ⟨c, cu, _⟩
    exact ⟨c, cu, by simp only [closedBall_eq_empty.2 h'a, empty_subset]⟩

@[deprecated (since := "2024-12-25")]
alias exists_disjoint_subfamily_covering_enlargment_closedBall :=
  exists_disjoint_subfamily_covering_enlargement_closedBall

/-- The measurable **Vitali covering theorem**.

Assume one is given a family `t` of closed sets with nonempty interior, such that each `a ∈ t` is
included in a ball `B (x, r)` and covers a definite proportion of the ball `B (x, 3 r)` for a given
measure `μ` (think of the situation where `μ` is a doubling measure and `t` is a family of balls).
Consider a (possibly non-measurable) set `s` at which the family is fine, i.e., every point of `s`
belongs to arbitrarily small elements of `t`. Then one can extract from `t` a disjoint subfamily
that covers almost all `s`.

For more flexibility, we give a statement with a parameterized family of sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Vitali/Variant233509b5c803e19a7d128a2419ac45ef763ce5929907124daed3d7b41b73daa7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e02b7dbe19ff492ea2dc81f51941cb641aad448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
