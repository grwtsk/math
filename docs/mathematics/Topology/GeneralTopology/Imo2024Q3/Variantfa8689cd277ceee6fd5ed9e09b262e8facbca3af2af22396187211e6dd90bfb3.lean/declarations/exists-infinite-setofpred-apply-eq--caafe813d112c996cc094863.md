# exists_infinite_setOfPred_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f562b22f-8d17-0c7b-ccf9-99a78745e93f",
  "kind": "lemma",
  "lexical_name": "exists_infinite_setOfPred_apply_eq",
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
  "slug": "exists-infinite-setofpred-apply-eq--caafe813d112c996cc094863",
  "source": {
    "blob": "dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caafe813d112c996cc094863c881b13b1bdc81be406965cc138bea0fe6644b9e",
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

Occurrence: `result:f562b22f-8d17-0c7b-ccf9-99a78745e93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_infinite_setOfPred_apply_eq : ∃ m, {i | a i = m}.Infinite := by
  by_contra! hi
  have hr : (Set.range a).Infinite := by
    contrapose! hi with hr
    rw [← Set.finite_coe_iff] at hr
    obtain ⟨n, hn⟩ := Finite.exists_infinite_fiber (Set.rangeFactorization a)
    rw [Set.infinite_coe_iff, Set.preimage] at hn
    simp only [Set.mem_singleton_iff, Set.rangeFactorization, Subtype.ext_iff] at hn
    exact ⟨↑n, hn⟩
  have hinj : Set.InjOn (fun i ↦ Nat.nth (a · = i) 0 + 1) (Set.range a \ Set.Ico 0 (M a N)) := by
    rintro _ ⟨⟨_, rfl⟩, hi⟩ _ ⟨⟨_, rfl⟩, hj⟩ h
    simp only [Set.mem_Ico, zero_le, true_and, not_lt] at hi hj
    simp only [add_left_inj] at h
    convert! congr(a $h) using 1 <;> simp [apply_nth_zero]
  refine (Set.infinite_of_injOn_mapsTo hinj (fun i hi ↦ ?_) (hr.sdiff (Set.finite_Ico _ _))) (hi 1)
  simp only [Set.mem_sdiff, Set.mem_range, Set.mem_Ico, zero_le, true_and, not_lt] at hi
  rcases hi with ⟨⟨_, rfl⟩, hi⟩
  exact hc.apply_nth_add_one_eq toFinset_card_pos
    (N_lt_of_M_le_apply (a := a) (by simp only [apply_nth_zero, hi])).le

@[deprecated (since := "2026-07-09")]
alias exists_infinite_setOf_apply_eq := exists_infinite_setOfPred_apply_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
