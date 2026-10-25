# mem_closure_iff_exists_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "077aeca1e08fcafaa55af40152ddec3f0329c8f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8911606-683b-369e-73d3-bbfa3b9e17d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7b2f5e7-394e-5905-8c1d-ac01f2f47037",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff_exists_list",
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
  "slug": "mem-closure-iff-exists-list--cfccf2ca94cb204c271729b3",
  "source": {
    "blob": "077aeca1e08fcafaa55af40152ddec3f0329c8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfccf2ca94cb204c271729b334cc1fa50a4ab938c01c0ef20bd437770bb9aca3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b2f5e7-394e-5905-8c1d-ac01f2f47037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff_exists_list {R} [Semiring R] {s : Set R} {x} :
    x ∈ closure s ↔ ∃ L : List (List R), (∀ t ∈ L, ∀ y ∈ t, y ∈ s) ∧ (L.map List.prod).sum = x := by
  constructor
  · intro hx
    rw [mem_closure_iff] at hx
    induction hx using AddSubmonoid.closure_induction with
    | mem x hx =>
      suffices ∃ t : List R, (∀ y ∈ t, y ∈ s) ∧ t.prod = x from
        let ⟨t, ht1, ht2⟩ := this
        ⟨[t], List.forall_mem_singleton.2 ht1, by
          rw [List.map_singleton, List.sum_singleton, ht2]⟩
      induction hx using Submonoid.closure_induction with
      | mem x hx => exact ⟨[x], List.forall_mem_singleton.2 hx, List.prod_singleton⟩
      | one => exact ⟨[], List.forall_mem_nil _, rfl⟩
      | mul x y _ _ ht hu =>
        obtain ⟨⟨t, ht1, ht2⟩, ⟨u, hu1, hu2⟩⟩ := And.intro ht hu
        exact ⟨t ++ u, List.forall_mem_append.2 ⟨ht1, hu1⟩, by rw [List.prod_append, ht2, hu2]⟩
    | one => exact ⟨[], List.forall_mem_nil _, rfl⟩
    | mul x y _ _ hL hM =>
      obtain ⟨⟨L, HL1, HL2⟩, ⟨M, HM1, HM2⟩⟩ := And.intro hL hM
      exact ⟨L ++ M, List.forall_mem_append.2 ⟨HL1, HM1⟩, by
        rw [List.map_append, List.sum_append, HL2, HM2]⟩
  · rintro ⟨L, HL1, rfl⟩
    exact
      list_sum_mem fun r hr =>
        let ⟨t, ht1, ht2⟩ := List.mem_map.1 hr
        ht2 ▸ list_prod_mem _ fun y hy => subset_closure <| HL1 t ht1 y hy

variable (R) in
/-- `closure` forms a Galois insertion with the coercion to set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `077aeca1e08fcafaa55af40152ddec3f0329c8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
