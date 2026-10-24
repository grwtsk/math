# mem_of_mem_permsOfList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:050732b4-c415-a2ea-9f4f-7a3f0502c3d9",
  "kind": "theorem",
  "lexical_name": "mem_of_mem_permsOfList",
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
  "slug": "mem-of-mem-permsoflist--933a443c1d75d1b5426dce05",
  "source": {
    "blob": "517688d4bb33638cc1f8ba46e9140322727ff261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:933a443c1d75d1b5426dce05b077426b96b1a59eb0c0b86e03e9483a408a1e91",
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

Occurrence: `result:050732b4-c415-a2ea-9f4f-7a3f0502c3d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_mem_permsOfList :
    ∀ {l : List α} {f : Perm α}, f ∈ permsOfList l → {x : α} → f x ≠ x → x ∈ l
  | [], f, h, heq_iff_eq => by
    have : f = 1 := by simpa [permsOfList] using h
    rw [this]; simp
  | a :: l, f, h, x =>
    (mem_append.1 h).elim (fun h hx => mem_cons_of_mem _ (mem_of_mem_permsOfList h hx))
      fun h hx =>
      let ⟨y, hy, hy'⟩ := List.mem_flatMap.1 h
      let ⟨g, hg₁, hg₂⟩ := List.mem_map.1 hy'
      if hxa : x = a then by simp [hxa]
      else
        if hxy : x = y then mem_cons_of_mem _ <| by rwa [hxy]
        else mem_cons_of_mem a <| mem_of_mem_permsOfList hg₁ <| by
              rw [eq_inv_mul_iff_mul_eq.2 hg₂, mul_apply, swap_inv, swap_apply_def]
              split_ifs <;> [exact Ne.symm hxy; exact Ne.symm hxa; exact hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Varianta92accef93d39737c8bef9499ef6c3da3a65037d53454e28152611cd47a12c7b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517688d4bb33638cc1f8ba46e9140322727ff261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
