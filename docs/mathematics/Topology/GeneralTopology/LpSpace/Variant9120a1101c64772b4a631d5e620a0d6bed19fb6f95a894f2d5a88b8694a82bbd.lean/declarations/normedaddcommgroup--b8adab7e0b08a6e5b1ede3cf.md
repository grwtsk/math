# normedAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa6219e8f41f452322e91fe0a83195b26e275ab175eba821ea8383d9f31234cf",
  "kind": "instance",
  "lexical_name": "normedAddCommGroup",
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
  "slug": "normedaddcommgroup--b8adab7e0b08a6e5b1ede3cf",
  "source": {
    "blob": "050c3f648532b059f5db611c7736fbf6fc32faa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 508,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8adab7e0b08a6e5b1ede3cfc9cd73d7ad4961385a6f0642a58fdb0d457248c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa6219e8f41f452322e91fe0a83195b26e275ab175eba821ea8383d9f31234cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normedAddCommGroup [hp : Fact (1 ≤ p)] : NormedAddCommGroup (lp E p) :=
  AddGroupNorm.toNormedAddCommGroup
    { toFun := norm
      map_zero' := norm_zero
      neg' := norm_neg
      add_le' := fun f g => by
        rcases p.dichotomy with (rfl | hp')
        · cases isEmpty_or_nonempty α
          · -- Porting note: was `simp [lp.eq_zero' f]`
            rw [lp.eq_zero' f]
            simp only [zero_add, norm_zero, le_refl] -- porting note: just `simp` was slow
          refine' (lp.isLUB_norm (f + g)).2 _
          rintro x ⟨i, rfl⟩
          refine' le_trans _ (add_mem_upperBounds_add
            (lp.isLUB_norm f).1 (lp.isLUB_norm g).1 ⟨_, _, ⟨i, rfl⟩, ⟨i, rfl⟩, rfl⟩)
          exact norm_add_le (f i) (g i)
        · have hp'' : 0 < p.toReal := zero_lt_one.trans_le hp'
          have hf₁ : ∀ i, 0 ≤ ‖f i‖ := fun i => norm_nonneg _
          have hg₁ : ∀ i, 0 ≤ ‖g i‖ := fun i => norm_nonneg _
          have hf₂ := lp.hasSum_norm hp'' f
          have hg₂ := lp.hasSum_norm hp'' g
          -- apply Minkowski's inequality
          obtain ⟨C, hC₁, hC₂, hCfg⟩ :=
            Real.Lp_add_le_hasSum_of_nonneg hp' hf₁ hg₁ (norm_nonneg' _) (norm_nonneg' _) hf₂ hg₂
          refine' le_trans _ hC₂
          rw [← Real.rpow_le_rpow_iff (norm_nonneg' (f + g)) hC₁ hp'']
          refine' hasSum_le _ (lp.hasSum_norm hp'' (f + g)) hCfg
          intro i
          exact Real.rpow_le_rpow (norm_nonneg _) (norm_add_le _ _) hp''.le
      eq_zero_of_map_eq_zero' := fun f => norm_eq_zero_iff.1 }

-- TODO: define an `ENNReal` version of `IsConjugateExponent`, and then express this inequality
-- in a better version which also covers the case `p = 1, q = ∞`.
/-- Hölder inequality -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050c3f648532b059f5db611c7736fbf6fc32faa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
