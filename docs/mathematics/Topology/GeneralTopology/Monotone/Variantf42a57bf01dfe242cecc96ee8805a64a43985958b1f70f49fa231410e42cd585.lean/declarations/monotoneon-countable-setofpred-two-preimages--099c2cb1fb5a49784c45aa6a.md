# MonotoneOn.countable_setOfPred_two_preimages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa3bbf4c-e855-0801-de83-3dedea61cab6",
  "kind": "lemma",
  "lexical_name": "MonotoneOn.countable_setOfPred_two_preimages",
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
  "slug": "monotoneon-countable-setofpred-two-preimages--099c2cb1fb5a49784c45aa6a",
  "source": {
    "blob": "1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:099c2cb1fb5a49784c45aa6aea1c5bc7eab5637fd8f4ffdda17905e614d9991f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa3bbf4c-e855-0801-de83-3dedea61cab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonotoneOn.countable_setOfPred_two_preimages [SecondCountableTopology α]
    (hf : MonotoneOn f s) :
    Set.Countable {c | ∃ x y, x ∈ s ∧ y ∈ s ∧ x < y ∧ f x = c ∧ f y = c} := by
  nontriviality α
  let t := {c | ∃ x, ∃ y, x ∈ s ∧ y ∈ s ∧ x < y ∧ f x = c ∧ f y = c}
  have : ∀ c ∈ t, ∃ x, ∃ y, x ∈ s ∧ y ∈ s ∧ x < y ∧ f x = c ∧ f y = c := fun c hc ↦ hc
  choose! x y hxs hys hxy hfx hfy using this
  let u := x '' t
  suffices H : Set.Countable (x '' t) by
    have : Set.InjOn x t := by
      intro c hc d hd hcd
      have : f (x c) = f (x d) := by simp [hcd]
      rwa [hfx _ hc, hfx _ hd] at this
    exact countable_of_injective_of_countable_image this H
  apply Set.PairwiseDisjoint.countable_of_Ioo (y := fun a ↦ y (f a)); swap
  · rintro a ⟨c, hc, rfl⟩
    rw [hfx _ hc]
    exact hxy _ hc
  simp only [PairwiseDisjoint, Set.Pairwise, mem_image, onFun, forall_exists_index, and_imp,
    forall_apply_eq_imp_iff₂]
  intro c hc d hd hcd
  wlog H : c < d generalizing c d with h
  · apply (h d hd c hc hcd.symm ?_).symm
    have : c ≠ d := fun h ↦ hcd (congrArg x h)
    order
  simp only [disjoint_iff_forall_ne, mem_Ioo, ne_eq, and_imp]
  rintro a xca ayc b xda ayd rfl
  rw [hfx _ hc] at ayc
  have : x d ≤ y c := (xda.trans ayc).le
  have : f (x d) ≤ f (y c) := hf (hxs _ hd) (hys _ hc) this
  rw [hfx _ hd, hfy _ hc] at this
  exact not_le.2 H this

@[deprecated (since := "2026-07-09")] alias MonotoneOn.countable_setOf_two_preimages :=
  MonotoneOn.countable_setOfPred_two_preimages

/-- If a function is monotone in a second countable topological space, then there
are only countably many points that have several preimages. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variantf42a57bf01dfe242cecc96ee8805a64a43985958b1f70f49fa231410e42cd585.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1409839fd48f7ef033ac6eaefa7c52a22a1c5bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
