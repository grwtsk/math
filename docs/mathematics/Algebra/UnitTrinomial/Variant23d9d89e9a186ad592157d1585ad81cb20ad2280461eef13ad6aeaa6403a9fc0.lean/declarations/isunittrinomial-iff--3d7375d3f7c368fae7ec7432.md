# isUnitTrinomial_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb08b9a744563e6be6d4a3a37fef27c5c3c5cc8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d822ef1-4293-9162-6e69-2422e1b0fe78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44452f0e-6d79-f870-7b31-4d8b56e8ebdf",
  "kind": "theorem",
  "lexical_name": "isUnitTrinomial_iff",
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
  "slug": "isunittrinomial-iff--3d7375d3f7c368fae7ec7432",
  "source": {
    "blob": "fb08b9a744563e6be6d4a3a37fef27c5c3c5cc8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d7375d3f7c368fae7ec7432b53687ed212ec92f605439efaf8a716862c92a89",
  "verification": {
    "reference": "docs/verification/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44452f0e-6d79-f870-7b31-4d8b56e8ebdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnitTrinomial_iff :
    p.IsUnitTrinomial ↔ #p.support = 3 ∧ ∀ k ∈ p.support, IsUnit (p.coeff k) := by
  refine ⟨fun hp => ⟨hp.card_support_eq_three, fun k => hp.coeff_isUnit⟩, fun hp => ?_⟩
  obtain ⟨k, m, n, hkm, hmn, x, y, z, hx, hy, hz, rfl⟩ := card_support_eq_three.mp hp.1
  rw [support_trinomial hkm hmn hx hy hz] at hp
  replace hx := hp.2 k (mem_insert_self k {m, n})
  replace hy := hp.2 m (mem_insert_of_mem (mem_insert_self m {n}))
  replace hz := hp.2 n (mem_insert_of_mem (mem_insert_of_mem (mem_singleton_self n)))
  simp_rw [coeff_add, coeff_C_mul, coeff_X_pow_self, mul_one, coeff_X_pow] at hx hy hz
  rw [ite_eq_right hkm.ne, ite_eq_right (hkm.trans hmn).ne] at hx
  rw [ite_eq_right hkm.ne', ite_eq_right hmn.ne] at hy
  rw [ite_eq_right (hkm.trans hmn).ne', ite_eq_right hmn.ne'] at hz
  simp_rw [mul_zero, zero_add, add_zero] at hx hy hz
  exact ⟨k, m, n, hkm, hmn, hx.unit, hy.unit, hz.unit, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UnitTrinomial/Variant23d9d89e9a186ad592157d1585ad81cb20ad2280461eef13ad6aeaa6403a9fc0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb08b9a744563e6be6d4a3a37fef27c5c3c5cc8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
