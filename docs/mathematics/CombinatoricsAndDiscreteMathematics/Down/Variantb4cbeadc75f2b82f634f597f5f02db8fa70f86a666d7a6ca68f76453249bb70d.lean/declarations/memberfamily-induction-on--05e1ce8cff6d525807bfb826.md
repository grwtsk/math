# memberFamily_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "836afa5a45a86f9e234365becc30de9034f9a055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:867713f5-587d-28a9-ae4b-48adccac5765",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81c20cd7-8bff-e1f0-1664-636afba80d2f",
  "kind": "lemma",
  "lexical_name": "memberFamily_induction_on",
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
  "slug": "memberfamily-induction-on--05e1ce8cff6d525807bfb826",
  "source": {
    "blob": "836afa5a45a86f9e234365becc30de9034f9a055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e1ce8cff6d525807bfb8264c4b520b487c04467b5453d9e54f5dd2b12f524f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c20cd7-8bff-e1f0-1664-636afba80d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memberFamily_induction_on {p : Finset (Finset α) → Prop}
    (𝒜 : Finset (Finset α)) (empty : p ∅) (singleton_empty : p {∅})
    (subfamily : ∀ (a : α) ⦃𝒜 : Finset (Finset α)⦄,
      p (𝒜.nonMemberSubfamily a) → p (𝒜.memberSubfamily a) → p 𝒜) : p 𝒜 := by
  set u := 𝒜.sup id
  have hu : ∀ s ∈ 𝒜, s ⊆ u := fun s ↦ le_sup (f := id)
  clear_value u
  induction u using Finset.induction generalizing 𝒜 with
  | empty =>
    simp_rw [subset_empty] at hu
    rw [← subset_singleton_iff', subset_singleton_iff] at hu
    obtain rfl | rfl := hu <;> assumption
  | insert a u _ ih =>
    refine subfamily a (ih _ ?_) (ih _ ?_)
    · simp only [mem_nonMemberSubfamily, and_imp]
      exact fun s hs has ↦ (subset_insert_iff_of_notMem has).1 <| hu _ hs
    · simp only [mem_memberSubfamily, and_imp]
      exact fun s hs ha ↦ (insert_subset_insert_iff ha).1 <| hu _ hs

/-- Induction principle for finset families. To prove a statement for every finset family,
it suffices to prove it for
* the empty finset family.
* the finset family which only contains the empty finset.
* `{s ∪ {a} | s ∈ 𝒜}` assuming the property for `𝒜` a family of finsets not containing `a`.
* `ℬ ∪ 𝒞` assuming the property for `ℬ` and `𝒞`, where `a` is an element of the ground type and
  `ℬ` is a family of finsets not containing `a` and `𝒞` a family of finsets containing `a`.
  Note that instead of giving `ℬ` and `𝒞`, the `subfamily` case gives you `𝒜 = ℬ ∪ 𝒞`, so that
  `ℬ = {s ∈ 𝒜 | a ∉ s}` and `𝒞 = {s ∈ 𝒜 | a ∈ s}`.

This is a way of formalising induction on `n` where `𝒜` is a finset family on `n` elements.

See also `Finset.memberFamily_induction_on.` -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836afa5a45a86f9e234365becc30de9034f9a055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
