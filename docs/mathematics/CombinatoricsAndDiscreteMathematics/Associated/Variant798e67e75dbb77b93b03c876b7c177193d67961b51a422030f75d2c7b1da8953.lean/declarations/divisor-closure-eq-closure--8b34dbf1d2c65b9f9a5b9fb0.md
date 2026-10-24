# divisor_closure_eq_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d90fa9b0877ab3ccb5592ba392d53651bee502b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c8386bf-6246-dd0e-95b0-55d7b2dc48c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af54f26c-b9a4-e8d5-8ff0-9b6a4445e51e",
  "kind": "theorem",
  "lexical_name": "divisor_closure_eq_closure",
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
  "slug": "divisor-closure-eq-closure--8b34dbf1d2c65b9f9a5b9fb0",
  "source": {
    "blob": "d90fa9b0877ab3ccb5592ba392d53651bee502b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b34dbf1d2c65b9f9a5b9fb07d48e35d048676bc13adb20055c3fca60dc40f8a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af54f26c-b9a4-e8d5-8ff0-9b6a4445e51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_closure_eq_closure [CancelCommMonoidWithZero α]
    (x y : α) (hxy : x * y ∈ closure { r : α | IsUnit r ∨ Prime r}) :
    x ∈ closure { r : α | IsUnit r ∨ Prime r} := by
  obtain ⟨m, hm, hprod⟩ := exists_multiset_of_mem_closure hxy
  induction m using Multiset.induction generalizing x y with
  | empty =>
    apply subset_closure
    simp only [Set.mem_setOf]
    simp only [Multiset.prod_zero] at hprod
    left; exact isUnit_of_mul_eq_one _ _ hprod.symm
  | cons c s hind =>
    simp only [Multiset.mem_cons, forall_eq_or_imp, Set.mem_setOf] at hm
    simp only [Multiset.prod_cons] at hprod
    simp only [Set.mem_setOf_eq] at hind
    obtain ⟨ha₁ | ha₂, hs⟩ := hm
    · rcases ha₁.exists_right_inv with ⟨k, hk⟩
      refine hind x (y*k) ?_ hs ?_
      · simp only [← mul_assoc, ← hprod, ← Multiset.prod_cons, mul_comm]
        refine multiset_prod_mem _ _ (Multiset.forall_mem_cons.2 ⟨subset_closure (Set.mem_def.2 ?_),
          Multiset.forall_mem_cons.2 ⟨subset_closure (Set.mem_def.2 ?_), (fun t ht =>
          subset_closure (hs t ht))⟩⟩)
        · left; exact isUnit_of_mul_eq_one_right _ _ hk
        · left; exact ha₁
      · rw [← mul_one s.prod, ← hk, ← mul_assoc, ← mul_assoc, mul_eq_mul_right_iff, mul_comm]
        left; exact hprod
    · rcases ha₂.dvd_mul.1 (Dvd.intro _ hprod) with ⟨c, hc⟩ | ⟨c, hc⟩
      · rw [hc]; rw [hc, mul_assoc] at hprod
        refine Submonoid.mul_mem _ (subset_closure (Set.mem_def.2 ?_))
          (hind _ _ ?_ hs (mul_left_cancel₀ ha₂.ne_zero hprod))
        · right; exact ha₂
        rw [← mul_left_cancel₀ ha₂.ne_zero hprod]
        exact multiset_prod_mem _ _ (fun t ht => subset_closure (hs t ht))
      rw [hc, mul_comm x _, mul_assoc, mul_comm c _] at hprod
      refine hind x c ?_ hs (mul_left_cancel₀ ha₂.ne_zero hprod)
      rw [← mul_left_cancel₀ ha₂.ne_zero hprod]
      exact multiset_prod_mem _ _ (fun t ht => subset_closure (hs t ht))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Associated/Variant798e67e75dbb77b93b03c876b7c177193d67961b51a422030f75d2c7b1da8953.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90fa9b0877ab3ccb5592ba392d53651bee502b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
