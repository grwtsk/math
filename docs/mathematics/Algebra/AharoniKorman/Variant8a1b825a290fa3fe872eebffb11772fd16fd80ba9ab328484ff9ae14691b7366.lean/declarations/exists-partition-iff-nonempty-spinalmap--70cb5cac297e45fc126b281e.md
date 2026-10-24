# exists_partition_iff_nonempty_spinalMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:479f4bd5-d85c-dd56-b49b-07ac9305ada2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:722cc788-b255-c38b-6ce7-0377261d7d29",
  "kind": "theorem",
  "lexical_name": "exists_partition_iff_nonempty_spinalMap",
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
  "slug": "exists-partition-iff-nonempty-spinalmap--70cb5cac297e45fc126b281e",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 532,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cb5cac297e45fc126b281e15ec8198e394319a450270c9f46d95160211d351",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:722cc788-b255-c38b-6ce7-0377261d7d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_partition_iff_nonempty_spinalMap
    {α : Type*} [PartialOrder α] {C : Set α} (hC : IsChain (· ≤ ·) C) :
    (∃ S, Setoid.IsPartition S ∧ ∀ A ∈ S, IsAntichain (· ≤ ·) A ∧ (A ∩ C).Nonempty) ↔
      Nonempty (SpinalMap C) := by
  constructor
  · rintro ⟨S, ⟨hSemp, hS⟩, hSA⟩
    simp only [ExistsUnique, and_imp, and_assoc] at hS
    simp only [Set.Nonempty, Set.mem_inter_iff] at hSA
    choose F hFS hFmem hFuniq using hS
    choose hA G hGA hGC using hSA
    let f (x : α) : α := G (F x) (hFS x)
    have hfCid (x : α) (hx : x ∈ C) : f x = x := inter_subsingleton_of_isChain_of_isAntichain
        hC (hA (F x) (hFS _)) ⟨hGC _ _, hGA _ _⟩ ⟨hx, hFmem _⟩
    have hf (x : α) : IsAntichain (· ≤ ·) (f ⁻¹' {x}) := (hA (F x) (hFS _)).subset <| by
      rintro y rfl
      exact hFuniq (f y) (F y) (hFS y) (hGA _ _) ▸ hFmem _
    exact ⟨⟨f, fun x ↦ hGC _ _, hfCid, hf⟩⟩
  · rintro ⟨f⟩
    refine ⟨_, (Setoid.ker f).isPartition_classes, ?_⟩
    rintro _ ⟨x, rfl⟩
    exact ⟨f.fibre_antichain _, f x, by simp⟩

variable {f : SpinalMap C}

/-! ### Explicit chains
In this section we construct an explicit chain in ℕ × ℕ that will be useful later.
These comprise part of 5.8(iv) from [hollom2025]: the full strength of that observation is not
actually needed.
-/
section make_chains

open Finset

/--
An explicit contiguous chain between `(a, b)` and `(c, d)` in `ℕ × ℕ`. We implement this as the
union of two disjoint sets: the first is the chain from `(a, b)` to `(a, d)`, and the second is the
chain from `(a, d)` to `(c, d)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
