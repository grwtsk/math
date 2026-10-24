# submodule_eq_span_le_iff_stable_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd00b9939ea9017af86e913b656b695ded979226",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed229a1e-e390-5acb-a9a3-8d02f41f3924",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82847b6b-be99-2fbc-ed53-0e6d5e884e37",
  "kind": "theorem",
  "lexical_name": "submodule_eq_span_le_iff_stable_ge",
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
  "slug": "submodule-eq-span-le-iff-stable-ge--83705741e073bdaac836f1c0",
  "source": {
    "blob": "cd00b9939ea9017af86e913b656b695ded979226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 281,
    "path": "GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83705741e073bdaac836f1c0b8741eceedf6ea5d58b20d73d036719e5835ed9f",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82847b6b-be99-2fbc-ed53-0e6d5e884e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submodule_eq_span_le_iff_stable_ge (n₀ : ℕ) :
    F.submodule = Submodule.span _ (⋃ i ≤ n₀, single R i '' (F.N i : Set M)) ↔
      ∀ n ≥ n₀, I • F.N n = F.N (n + 1) := by
  rw [← submodule_span_single, ← LE.le.le_iff_eq, Submodule.span_le, Set.iUnion_subset_iff]
  swap; · exact Submodule.span_mono (Set.iUnion₂_subset_iUnion _ _)
  constructor
  · intro H n hn
    refine (F.smul_le n).antisymm ?_
    intro x hx
    obtain ⟨l, hl⟩ := (Finsupp.mem_span_iff_linearCombination _ _ _).mp (H _ ⟨x, hx, rfl⟩)
    replace hl := congr_arg (fun f : ℕ →₀ M => f (n + 1)) hl
    dsimp only at hl
    rw [PolynomialModule.single_apply, if_pos rfl] at hl
    rw [← hl, Finsupp.linearCombination_apply, Finsupp.sum_apply]
    apply Submodule.sum_mem _ _
    rintro ⟨_, _, ⟨n', rfl⟩, _, ⟨hn', rfl⟩, m, hm, rfl⟩ -
    dsimp only [Subtype.coe_mk]
    rw [Subalgebra.smul_def, smul_single_apply, if_pos (show n' ≤ n + 1 by omega)]
    have e : n' ≤ n := by omega
    have := F.pow_smul_le_pow_smul (n - n') n' 1
    rw [tsub_add_cancel_of_le e, pow_one, add_comm _ 1, ← add_tsub_assoc_of_le e, add_comm] at this
    exact this (Submodule.smul_mem_smul ((l _).2 <| n + 1 - n') hm)
  · let F' := Submodule.span (reesAlgebra I) (⋃ i ≤ n₀, single R i '' (F.N i : Set M))
    intro hF i
    have : ∀ i ≤ n₀, single R i '' (F.N i : Set M) ⊆ F' := by
      -- Porting note: Original proof was
      -- `fun i hi => Set.Subset.trans (Set.subset_iUnion₂ i hi) Submodule.subset_span`
      intro i hi
      refine Set.Subset.trans ?_ Submodule.subset_span
      refine @Set.subset_iUnion₂ _ _ _ (fun i => fun _ => ↑((single R i) '' ((N F i) : Set M))) i ?_
      exact hi
    induction' i with j hj
    · exact this _ (zero_le _)
    by_cases hj' : j.succ ≤ n₀
    · exact this _ hj'
    simp only [not_le, Nat.lt_succ_iff] at hj'
    rw [← hF _ hj']
    rintro _ ⟨m, hm, rfl⟩
    refine Submodule.smul_induction_on hm (fun r hr m' hm' => ?_) (fun x y hx hy => ?_)
    · rw [add_comm, ← monomial_smul_single]
      exact F'.smul_mem
        ⟨_, reesAlgebra.monomial_mem.mpr (by rwa [pow_one])⟩ (hj <| Set.mem_image_of_mem _ hm')
    · rw [map_add]
      exact F'.add_mem hx hy

/-- If the components of a filtration are finitely generated, then the filtration is stable iff
its associated submodule of is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd00b9939ea9017af86e913b656b695ded979226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
