# Commute.pow_eq_pow_iff_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73bda5168056cb71c25e110ea279282fbc702b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b0a2ace-b367-e617-04d3-4c0f9543e7e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c6fd6c7-c23d-465b-0fd4-8d0f90f4a8bf",
  "kind": "lemma",
  "lexical_name": "Commute.pow_eq_pow_iff_of_coprime",
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
  "slug": "commute-pow-eq-pow-iff-of-coprime--e650ce5d3164b05f7073f2c5",
  "source": {
    "blob": "73bda5168056cb71c25e110ea279282fbc702b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 273,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e650ce5d3164b05f7073f2c57bd81fc175eebdd8f54a6618c50530ec5fa18c14",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c6fd6c7-c23d-465b-0fd4-8d0f90f4a8bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Commute.pow_eq_pow_iff_of_coprime (hab : Commute a b) (hmn : m.Coprime n) :
    a ^ m = b ^ n ↔ ∃ c, a = c ^ n ∧ b = c ^ m := by
  refine ⟨fun h ↦ ?_, by rintro ⟨c, rfl, rfl⟩; rw [← pow_mul, ← pow_mul']⟩
  by_cases m = 0; · aesop
  by_cases n = 0; · aesop
  by_cases hb : b = 0; · exact ⟨0, by aesop⟩
  by_cases ha : a = 0; · exact ⟨0, by have := h.symm; aesop⟩
  refine ⟨a ^ Nat.gcdB m n * b ^ Nat.gcdA m n, ?_, ?_⟩ <;>
  · refine (pow_one _).symm.trans ?_
    conv_lhs => rw [← zpow_natCast, ← hmn, Nat.gcd_eq_gcd_ab]
    simp only [zpow_add₀ ha, zpow_add₀ hb, ← zpow_natCast, (hab.zpow_zpow₀ _ _).mul_zpow,
      ← zpow_mul, mul_comm (Nat.gcdB m n), mul_comm (Nat.gcdA m n)]
    simp only [zpow_mul, zpow_natCast, h]
    exact ((Commute.pow_pow (by aesop) _ _).zpow_zpow₀ _ _).symm

end GroupWithZero

section CommGroupWithZero
variable [CommGroupWithZero α] {a b : α} {m n : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bda5168056cb71c25e110ea279282fbc702b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
