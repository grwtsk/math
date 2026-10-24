# normal_of_index_eq_minFac_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "710ba1d8d91301645bf4f237baa61dc2402234d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79fa723a-da96-fafd-80d9-8b8a8b23501a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e7454d2-5146-6be6-a0e0-9cc67e2d7dd7",
  "kind": "theorem",
  "lexical_name": "normal_of_index_eq_minFac_card",
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
  "slug": "normal-of-index-eq-minfac-card--018f807d2afde835f5e51046",
  "source": {
    "blob": "710ba1d8d91301645bf4f237baa61dc2402234d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 41,
    "path": "GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:018f807d2afde835f5e5104684ebac5075b6847c889549e73bda2e609cd48c7e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e7454d2-5146-6be6-a0e0-9cc67e2d7dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_index_eq_minFac_card (hHp : H.index = (Nat.card G).minFac) :
    H.Normal := by
  by_cases hG0 : Nat.card G = 0
  · rw [hG0, minFac_zero] at hHp
    exact normal_of_index_eq_two hHp
  by_cases hG1 : Nat.card G = 1
  · rw [hG1, minFac_one] at hHp
    exact normal_of_index_eq_one hHp
  suffices H.normalCore.relindex H = 1 by
    convert H.normalCore_normal
    exact le_antisymm (relindex_eq_one.mp this) (normalCore_le H)
  have : Finite G := finite_of_card_ne_zero hG0
  have index_ne_zero : H.index ≠ 0 := index_ne_zero_of_finite
  rw [← mul_left_inj' index_ne_zero, one_mul, relindex_mul_index H.normalCore_le]
  have hp : Nat.Prime H.index := hHp ▸ minFac_prime hG1
  have h : H.normalCore.index ∣ H.index ! := by
    rw [normalCore_eq_ker, index_ker, index_eq_card, ← Nat.card_perm]
    exact card_subgroup_dvd_card (toPermHom G (G ⧸ H)).range
  apply dvd_antisymm _ (index_dvd_of_le H.normalCore_le)
  rwa [← Coprime.dvd_mul_right, mul_factorial_pred hp.ne_zero]
  have hr1 : H.normalCore.index ≠ 1 := fun hr1 ↦ hp.ne_one <|
    Nat.eq_one_of_dvd_one (hr1 ▸ H.normalCore.index_dvd_of_le H.normalCore_le)
  rw [Nat.coprime_factorial_iff hr1]
  exact lt_of_lt_of_le (Nat.sub_one_lt hp.ne_zero) <|
    hHp ▸ minFac_le_of_dvd (Nat.minFac_prime hr1).two_le
      (dvd_trans (minFac_dvd H.normalCore.index) (H.normalCore.index_dvd_card))

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IndexNormal/Variant077f1824a14653e8666aabcb1ade5a28317811469a911323b8a8e2ee38b3ad9e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710ba1d8d91301645bf4f237baa61dc2402234d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
