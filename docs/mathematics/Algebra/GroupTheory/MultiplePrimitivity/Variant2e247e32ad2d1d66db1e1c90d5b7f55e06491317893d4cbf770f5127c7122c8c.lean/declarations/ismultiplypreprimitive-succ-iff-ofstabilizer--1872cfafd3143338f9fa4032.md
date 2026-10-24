# isMultiplyPreprimitive_succ_iff_ofStabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c42e44-d3b3-0aab-b298-4f279c9adb8a",
  "kind": "theorem",
  "lexical_name": "isMultiplyPreprimitive_succ_iff_ofStabilizer",
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
  "slug": "ismultiplypreprimitive-succ-iff-ofstabilizer--1872cfafd3143338f9fa4032",
  "source": {
    "blob": "7c6d8cdec8221628505254ecf73d93f1dbf22864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 168,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1872cfafd3143338f9fa40321ed0b5b42f508b028ba0bc4fe3b8c5a915310a74",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c42e44-d3b3-0aab-b298-4f279c9adb8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplyPreprimitive_succ_iff_ofStabilizer
    [IsPretransitive M α] {n : ℕ} (hn : 1 ≤ n) {a : α} :
    IsMultiplyPreprimitive M α n.succ ↔
      IsMultiplyPreprimitive (stabilizer M a) (SubMulAction.ofStabilizer M a) n := by
  constructor
  · apply isMultiplyPreprimitive_ofStabilizer
  · intro H
    rw [isMultiplyPreprimitive_iff]
    constructor
    · exact ofStabilizer.isMultiplyPretransitive.mpr H.isMultiplyPretransitive
    · intro s hs
      have : ∃ b : α, b ∈ s := by
        rw [← Set.nonempty_def, Set.nonempty_iff_ne_empty]
        intro h
        apply not_lt.mpr hn
        rw [h, Set.encard_empty, zero_add, ← Nat.cast_one, Nat.cast_inj, Nat.succ_inj] at hs
        simp only [← hs, zero_lt_one]
      obtain ⟨b, hb⟩ := this
      obtain ⟨g, hg : g • b = a⟩ := exists_smul_eq M b a
      rw [isPreprimitive_ofFixingSubgroup_conj_iff (g := g)]
      set s' := g • s with hs'
      let t : Set (SubMulAction.ofStabilizer M a) := Subtype.val ⁻¹' s'
      have hst : s' = insert a (Subtype.val '' t) := by
        ext x
        constructor
        · intro hxs
          by_cases hxa : x = a
          · simp [hxa]
          · exact Set.mem_insert_of_mem _
              ⟨⟨x, hxa⟩, by simp only [t, Set.mem_preimage]; exact hxs, rfl⟩
        · rw [Set.mem_insert_iff]
          rintro (⟨rfl⟩ | ⟨y, hy, rfl⟩)
          · simpa [s', ← hg]
          · simpa only using! hy
      rw [hst, isPreprimitive_fixingSubgroup_insert_iff]
      apply IsMultiplyPreprimitive.isPreprimitive_ofFixingSubgroup _ n
      apply ENat.add_left_injective_of_ne_top ENat.one_ne_top
      simp only
      rw [← Nat.cast_one, ← Nat.cast_add, ← hs]
      apply congr_arg₂ _ _ rfl
      rw [show s = g⁻¹ • s' by simp [hs'],
        ← Set.image_smul, (MulAction.injective g⁻¹).encard_image, hst]
      rw [Set.encard_insert_of_notMem, Subtype.coe_injective.encard_image, ENat.natCast_one]
      exact notMem_val_image M t

/-- The fixator of a subset of cardinal `d` in an `n`-primitive action
acts `n-d`-primitively on the remaining (`d ≤ n`). -/
@[to_additive
/-- The fixator of a subset of cardinal `d` in an `n`-primitive action
acts `n-d`-primitively on the remaining (`d ≤ n`). -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d8cdec8221628505254ecf73d93f1dbf22864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
