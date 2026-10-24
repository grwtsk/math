# mem_permsOfList_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f37fdc6-890e-83ae-2101-fa3393cd6ea0",
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
  "slug": "mem-permsoflist-of-mem--78e202ddefff97d5d3e2caf0",
  "source": {
    "blob": "ba72d03a33a7674726dc64013cb894db4a3385fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e202ddefff97d5d3e2caf09dad83e7b05e1ab4b3ea432de3f3419c2138bc71",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f37fdc6-890e-83ae-2101-fa3393cd6ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

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
    simp
    grind
  suffices f ∈ permsOfList l ∨ ∃ b ∈ l, ∃ g ∈ permsOfList l, Equiv.swap a b * g = f by
    simpa only [permsOfList, exists_prop, List.mem_map, mem_append, List.mem_flatMap]
  refine or_iff_not_imp_left.2 fun _hfl => ⟨f a, ?_, Equiv.swap a (f a) * f, IH this, ?_⟩
  · exact mem_of_ne_of_mem hfa (h _ hfa')
  · rw [← mul_assoc, mul_def (Equiv.swap a (f a)) (Equiv.swap a (f a)), Equiv.swap_swap,
      ← Perm.one_def, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba72d03a33a7674726dc64013cb894db4a3385fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
