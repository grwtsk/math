# exists_infinite_setOfPred_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:753318db-859d-4e70-89f5-43155134c796",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf9b7f87-f4fa-8f41-877e-539fe6eacebd",
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
  "slug": "exists-infinite-setofpred-apply-eq--f6cad4c965ed6d0fa865ad01",
  "source": {
    "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6cad4c965ed6d0fa865ad01537bee5711b99dd3d31048996b16ba590659ef1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9b7f87-f4fa-8f41-877e-539fe6eacebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–188.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d349cfcdfff7f8054e50b2b68caf010e2677752e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
