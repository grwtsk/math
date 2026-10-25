# centralizer_le_alternating_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b783824e-7ce1-77cc-4183-e9d1e966dd0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01dc87f5-aea7-32d1-5afb-ec390fd6e60c",
  "kind": "theorem",
  "lexical_name": "centralizer_le_alternating_iff",
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
  "slug": "centralizer-le-alternating-iff--cfb00394999209cc3465584f",
  "source": {
    "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb00394999209cc3465584fe1f9bf5d899e8655043efe8e87a7ae11f406d437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01dc87f5-aea7-32d1-5afb-ec390fd6e60c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralizer_le_alternating_iff :
    Subgroup.centralizer {g} ≤ alternatingGroup α ↔
      (∀ c ∈ g.cycleType, Odd c) ∧ Fintype.card α ≤ g.cycleType.sum + 1 ∧
        ∀ i, g.cycleType.count i ≤ 1 := by
  rw [SetLike.le_def]
  constructor
  · intro h
    exact ⟨odd_of_centralizer_le_alternatingGroup h,
      card_le_of_centralizer_le_alternating h,
      count_le_one_of_centralizer_le_alternating h⟩
  · rintro ⟨h_odd, h_fixed, h_count⟩ x hx
    rw [← kerParam_range_eq_centralizer_of_count_le_one h_count] at hx
    obtain ⟨⟨y, uv⟩, rfl⟩ := MonoidHom.mem_range.mp hx
    rw [mem_alternatingGroup, sign_kerParam_apply_apply (g := g) y uv]
    convert! mul_one _
    · apply Finset.prod_eq_one
      rintro ⟨c, hc⟩ _
      obtain ⟨k, hk⟩ := (uv _).prop
      rw [← hk, map_zpow]
      convert! one_zpow k
      rw [IsCycle.sign, Odd.neg_one_pow, neg_neg]
      · apply h_odd
        rw [cycleType_def, Multiset.mem_map]
        exact ⟨c, hc, rfl⟩
      · rw [mem_cycleFactorsFinset_iff] at hc
        exact hc.left
    · suffices y = 1 by simp [this]
      have := card_fixedPoints g
      exact card_support_le_one.mp <| le_trans (Finset.card_le_univ _) (by lia)

namespace IsThreeCycle

variable (h5 : 5 ≤ Nat.card α) {g : alternatingGroup α} (hg : IsThreeCycle (g : Perm α))

include h5 hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b91ee73f7f677b9a856c9b8a1ae701dd568a791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
