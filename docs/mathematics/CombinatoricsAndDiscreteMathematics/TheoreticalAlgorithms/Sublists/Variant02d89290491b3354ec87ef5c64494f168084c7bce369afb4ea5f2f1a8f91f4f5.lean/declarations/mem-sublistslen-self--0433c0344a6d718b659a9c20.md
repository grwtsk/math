# mem_sublistsLen_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20532e8a-d039-6dd5-92bc-861cc1288cd5",
  "kind": "theorem",
  "lexical_name": "mem_sublistsLen_self",
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
  "slug": "mem-sublistslen-self--0433c0344a6d718b659a9c20",
  "source": {
    "blob": "e2913c1af3f483e6b994d57167600395d49fb76d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0433c0344a6d718b659a9c20435d0cf1b8f0ee5f5d80b80ce6780b2dd861b557",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20532e8a-d039-6dd5-92bc-861cc1288cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sublistsLen_self {α : Type*} {l l' : List α} (h : l' <+ l) :
    l' ∈ sublistsLen (length l') l := by
  induction' h with l₁ l₂ a s IH l₁ l₂ a s IH
  · simp
  · cases' l₁ with b l₁
    · simp
    · rw [length, sublistsLen_succ_cons]
      exact mem_append_left _ IH
  · rw [length, sublistsLen_succ_cons]
    exact mem_append_right _ (mem_map.2 ⟨_, IH, rfl⟩)
#align list.mem_sublists_len_self List.mem_sublistsLen_self

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2913c1af3f483e6b994d57167600395d49fb76d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
