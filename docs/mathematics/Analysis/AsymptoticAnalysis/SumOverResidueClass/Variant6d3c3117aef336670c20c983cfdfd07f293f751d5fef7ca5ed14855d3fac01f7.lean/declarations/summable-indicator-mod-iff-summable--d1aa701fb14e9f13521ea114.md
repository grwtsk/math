# summable_indicator_mod_iff_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6fef91703824fc2a6a5c69d4c0468d8100528f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e045997-9380-014f-4123-f88d02e2228d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a514fdf9-5321-3afe-65dd-c8a08a5a1ef8",
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
  "slug": "summable-indicator-mod-iff-summable--d1aa701fb14e9f13521ea114",
  "source": {
    "blob": "a6fef91703824fc2a6a5c69d4c0468d8100528f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1aa701fb14e9f13521ea114902d56feb03fda5c875948c5e822afc8ccf4c929",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a514fdf9-5321-3afe-65dd-c8a08a5a1ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant6d3c3117aef336670c20c983cfdfd07f293f751d5fef7ca5ed14855d3fac01f7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6fef91703824fc2a6a5c69d4c0468d8100528f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
