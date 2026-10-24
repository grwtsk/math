# mem_permsOfList_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:734d705f-f162-2127-6053-a7f4059e87d1",
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
  "slug": "mem-permsoflist-of-mem--aa7013eaf34b70df2e274a50",
  "source": {
    "blob": "517688d4bb33638cc1f8ba46e9140322727ff261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7013eaf34b70df2e274a50f969d30837975c8cee920975b1cfb78bc2fe44b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:734d705f-f162-2127-6053-a7f4059e87d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–79.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517688d4bb33638cc1f8ba46e9140322727ff261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
