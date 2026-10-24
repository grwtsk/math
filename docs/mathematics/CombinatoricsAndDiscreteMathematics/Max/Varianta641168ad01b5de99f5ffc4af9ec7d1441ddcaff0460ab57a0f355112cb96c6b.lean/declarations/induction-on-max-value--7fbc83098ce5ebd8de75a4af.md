# induction_on_max_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0104db07-6586-1cd7-da4e-6c976be83b65",
  "kind": "theorem",
  "lexical_name": "induction_on_max_value",
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
  "slug": "induction-on-max-value--7fbc83098ce5ebd8de75a4af",
  "source": {
    "blob": "4b45a670ec988407d16b92980b7b39b1bf377f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fbc83098ce5ebd8de75a4afc5879176e61b9920370f70011b75c8adb15edea7",
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

Occurrence: `result:0104db07-6586-1cd7-da4e-6c976be83b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_max_value
    [DecidableEq ι] (f : ι → α) {motive : Finset ι → Prop} (s : Finset ι) (empty : motive ∅)
    (insert : ∀ a s, a ∉ s → (∀ x ∈ s, f x ≤ f a) → motive s → motive (insert a s)) : motive s := by
  induction s using Finset.eraseInduction with | _ s ihs
  rcases (s.image f).eq_empty_or_nonempty with (hne | hne)
  · simp only [image_eq_empty] at hne
    simp only [hne, empty]
  · have H : (s.image f).max' hne ∈ s.image f := max'_mem (s.image f) hne
    simp only [mem_image] at H
    rcases H with ⟨a, has, hfa⟩
    rw [← insert_erase has]
    refine insert _ _ (notMem_erase a s) (fun x hx => ?_) (ihs a has)
    rw [hfa]
    exact le_max' _ _ (mem_image_of_mem _ <| mem_of_mem_erase hx)

end MaxMinInductionValue

section ExistsMaxMin

variable [LinearOrder α]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta641168ad01b5de99f5ffc4af9ec7d1441ddcaff0460ab57a0f355112cb96c6b.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b45a670ec988407d16b92980b7b39b1bf377f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
