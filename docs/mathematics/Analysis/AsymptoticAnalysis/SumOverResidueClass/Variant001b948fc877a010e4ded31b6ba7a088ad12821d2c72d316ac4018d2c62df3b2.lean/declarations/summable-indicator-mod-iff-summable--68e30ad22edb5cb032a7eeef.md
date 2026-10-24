# summable_indicator_mod_iff_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:980ceda9-bfb5-7b0a-0303-7f3a0471bb4e",
  "kind": "lemma",
  "lexical_name": "summable_indicator_mod_iff_summable",
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
  "slug": "summable-indicator-mod-iff-summable--68e30ad22edb5cb032a7eeef",
  "source": {
    "blob": "7421d9d592cd0502a5e02c666614422214b5f110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e30ad22edb5cb032a7eeef097cb958882f05ca52ffbae6ac09f7021d9bfa9d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:980ceda9-bfb5-7b0a-0303-7f3a0471bb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_indicator_mod_iff_summable {R : Type*} [AddCommGroup R] [TopologicalSpace R]
    [IsTopologicalAddGroup R] (m : ℕ) [hm : NeZero m] (k : ℕ) (f : ℕ → R) :
    Summable ({n : ℕ | (n : ZMod m) = k}.indicator f) ↔ Summable fun n ↦ f (m * n + k) := by
  trans Summable ({n : ℕ | (n : ZMod m) = k ∧ k ≤ n}.indicator f)
  · rw [← (finite_lt_nat k).summable_compl_iff (f := {n : ℕ | (n : ZMod m) = k}.indicator f)]
    simp only [summable_subtype_iff_indicator, indicator_indicator, inter_comm, setOf_and,
      compl_setOf, not_lt]
  · let g : ℕ → ℕ := fun n ↦ m * n + k
    have hg : Function.Injective g := fun m n hmn ↦ by simpa [g, hm.ne] using hmn
    have hg' : ∀ n ∉ range g, {n : ℕ | (n : ZMod m) = k ∧ k ≤ n}.indicator f n = 0 := by
      intro n hn
      contrapose! hn
      exact (Nat.range_mul_add m k).symm ▸ mem_of_indicator_ne_zero hn
    convert (Function.Injective.summable_iff hg hg').symm using 3
    simp only [Function.comp_apply, mem_setOf_eq, Nat.cast_add, Nat.cast_mul, CharP.cast_eq_zero,
      zero_mul, zero_add, le_add_iff_nonneg_left, zero_le, and_self, indicator_of_mem, g]

/-- If `f : ℕ → ℝ` is decreasing and has a negative term, then `f` is not summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7421d9d592cd0502a5e02c666614422214b5f110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
