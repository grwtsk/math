# divisors_filter_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52515e9d-a7ed-2013-72cf-6004a788bc93",
  "kind": "theorem",
  "lexical_name": "divisors_filter_squarefree",
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
  "slug": "divisors-filter-squarefree--b9577f16a9922df999eac518",
  "source": {
    "blob": "fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9577f16a9922df999eac5186ab74334f8f43909a43146ca6b4a9a5e55ee7943",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52515e9d-a7ed-2013-72cf-6004a788bc93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisors_filter_squarefree {n : ℕ} (h0 : n ≠ 0) :
    (n.divisors.filter Squarefree).val =
      (UniqueFactorizationMonoid.normalizedFactors n).toFinset.powerset.val.map fun x =>
        x.val.prod := by
  rw [(Finset.nodup _).ext ((Finset.nodup _).map_on _)]
  · intro a
    simp only [Multiset.mem_filter, id.def, Multiset.mem_map, Finset.filter_val, ← Finset.mem_def,
      mem_divisors]
    constructor
    · rintro ⟨⟨an, h0⟩, hsq⟩
      use (UniqueFactorizationMonoid.normalizedFactors a).toFinset
      simp only [id.def, Finset.mem_powerset]
      rcases an with ⟨b, rfl⟩
      rw [mul_ne_zero_iff] at h0
      rw [UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors h0.1] at hsq
      rw [Multiset.toFinset_subset, Multiset.toFinset_val, hsq.dedup, ← associated_iff_eq,
        normalizedFactors_mul h0.1 h0.2]
      exact ⟨Multiset.subset_of_le (Multiset.le_add_right _ _), normalizedFactors_prod h0.1⟩
    · rintro ⟨s, hs, rfl⟩
      rw [Finset.mem_powerset, ← Finset.val_le_iff, Multiset.toFinset_val] at hs
      have hs0 : s.val.prod ≠ 0 := by
        rw [Ne.def, Multiset.prod_eq_zero_iff]
        intro con
        apply
          not_irreducible_zero
            (irreducible_of_normalized_factor 0 (Multiset.mem_dedup.1 (Multiset.mem_of_le hs con)))
      rw [(normalizedFactors_prod h0).symm.dvd_iff_dvd_right]
      refine' ⟨⟨Multiset.prod_dvd_prod_of_le (le_trans hs (Multiset.dedup_le _)), h0⟩, _⟩
      have h :=
        UniqueFactorizationMonoid.factors_unique irreducible_of_normalized_factor
          (fun x hx =>
            irreducible_of_normalized_factor x
              (Multiset.mem_of_le (le_trans hs (Multiset.dedup_le _)) hx))
          (normalizedFactors_prod hs0)
      rw [associated_eq_eq, Multiset.rel_eq] at h
      rw [UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors hs0, h]
      apply s.nodup
  · intro x hx y hy h
    rw [← Finset.val_inj, ← Multiset.rel_eq, ← associated_eq_eq]
    rw [← Finset.mem_def, Finset.mem_powerset] at hx hy
    apply UniqueFactorizationMonoid.factors_unique _ _ (associated_iff_eq.2 h)
    · intro z hz
      apply irreducible_of_normalized_factor z
      rw [← Multiset.mem_toFinset]
      apply hx hz
    · intro z hz
      apply irreducible_of_normalized_factor z
      rw [← Multiset.mem_toFinset]
      apply hy hz
#align nat.divisors_filter_squarefree Nat.divisors_filter_squarefree

open BigOperators

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
