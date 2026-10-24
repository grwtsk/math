# sum_Ico_le_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ef013e-18aa-1cf2-0ef6-6be96bcb5c7e",
  "kind": "lemma",
  "lexical_name": "sum_Ico_le_sum",
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
  "slug": "sum-ico-le-sum--245105b0aa6227058d9fa53a",
  "source": {
    "blob": "749d72e13fca6d1be6405bcbaf922ec1874e9b2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:245105b0aa6227058d9fa53a313bc1228707c60a864b296aa7e3d76a2641b6a4",
  "verification": {
    "reference": "docs/verification/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ef013e-18aa-1cf2-0ef6-6be96bcb5c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_Ico_le_sum {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, c ≤ x) :
    ∑ x ∈ Ico c (c + #s), x ≤ ∑ x ∈ s, x := by
  set r := Ico c (c + #s)
  calc
    _ ≤ ∑ x ∈ r ∩ s, x + #(r \ s) • (c + #s) := by
      rw [← sum_inter_add_sum_diff r s _]
      refine add_le_add_left (sum_le_card_nsmul _ _ _ fun x mx ↦ ?_) _
      rw [mem_sdiff, mem_Ico] at mx; exact mx.1.2.le
    _ = ∑ x ∈ s ∩ r, x + #(s \ r) • (c + #s) := by
      rw [inter_comm, card_sdiff_comm]
      rw [Int.card_Ico, add_sub_cancel_left, Int.toNat_natCast]
    _ ≤ _ := by
      rw [← sum_inter_add_sum_diff s r _]
      refine add_le_add_left (card_nsmul_le_sum _ _ _ fun x mx ↦ ?_) _
      rw [mem_sdiff, mem_Ico, not_and] at mx
      have := mx.2 (hs _ mx.1); omega

/-- Sharp lower bound for the sum of a finset of integers that is bounded below, `range` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749d72e13fca6d1be6405bcbaf922ec1874e9b2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
