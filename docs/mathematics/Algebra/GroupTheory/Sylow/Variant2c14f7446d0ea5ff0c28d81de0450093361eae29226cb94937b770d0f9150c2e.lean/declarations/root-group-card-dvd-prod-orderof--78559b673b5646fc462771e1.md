# _root_.Group.card_dvd_prod_orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 841,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d2a6ff7-e731-ba64-6ddd-7101da10b14d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b09740b1-2aae-d1e2-feab-7b61be2e7528",
  "kind": "theorem",
  "lexical_name": "_root_.Group.card_dvd_prod_orderOf",
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
  "slug": "root-group-card-dvd-prod-orderof--78559b673b5646fc462771e1",
  "source": {
    "blob": "3b64a56e684a27db95e3f25558fcd30be78a6dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 841,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78559b673b5646fc462771e167d602e98c4831b7cb44a0dff4e1fd19e3a2433e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b09740b1-2aae-d1e2-feab-7b61be2e7528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Group.card_dvd_prod_orderOf [Fintype G] : Nat.card G ∣ ∏ g : G, orderOf g := by
  classical
  refine Nat.dvd_iff_prime_pow_dvd_dvd .. |>.mpr fun p k hp h ↦ ?_
  have := Fact.mk hp
  have ⟨H, hH⟩ := exists_subgroup_card_pow_prime p h
  have (g : G) (hg : g ∈ (H \ {1} : Set G).toFinset) : p ∣ orderOf g := by
    have ⟨hg, hg1⟩ : g ∈ H ∧ g ≠ 1 := by simpa using hg
    simpa using IsPGroup.of_card hH |>.dvd_orderOf (g := ⟨g, hg⟩) <| by simpa
  grw [← prod_dvd_prod_of_subset _ _ _ (H \ {1} : Set G).toFinset.subset_univ,
    ← prod_dvd_prod_of_dvd _ _ this, prod_const, k.le_sub_one_of_lt <| k.lt_pow_self hp.one_lt]
  simp [Finset.card_sdiff, ← Nat.card_eq_fintype_card, hH]

/-- If `G` has a normal Sylow `p`-subgroup, then it is the only Sylow `p`-subgroup. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant2c14f7446d0ea5ff0c28d81de0450093361eae29226cb94937b770d0f9150c2e.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b64a56e684a27db95e3f25558fcd30be78a6dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
