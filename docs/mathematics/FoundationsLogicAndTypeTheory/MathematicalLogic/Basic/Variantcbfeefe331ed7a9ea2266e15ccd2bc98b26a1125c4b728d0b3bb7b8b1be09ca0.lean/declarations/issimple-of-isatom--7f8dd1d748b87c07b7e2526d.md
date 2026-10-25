# isSimple_of_isAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "184c5550db9eeaf7b26053c62d07740bf7157c54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:412cbc72-1f3a-6aff-b6bf-a9e606eed94c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdab7eea-f419-f5dd-571d-77732b4368cb",
  "kind": "lemma",
  "lexical_name": "isSimple_of_isAtom",
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
  "slug": "issimple-of-isatom--7f8dd1d748b87c07b7e2526d",
  "source": {
    "blob": "184c5550db9eeaf7b26053c62d07740bf7157c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8dd1d748b87c07b7e2526d1373c4ccbf4dd16e83ed3983af9e09a85a5d1281",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdab7eea-f419-f5dd-571d-77732b4368cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSimple_of_isAtom (I : LieIdeal R L) (hI : IsAtom I) : IsSimple R I where
  non_abelian := IsSemisimple.non_abelian_of_isAtom I hI
  eq_bot_or_eq_top := by
    -- Suppose that `J` is an ideal of `I`.
    intro J
    -- We first show that `J` is also an ideal of the ambient Lie algebra `L`.
    let J' : LieIdeal R L :=
    { __ := J.toSubmodule.map I.incl.toLinearMap
      lie_mem := by
        rintro x _ ⟨y, hy, rfl⟩
        -- We need to show that `⁅x, y⁆ ∈ J` for any `x ∈ L` and `y ∈ J`.
        -- Since `L` is semisimple, `x` is contained
        -- in the supremum of `I` and the atoms not equal to `I`.
        have hx : x ∈ I ⊔ sSup ({I' : LieIdeal R L | IsAtom I'} \ {I}) := by
          nth_rewrite 1 [← sSup_singleton (a := I)]
          rw [← sSup_union, Set.union_diff_self, Set.union_eq_self_of_subset_left,
            IsSemisimple.sSup_atoms_eq_top]
          · apply LieSubmodule.mem_top
          · simp only [Set.singleton_subset_iff, Set.mem_setOf_eq, hI]
        -- Hence we can write `x` as `a + b` with `a ∈ I`
        -- and `b` in the supremum of the atoms not equal to `I`.
        rw [LieSubmodule.mem_sup] at hx
        obtain ⟨a, ha, b, hb, rfl⟩ := hx
        -- Therefore it suffices to show that `⁅a, y⁆ ∈ J` and `⁅b, y⁆ ∈ J`.
        simp only [Submodule.carrier_eq_coe, add_lie, SetLike.mem_coe]
        apply add_mem
        -- Now `⁅a, y⁆ ∈ J` since `a ∈ I`, `y ∈ J`, and `J` is an ideal of `I`.
        · simp only [Submodule.mem_map, LieSubmodule.mem_toSubmodule, Subtype.exists]
          erw [Submodule.coe_subtype]
          simp only [exists_and_right, exists_eq_right, ha, lie_mem_left, exists_true_left]
          exact lie_mem_right R I J ⟨a, ha⟩ y hy
        -- Finally `⁅b, y⁆ = 0`, by the independence of the atoms.
        · suffices ⁅b, y.val⁆ = 0 by erw [this]; simp only [zero_mem]
          rw [← LieSubmodule.mem_bot (R := R) (L := L),
              ← (IsSemisimple.sSupIndep_isAtom hI).eq_bot]
          exact ⟨lie_mem_right R L I b y y.2, lie_mem_left _ _ _ _ _ hb⟩ }
    -- Now that we know that `J` is an ideal of `L`,
    -- we start with the proof that `I` is a simple Lie algebra.
    -- Assume that `J ≠ ⊤`.
    rw [or_iff_not_imp_right]
    intro hJ
    suffices J' = ⊥ by
      rw [eq_bot_iff] at this ⊢
      intro x hx
      suffices x ∈ J → x = 0 from this hx
      have := @this x.1
      simp only [LieIdeal.incl_coe, LieIdeal.toLieSubalgebra_toSubmodule,
        LieSubmodule.mem_mk_iff', Submodule.mem_map, LieSubmodule.mem_toSubmodule, Subtype.exists,
        LieSubmodule.mem_bot, ZeroMemClass.coe_eq_zero, forall_exists_index, and_imp, J'] at this
      exact fun _ ↦ this (↑x) x.property hx rfl
    -- We need to show that `J = ⊥`.
    -- Since `J` is an ideal of `L`, and `I` is an atom,
    -- it suffices to show that `J < I`.
    apply hI.2
    rw [lt_iff_le_and_ne]
    constructor
    -- We know that `J ≤ I` since `J` is an ideal of `I`.
    · rintro _ ⟨x, -, rfl⟩
      exact x.2
    -- So we need to show `J ≠ I` as ideals of `L`.
    -- This follows from our assumption that `J ≠ ⊤` as ideals of `I`.
    contrapose! hJ
    rw [eq_top_iff]
    rintro ⟨x, hx⟩ -
    rw [← hJ] at hx
    rcases hx with ⟨y, hy, rfl⟩
    exact hy

/--
In a semisimple Lie algebra,
Lie ideals that are contained in the supremum of a finite collection of atoms
are themselves the supremum of a finite subcollection of those atoms.

By a compactness argument, this statement can be extended to arbitrary sets of atoms.
See `atomistic`.

The proof is by induction on the finite set of atoms.
-/
private
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcbfeefe331ed7a9ea2266e15ccd2bc98b26a1125c4b728d0b3bb7b8b1be09ca0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `184c5550db9eeaf7b26053c62d07740bf7157c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
