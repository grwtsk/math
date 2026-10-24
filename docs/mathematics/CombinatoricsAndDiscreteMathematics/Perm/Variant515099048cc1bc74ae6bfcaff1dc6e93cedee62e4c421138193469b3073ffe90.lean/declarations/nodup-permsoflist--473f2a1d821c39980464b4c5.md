# nodup_permsOfList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:340665cf-4062-4949-ae55-ddc0fefe2cc1",
  "kind": "theorem",
  "lexical_name": "nodup_permsOfList",
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
  "slug": "nodup-permsoflist--473f2a1d821c39980464b4c5",
  "source": {
    "blob": "ba72d03a33a7674726dc64013cb894db4a3385fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:473f2a1d821c39980464b4c53bd68c0b38fefcbaae2d1414fa1955abb93df67f",
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

Occurrence: `result:340665cf-4062-4949-ae55-ddc0fefe2cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_permsOfList : ∀ {l : List α}, l.Nodup → (permsOfList l).Nodup
  | [], _ => by simp [permsOfList]
  | a :: l, hl => by
    have hl' : l.Nodup := hl.of_cons
    have hln' : (permsOfList l).Nodup := nodup_permsOfList hl'
    have hmeml : ∀ {f : Perm α}, f ∈ permsOfList l → f a = a := fun {f} hf =>
      not_not.1 (mt (mem_of_mem_permsOfList hf) (nodup_cons.1 hl).1)
    rw [permsOfList, List.nodup_append', List.nodup_flatMap, pairwise_iff_getElem]
    refine ⟨?_, ⟨⟨?_,?_ ⟩, ?_⟩⟩
    · exact hln'
    · exact fun _ _ => hln'.map fun _ _ => mul_left_cancel
    · intro i j hi hj hij x hx₁ hx₂
      let ⟨f, hf⟩ := List.mem_map.1 hx₁
      let ⟨g, hg⟩ := List.mem_map.1 hx₂
      have hix : x a = l[i] := by
        rw [← hf.2, mul_apply, hmeml hf.1, swap_apply_left]
      have hiy : x a = l[j] := by
        rw [← hg.2, mul_apply, hmeml hg.1, swap_apply_left]
      have hieqj : i = j := hl'.getElem_inj_iff.1 (hix.symm.trans hiy)
      exact absurd hieqj (_root_.ne_of_lt hij)
    · intro f hf₁ hf₂
      let ⟨x, hx, hx'⟩ := List.mem_flatMap.1 hf₂
      let ⟨g, hg⟩ := List.mem_map.1 hx'
      obtain rfl : g.symm x = a := f.injective <| by rw [hmeml hf₁, ← hg.2]; simp
      have hxa : x ≠ g.symm x := fun h => (List.nodup_cons.1 hl).1 (h ▸ hx)
      exact (List.nodup_cons.1 hl).1 <| mem_of_mem_permsOfList hg.1 (by simpa using hxa)

set_option backward.isDefEq.respectTransparency false in
/-- Given a finset, produce the finset of all permutations of its elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant515099048cc1bc74ae6bfcaff1dc6e93cedee62e4c421138193469b3073ffe90.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba72d03a33a7674726dc64013cb894db4a3385fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
