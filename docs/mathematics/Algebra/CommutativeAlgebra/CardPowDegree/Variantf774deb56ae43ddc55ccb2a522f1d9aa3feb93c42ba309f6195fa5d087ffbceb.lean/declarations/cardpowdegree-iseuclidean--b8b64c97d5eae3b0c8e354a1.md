# cardPowDegree_isEuclidean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8cbd22ca216ed03ea25a9d254b737f8a1af93b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:005134b2-0a07-e33f-ecef-11b5921ffff0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ba6218f-b8d7-d3d1-7628-4fb01f9cc3c2",
  "kind": "theorem",
  "lexical_name": "cardPowDegree_isEuclidean",
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
  "slug": "cardpowdegree-iseuclidean--b8b64c97d5eae3b0c8e354a1",
  "source": {
    "blob": "d8cbd22ca216ed03ea25a9d254b737f8a1af93b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8b64c97d5eae3b0c8e354a16775c9c0527c2c3e0e3c2fff389e09e62410c1f5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba6218f-b8d7-d3d1-7628-4fb01f9cc3c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardPowDegree_isEuclidean : IsEuclidean (cardPowDegree : AbsoluteValue Fq[X] ℤ) :=
  have card_pos : 0 < Fintype.card Fq := Fintype.card_pos_iff.mpr inferInstance
  have pow_pos : ∀ n, 0 < (Fintype.card Fq : ℤ) ^ n := fun n =>
    pow_pos (Int.coe_nat_pos.mpr card_pos) n
  { map_lt_map_iff' := fun {p q} => by
      show cardPowDegree p < cardPowDegree q ↔ degree p < degree q
      simp only [cardPowDegree_apply]
      split_ifs with hp hq hq
      · simp only [hp, hq, lt_self_iff_false]
      · simp only [hp, hq, degree_zero, Ne.def, bot_lt_iff_ne_bot, degree_eq_bot, pow_pos,
          not_false_iff]
      · simp only [hp, hq, degree_zero, not_lt_bot, (pow_pos _).not_lt]
      · rw [degree_eq_natDegree hp, degree_eq_natDegree hq, Nat.cast_withBot, Nat.cast_withBot,
          WithBot.coe_lt_coe, pow_lt_pow_iff]
        exact_mod_cast @Fintype.one_lt_card Fq _ _ }
#align polynomial.card_pow_degree_is_euclidean Polynomial.cardPowDegree_isEuclidean

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CardPowDegree/Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8cbd22ca216ed03ea25a9d254b737f8a1af93b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
