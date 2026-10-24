# mem_permsOfList_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39d8282428f54a736156c666b4981fdd5b379b76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:837f64ac-1804-ad47-6939-d27201b6e1d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35b591ae-faf6-c9fa-e6b8-0801bb9a8652",
  "kind": "theorem",
  "lexical_name": "mem_permsOfList_of_mem",
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
  "slug": "mem-permsoflist-of-mem--9cda7aa67c79a0a898513fba",
  "source": {
    "blob": "39d8282428f54a736156c666b4981fdd5b379b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cda7aa67c79a0a898513fbab1874b5a497c8ae6894403a23cd57715e14c6600",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b591ae-faf6-c9fa-e6b8-0801bb9a8652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_permsOfList_of_mem {l : List α} {f : Perm α} (h : ∀ x, f x ≠ x → x ∈ l) :
    f ∈ permsOfList l := by
  induction l generalizing f with
  | nil =>
    simp only [not_mem_nil] at h
    exact List.mem_singleton.2 (Equiv.ext fun x => Decidable.byContradiction <| h x)
  | cons a l IH =>
  by_cases hfa : f a = a
  · refine mem_append_left _ (IH fun x hx => mem_of_ne_of_mem ?_ (h x hx))
    rintro rfl
    exact hx hfa
  have hfa' : f (f a) ≠ f a := mt (fun h => f.injective h) hfa
  have : ∀ x : α, (Equiv.swap a (f a) * f) x ≠ x → x ∈ l := by
    intro x hx
    have hxa : x ≠ a := by
      rintro rfl
      apply hx
      simp only [mul_apply, swap_apply_right]
    refine List.mem_of_ne_of_mem hxa (h x fun h => ?_)
    simp only [mul_apply, swap_apply_def, mul_apply, Ne, apply_eq_iff_eq] at hx
    split_ifs at hx with h_1
    exacts [hxa (h.symm.trans h_1), hx h]
  suffices f ∈ permsOfList l ∨ ∃ b ∈ l, ∃ g ∈ permsOfList l, Equiv.swap a b * g = f by
    simpa only [permsOfList, exists_prop, List.mem_map, mem_append, List.mem_flatMap]
  refine or_iff_not_imp_left.2 fun _hfl => ⟨f a, ?_, Equiv.swap a (f a) * f, IH this, ?_⟩
  · exact mem_of_ne_of_mem hfa (h _ hfa')
  · rw [← mul_assoc, mul_def (swap a (f a)) (swap a (f a)), swap_swap, ← Perm.one_def, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d8282428f54a736156c666b4981fdd5b379b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
