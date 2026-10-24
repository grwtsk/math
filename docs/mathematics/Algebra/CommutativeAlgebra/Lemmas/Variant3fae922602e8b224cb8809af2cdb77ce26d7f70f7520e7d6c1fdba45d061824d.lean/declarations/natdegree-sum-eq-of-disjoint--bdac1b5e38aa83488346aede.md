# natDegree_sum_eq_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ae724bf9d8eba74f4a81b3f1aee31400041dca2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10c7fbb9-0c97-c110-c555-fa40f6dd704f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dc3ebf7-5932-4a54-223b-d7080e60d1ea",
  "kind": "theorem",
  "lexical_name": "natDegree_sum_eq_of_disjoint",
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
  "slug": "natdegree-sum-eq-of-disjoint--bdac1b5e38aa83488346aede",
  "source": {
    "blob": "7ae724bf9d8eba74f4a81b3f1aee31400041dca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 227,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdac1b5e38aa83488346aede6f92ccae0e967f49ab3f43f38dc9da25b6178850",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dc3ebf7-5932-4a54-223b-d7080e60d1ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_sum_eq_of_disjoint (f : S → R[X]) (s : Finset S)
    (h : Set.Pairwise { i | i ∈ s ∧ f i ≠ 0 } (Ne on natDegree ∘ f)) :
    natDegree (s.sum f) = s.sup fun i => natDegree (f i) := by
  by_cases H : ∃ x ∈ s, f x ≠ 0
  · obtain ⟨x, hx, hx'⟩ := H
    have hs : s.Nonempty := ⟨x, hx⟩
    refine' natDegree_eq_of_degree_eq_some _
    rw [degree_sum_eq_of_disjoint]
    · rw [← Finset.sup'_eq_sup hs, ← Finset.sup'_eq_sup hs,
        Nat.cast_withBot, Finset.coe_sup' hs, ←
        Finset.sup'_eq_sup hs]
      refine' le_antisymm _ _
      · rw [Finset.sup'_le_iff]
        intro b hb
        by_cases hb' : f b = 0
        · simpa [hb'] using hs
        rw [degree_eq_natDegree hb', Nat.cast_withBot]
        exact Finset.le_sup' (fun i : S => (natDegree (f i) : WithBot ℕ)) hb
      · rw [Finset.sup'_le_iff]
        intro b hb
        simp only [Finset.le_sup'_iff, exists_prop, Function.comp_apply]
        by_cases hb' : f b = 0
        · refine' ⟨x, hx, _⟩
          contrapose! hx'
          simpa [← Nat.cast_withBot, hb', degree_eq_bot] using hx'
        exact ⟨b, hb, (degree_eq_natDegree hb').ge⟩
    · exact h.imp fun x y hxy hxy' => hxy (natDegree_eq_of_degree_eq hxy')
  · push_neg at H
    rw [Finset.sum_eq_zero H, natDegree_zero, eq_comm, show 0 = ⊥ from rfl, Finset.sup_eq_bot_iff]
    intro x hx
    simp [H x hx]
#align polynomial.nat_degree_sum_eq_of_disjoint Polynomial.natDegree_sum_eq_of_disjoint

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae724bf9d8eba74f4a81b3f1aee31400041dca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
