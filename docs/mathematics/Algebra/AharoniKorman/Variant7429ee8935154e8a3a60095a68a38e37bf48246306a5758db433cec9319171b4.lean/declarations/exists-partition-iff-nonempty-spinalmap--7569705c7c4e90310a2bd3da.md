# exists_partition_iff_nonempty_spinalMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbafcb81-e4d8-69b0-a47e-2897140f558c",
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
  "slug": "exists-partition-iff-nonempty-spinalmap--7569705c7c4e90310a2bd3da",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 540,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7569705c7c4e90310a2bd3daa35f2b75ef3bd1baddbd6e6713cfcb4cc8cc8b3c",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbafcb81-e4d8-69b0-a47e-2897140f558c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–577.

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

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
