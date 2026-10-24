# selfZpow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff49bb9d8d1f589ec0cfb62cef7fda901f4015da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19fd7efa-305d-23e3-d403-22d7c080289b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f206fe4b-8a61-b85f-4fcd-926c85f3cbc7",
  "kind": "theorem",
  "lexical_name": "selfZpow_add",
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
  "slug": "selfzpow-add--d585eeace40a81cb214d1605",
  "source": {
    "blob": "ff49bb9d8d1f589ec0cfb62cef7fda901f4015da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 256,
    "path": "GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d585eeace40a81cb214d1605cee54878c6f3f6539d81b9b061439f85f45ae594",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f206fe4b-8a61-b85f-4fcd-926c85f3cbc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfZpow_add {n m : ℤ} : selfZpow x B (n + m) = selfZpow x B n * selfZpow x B m := by
  cases' le_or_lt 0 n with hn hn <;> cases' le_or_lt 0 m with hm hm
  · rw [selfZpow_of_nonneg _ _ hn, selfZpow_of_nonneg _ _ hm,
      selfZpow_of_nonneg _ _ (add_nonneg hn hm), Int.natAbs_add_nonneg hn hm, pow_add]
  · have : n + m = n.natAbs - m.natAbs := by
      rw [Int.natAbs_of_nonneg hn, Int.ofNat_natAbs_of_nonpos hm.le, sub_neg_eq_add]
    rw [selfZpow_of_nonneg _ _ hn, selfZpow_of_neg _ _ hm, this, selfZpow_sub_cast_nat,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow]
  · have : n + m = m.natAbs - n.natAbs := by
      rw [Int.natAbs_of_nonneg hm, Int.ofNat_natAbs_of_nonpos hn.le, sub_neg_eq_add, add_comm]
    rw [selfZpow_of_nonneg _ _ hm, selfZpow_of_neg _ _ hn, this, selfZpow_sub_cast_nat,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow, mul_comm]
  · rw [selfZpow_of_neg _ _ hn, selfZpow_of_neg _ _ hm, selfZpow_of_neg _ _ (add_neg hn hm),
      Int.natAbs_add_neg hn hm, ← mk'_mul, one_mul]
    congr
    ext
    simp [pow_add]
#align self_zpow_add selfZpow_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff49bb9d8d1f589ec0cfb62cef7fda901f4015da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
