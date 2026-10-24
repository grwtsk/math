# map_sub_map_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d7cdb0e-4351-f33b-3c8c-61d5a37a3711",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68aab599-0d53-a305-79fb-0744a0da01ff",
  "kind": "lemma",
  "lexical_name": "map_sub_map_piecewise",
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
  "slug": "map-sub-map-piecewise--cfb9ee2f5c961b2b8727f01b",
  "source": {
    "blob": "b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1356,
    "line": 1333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb9ee2f5c961b2b8727f01b800725933ef614f12dc6ce8afbeda7c634ec2c11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68aab599-0d53-a305-79fb-0744a0da01ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1333–1356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_sub_map_piecewise [LinearOrder ι] (a b : (i : ι) → M₁ i) (s : Finset ι) :
    f a - f (s.piecewise b a) =
    ∑ i ∈ s, f (fun j ↦ if j ∈ s → j < i then a j else if i = j then a j - b j else b j) := by
  induction s using induction_on_min with
  | empty => rw [Finset.piecewise_empty, sum_empty, sub_self]
  | insert k s hk ih => ?_
  rw [Finset.piecewise_insert, map_update, ← sub_add, ih,
      add_comm, sum_insert (lt_irrefl _ <| hk k ·)]
  simp_rw [s.mem_insert]
  congr 1
  · congr; ext i; split_ifs with h₁ h₂
    · rw [update_of_ne, Finset.piecewise_eq_of_notMem]
      · exact fun h ↦ (hk i h).not_gt (h₁ <| .inr h)
      · exact fun h ↦ (h₁ <| .inl h).ne h
    · cases h₂
      rw [update_self, s.piecewise_eq_of_notMem _ _ (lt_irrefl _ <| hk k ·)]
    · push Not at h₁
      rw [update_of_ne (Ne.symm h₂), s.piecewise_eq_of_mem _ _ (h₁.1.resolve_left <| Ne.symm h₂)]
  · apply sum_congr rfl
    grind

/-- This calculates the differences between the values of a multilinear map at
two arguments that differ on a finset `s` of `ι`. It requires a
linear order on `ι` in order to express the result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean#L1333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
