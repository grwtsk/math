# le_card_quotient_mul_sq_inter_subgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec6df81152a8b5bd81a9f8a180ebf96e674e4947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de61e5d5-72ee-ec66-40ef-a8143c101d83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:853fce8e-9fd9-7296-9efc-1f81b3589e2a",
  "kind": "lemma",
  "lexical_name": "le_card_quotient_mul_sq_inter_subgroup",
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
  "slug": "le-card-quotient-mul-sq-inter-subgroup--653feffb7d2a8c31dbc0bc39",
  "source": {
    "blob": "ec6df81152a8b5bd81a9f8a180ebf96e674e4947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:653feffb7d2a8c31dbc0bc39febe7e7fa04f31365f2cf38e233441b6cad94216",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853fce8e-9fd9-7296-9efc-1f81b3589e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_card_quotient_mul_sq_inter_subgroup (hAsymm : A⁻¹ = A) :
    #A ≤ #(A.image <| QuotientGroup.mk' H) * #{x ∈ A ^ 2 | x ∈ H} := by
  classical
  set π := QuotientGroup.mk' H
  rw [card_eq_sum_card_image π]
  refine sum_le_card_nsmul _ _ _ <| forall_mem_image.2 fun a ha ↦ ?_
  calc
    #{a' ∈ A | π a' = π a}
    _ ≤ #({a' ∈ A | π a' = π a}⁻¹ * {a' ∈ A | π a' = π a}) :=
      card_le_card_mul_left ⟨a⁻¹, by simpa⟩
    _ ≤ #{x ∈ A⁻¹ * A | x ∈ H} := by
      gcongr
      simp only [mul_subset_iff, mem_inv', map_inv, mem_filter, and_imp]
      rintro x hx hxa y hy hya
      refine ⟨mul_mem_mul (by simpa) hy, (QuotientGroup.eq_one_iff _).1 (?_ : π _ = _)⟩
      simp [hya, ← hxa]
    _ = #{x ∈ A ^ 2 | x ∈ H} := by simp [hAsymm, sq]

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientInter/Variant9a320fc6b21b315e61129756f7c31562599ca08f118c082f203928aebf247540.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec6df81152a8b5bd81a9f8a180ebf96e674e4947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
