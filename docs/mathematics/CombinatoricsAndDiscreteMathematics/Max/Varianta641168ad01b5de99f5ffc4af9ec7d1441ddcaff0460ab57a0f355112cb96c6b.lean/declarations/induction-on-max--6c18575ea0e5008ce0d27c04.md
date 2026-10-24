# induction_on_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43fdf05f-3698-bcd2-3adb-0bf88c3e490c",
  "kind": "theorem",
  "lexical_name": "induction_on_max",
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
  "slug": "induction-on-max--6c18575ea0e5008ce0d27c04",
  "source": {
    "blob": "4b45a670ec988407d16b92980b7b39b1bf377f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 344,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c18575ea0e5008ce0d27c04f8f5fedd1be0715daa8f60863ad9dfcbe77237f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43fdf05f-3698-bcd2-3adb-0bf88c3e490c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_max
    [DecidableEq α] {motive : Finset α → Prop} (s : Finset α) (empty : motive ∅)
    (insert : ∀ a s, (∀ x ∈ s, x < a) → motive s → motive (insert a s)) : motive s := by
  induction s using Finset.eraseInduction with | _ s ih
  rcases s.eq_empty_or_nonempty with (rfl | hne)
  · exact empty
  · have H : s.max' hne ∈ s := max'_mem s hne
    rw [← insert_erase H]
    exact insert _ _ (fun x ↦ s.lt_max'_of_mem_erase_max' hne) (ih _ H)

end MaxMin

section MaxMinInductionValue

variable [LinearOrder α] [LinearOrder β]

/-- Induction principle for `Finset`s in any type from which a given function `f` maps to a linearly
ordered type : a predicate is true on all `s : Finset α` provided that:

* it is true on the empty `Finset`,
* for every `s : Finset α` and an element `a` such that for elements of `s` denoted by `x` we have
  `f x ≤ f a`, `p s` implies `p (insert a s)`. -/
@[to_dual (attr := elab_as_elim)
/-- Induction principle for `Finset`s in any type from which a given function `f` maps to a linearly
ordered type : a predicate is true on all `s : Finset α` provided that:

* it is true on the empty `Finset`,
* for every `s : Finset α` and an element `a` such that for elements of `s` denoted by `x` we have
  `f a ≤ f x`, `p s` implies `p (insert a s)`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b45a670ec988407d16b92980b7b39b1bf377f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
