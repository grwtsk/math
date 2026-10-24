# infinite_setOfPred_apply_eq_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4e24197-aff4-96fb-89ae-d25339309eca",
  "kind": "lemma",
  "lexical_name": "infinite_setOfPred_apply_eq_anti",
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
  "slug": "infinite-setofpred-apply-eq-anti--bba6f6ad1d55a96319d2ad8d",
  "source": {
    "blob": "dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 277,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba6f6ad1d55a96319d2ad8da3e38c6879f94195dbaf1577f66771dbb6b5a856",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4e24197-aff4-96fb-89ae-d25339309eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma infinite_setOfPred_apply_eq_anti {j k : ℕ} (hj : 0 < j) (hk : {i | a i = k}.Infinite)
    (hjk : j ≤ k) : {i | a i = j}.Infinite := by
  have hk' : {i | a (i + 1) = k}.Infinite := by
    have hinj : Set.InjOn (· + 1) {i | a (i + 1) = k} := (add_left_injective _).injOn
    rw [← Set.infinite_image_iff hinj]
    have hk0 : ({i | a i = k} \ {0}).Infinite := hk.sdiff (Set.finite_singleton _)
    convert! hk0 using 1
    ext i
    simp only [Set.mem_image, Set.mem_ofPred_eq, Set.mem_sdiff, Set.mem_singleton_iff]
    refine ⟨?_, ?_⟩
    · rintro ⟨j, rfl, rfl⟩
      simp
    · rintro ⟨rfl, h⟩
      exact ⟨i - 1, by simp [(by lia : i - 1 + 1 = i)]⟩
  have hinj : Set.InjOn (fun x ↦ Nat.nth (a · = a x) (j - 1) + 1)
      ({i | a (i + 1) = k} \ Set.Ico 0 N) := by
    intro x hx y hy h
    simp only [Set.mem_sdiff, Set.mem_ofPred_eq, Set.mem_Ico, zero_le, true_and, not_lt] at hx hy
    rcases hx with ⟨hxk, hNx⟩
    rcases hy with ⟨hyk, hNy⟩
    simp only [add_left_inj] at h
    have hxk' : Nat.nth (a · = a x) (k - 1) = x := by rw [← hxk, hc.nth_apply_add_one_eq hNx]
    have hyk' : Nat.nth (a · = a y) (k - 1) = y := by rw [← hyk, hc.nth_apply_add_one_eq hNy]
    have hjk' : j - 1 ≤ k - 1 := by lia
    apply_fun a at hxk' hyk'
    have hyj : a (Nat.nth (a · = a y) (j - 1)) = a y :=
      Nat.nth_mem_anti (p := (a · = a y)) hjk' hyk'
    rw [← h, Nat.nth_mem_anti (p := (a · = a x)) hjk' hxk'] at hyj
    by_contra hxy
    exact hc.apply_add_one_ne_of_apply_eq hNx hNy hxy hyj (hyk ▸ hxk)
  have hk'' : (_ \ Set.Ico 0 (N + 2)).Infinite :=
    ((Set.infinite_image_iff hinj).mpr (hk'.sdiff (Set.finite_Ico _ _))).sdiff (Set.finite_Ico _ _)
  refine hk''.mono fun _ hi ↦ ?_
  simp only [Set.mem_image, Set.mem_sdiff, Set.mem_ofPred_eq, Set.mem_Ico, zero_le, true_and,
    not_lt] at hi
  rcases hi with ⟨⟨x, -, rfl⟩, _⟩
  rw [Set.mem_ofPred_eq, hc.apply_nth_add_one_eq_of_lt (by lia), Nat.sub_add_cancel hj]

@[deprecated (since := "2026-07-09")]
alias infinite_setOf_apply_eq_anti := infinite_setOfPred_apply_eq_anti

/-! ### The definitions of small, medium and big numbers and the eventual alternation -/

variable (a)

/-- The largest number to appear infinitely often. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
