# MonovaryOn.sum_comp_perm_mul_le_sum_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99ac2a42-1a88-c3a2-0c6f-e8b925f13899",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a4374cd-b68d-e7d6-152d-768eb66dfe0a",
  "kind": "theorem",
  "lexical_name": "MonovaryOn.sum_comp_perm_mul_le_sum_mul",
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
  "slug": "monovaryon-sum-comp-perm-mul-le-sum-mul--be66c9980203e7019000f752",
  "source": {
    "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 370,
    "path": "GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be66c9980203e7019000f752f3b473b45e8ff513de9c6d7a4c82c92f2d8c40aa",
  "verification": {
    "reference": "docs/verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4374cd-b68d-e7d6-152d-768eb66dfe0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonovaryOn.sum_comp_perm_mul_le_sum_mul (hfg : MonovaryOn f g s)
    (hσ : {x | σ x ≠ x} ⊆ s) : ∑ i ∈ s, f (σ i) * g i ≤ ∑ i ∈ s, f i * g i :=
  hfg.sum_comp_perm_smul_le_sum_smul hσ

/-- **Equality case of the Rearrangement Inequality**: Pointwise multiplication of `f` and `g`,
which monovary together on `s`, is unchanged by a permutation if and only if `f ∘ σ` and `g`
monovary together on `s`. Stated by permuting the entries of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
