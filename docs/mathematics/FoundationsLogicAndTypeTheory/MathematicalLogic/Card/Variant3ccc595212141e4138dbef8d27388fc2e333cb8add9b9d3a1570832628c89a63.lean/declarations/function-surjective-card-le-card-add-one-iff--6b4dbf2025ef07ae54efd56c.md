# Function.Surjective.card_le_card_add_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b90403b2-87f5-a96d-ada1-18b687657a7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f24f27b-7212-2422-9d65-bdfb1c6b0d1f",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.card_le_card_add_one_iff",
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
  "slug": "function-surjective-card-le-card-add-one-iff--6b4dbf2025ef07ae54efd56c",
  "source": {
    "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1426,
    "line": 1396,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b4dbf2025ef07ae54efd56c484ab4cbb5878e6b950b908a2482ff8a86e82988",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f24f27b-7212-2422-9d65-bdfb1c6b0d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1396–1426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.card_le_card_add_one_iff
    {α β : Type*} [Finite α] {f : α → β} (hf : Function.Surjective f) :
    Nat.card α ≤ Nat.card β + 1 ↔ ∀ a b c d,
      f a = f b → f c = f d → a ≠ b → c ≠ d → {a, b} = ({c, d} : Set α) := by
  rcases isEmpty_or_nonempty α
  · simp
  -- pick an inverse `g` to `f`
  let g := Function.surjInv hf
  -- the "decreases cardinality by at most one condition" becomes "`g` misses at most one element"
  rw [← Set.ncard_range_of_injective (Function.injective_surjInv hf),
    ← Set.ncard_add_ncard_compl (Set.range g), add_le_add_iff_left]
  replace hf : ∀ b, f (g b) = b := Function.surjInv_eq hf
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [Set.ncard_le_one_iff_subset_singleton] at h
    -- if `g` misses at most one element, let `x` be this element
    obtain ⟨x, hx⟩ := h
    simp only [Set.subset_def, Set.mem_compl_iff] at hx
    -- we show that the only possible collision is between `x` and `g (f x)`
    suffices ∀ a b : α, f a = f b → a ≠ b → a = x ∨ a = g (f x) by grind
    intro a b
    by_cases ha : a ∈ Set.range g <;> by_cases hb : b ∈ Set.range g <;> grind
  · -- we must show that any two elements `a` and `b` missed by `g` are equal
    rw [Set.ncard_le_one]
    simp only [Set.mem_compl_iff, Set.mem_range, not_exists, ← ne_eq]
    intro a ha b hb
    -- there is a collision between `a` and `g (f a)`, and between `b` and `g (f b)`
    simpa [(ha (f b)).symm] using congrArg (a ∈ ·) (h a (g (f a)) b (g (f b))
      (hf (f a)).symm (hf (f b)).symm (ha (f a)).symm (hb (f b)).symm)

/-- A function `f : α → β` decreases cardinality by at most one if and only if
there is at most a collision between a unique pair of elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean#L1396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2028a5bbeb5ef5b207a08ccc2c5c375fa215d515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
