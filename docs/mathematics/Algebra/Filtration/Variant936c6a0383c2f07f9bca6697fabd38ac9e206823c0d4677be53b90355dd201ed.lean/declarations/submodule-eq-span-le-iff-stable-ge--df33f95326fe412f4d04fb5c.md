# submodule_eq_span_le_iff_stable_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73f30eca-31d8-ee88-07db-3e0d565b5b2e",
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
  "slug": "submodule-eq-span-le-iff-stable-ge--df33f95326fe412f4d04fb5c",
  "source": {
    "blob": "3ae4648b974955c12ffea693cd3e46f602c47bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 328,
    "path": "GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df33f95326fe412f4d04fb5cac5d50efdcc124be2e2e9b8c5ffd667b45bd2875",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73f30eca-31d8-ee88-07db-3e0d565b5b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submodule_eq_span_le_iff_stable_ge (n₀ : ℕ) :
    F.submodule = Submodule.span _ (⋃ i ≤ n₀, single R i '' (F.N i : Set M)) ↔
      ∀ n ≥ n₀, I • F.N n = F.N (n + 1) := by
  rw [← submodule_span_single, ← LE.le.le_iff_eq, Submodule.span_le, Set.iUnion_subset_iff]
  swap; · exact Submodule.span_mono (Set.iUnion₂_subset_iUnion _ _)
  constructor
  · intro H n hn
    refine' (F.smul_le n).antisymm _
    intro x hx
    obtain ⟨l, hl⟩ := (Finsupp.mem_span_iff_total _ _ _).mp (H _ ⟨x, hx, rfl⟩)
    replace hl := congr_arg (fun f : ℕ →₀ M => f (n + 1)) hl
    dsimp only at hl
    erw [Finsupp.single_eq_same] at hl
    rw [← hl, Finsupp.total_apply, Finsupp.sum_apply]
    apply Submodule.sum_mem _ _
    rintro ⟨_, _, ⟨n', rfl⟩, _, ⟨hn', rfl⟩, m, hm, rfl⟩ -
    dsimp only [Subtype.coe_mk]
    rw [Subalgebra.smul_def, smul_single_apply, if_pos (show n' ≤ n + 1 by linarith)]
    have e : n' ≤ n := by linarith
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
    rw [Nat.succ_eq_add_one, ← hF _ hj']
    rintro _ ⟨m, hm, rfl⟩
    refine' Submodule.smul_induction_on hm (fun r hr m' hm' => _) (fun x y hx hy => _)
    · rw [add_comm, ← monomial_smul_single]
      exact F'.smul_mem
        ⟨_, reesAlgebra.monomial_mem.mpr (by rwa [pow_one])⟩ (hj <| Set.mem_image_of_mem _ hm')
    · rw [map_add]
      exact F'.add_mem hx hy
#align ideal.filtration.submodule_eq_span_le_iff_stable_ge Ideal.Filtration.submodule_eq_span_le_iff_stable_ge

/-- If the components of a filtration are finitely generated, then the filtration is stable iff
its associated submodule of is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae4648b974955c12ffea693cd3e46f602c47bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
