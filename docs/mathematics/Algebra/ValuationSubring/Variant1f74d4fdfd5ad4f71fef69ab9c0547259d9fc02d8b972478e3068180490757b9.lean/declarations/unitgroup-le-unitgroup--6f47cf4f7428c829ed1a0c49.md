# unitGroup_le_unitGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac22bdbb-0e31-a147-9f81-41421a4a722c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22eb98e7-c6df-c30a-7d9f-14e331608c17",
  "kind": "theorem",
  "lexical_name": "unitGroup_le_unitGroup",
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
  "slug": "unitgroup-le-unitgroup--6f47cf4f7428c829ed1a0c49",
  "source": {
    "blob": "c72ec65bd8197689280fbeb442b5844bd9537b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 505,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f47cf4f7428c829ed1a0c498dc1706fb4c93a12ba95fbf2d4b170c31a908c85",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22eb98e7-c6df-c30a-7d9f-14e331608c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitGroup_le_unitGroup {A B : ValuationSubring K} : A.unitGroup ≤ B.unitGroup ↔ A ≤ B := by
  constructor
  · intro h x hx
    rw [← A.valuation_le_one_iff x, le_iff_lt_or_eq] at hx
    by_cases h_1 : x = 0; · simp only [h_1, zero_mem]
    by_cases h_2 : 1 + x = 0
    · simp only [← add_eq_zero_iff_neg_eq.1 h_2, neg_mem _ _ (one_mem _)]
    cases' hx with hx hx
    · have := h (show Units.mk0 _ h_2 ∈ A.unitGroup from A.valuation.map_one_add_of_lt hx)
      simpa using
        B.add_mem _ _ (show 1 + x ∈ B from SetLike.coe_mem (B.unitGroupMulEquiv ⟨_, this⟩ : B))
          (B.neg_mem _ B.one_mem)
    · have := h (show Units.mk0 x h_1 ∈ A.unitGroup from hx)
      refine' SetLike.coe_mem (B.unitGroupMulEquiv ⟨_, this⟩ : B)
  · rintro h x (hx : A.valuation x = 1)
    apply_fun A.mapOfLE B h at hx
    simpa using hx
#align valuation_subring.unit_group_le_unit_group ValuationSubring.unitGroup_le_unitGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant1f74d4fdfd5ad4f71fef69ab9c0547259d9fc02d8b972478e3068180490757b9.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c72ec65bd8197689280fbeb442b5844bd9537b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
