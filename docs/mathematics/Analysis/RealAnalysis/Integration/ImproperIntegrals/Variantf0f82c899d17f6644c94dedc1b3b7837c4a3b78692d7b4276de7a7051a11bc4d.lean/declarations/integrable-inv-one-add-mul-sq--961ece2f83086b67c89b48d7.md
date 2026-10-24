# integrable_inv_one_add_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f82c899d17f6644c94dedc1b3b7837c4a3b78692d7b4276de7a7051a11bc4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cde37a74-0663-f298-3a91-6c97a156b490",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:277dd3c5-edcd-409f-11d0-ae8c3236bf86",
  "kind": "theorem",
  "lexical_name": "integrable_inv_one_add_mul_sq",
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
  "slug": "integrable-inv-one-add-mul-sq--961ece2f83086b67c89b48d7",
  "source": {
    "blob": "e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 297,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variantf0f82c899d17f6644c94dedc1b3b7837c4a3b78692d7b4276de7a7051a11bc4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961ece2f83086b67c89b48d7f1f3cc088518446d9dfa7c4789bbecacedf01db4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variantf0f82c899d17f6644c94dedc1b3b7837c4a3b78692d7b4276de7a7051a11bc4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:277dd3c5-edcd-409f-11d0-ae8c3236bf86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_inv_one_add_mul_sq {b : ℝ} (hb : b ≠ 0) :
    Integrable fun x ↦ (1 + (b * x) ^ 2)⁻¹ :=
  (integrable_inv_one_add_sq.comp_mul_left' hb).congr (by simp)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variantf0f82c899d17f6644c94dedc1b3b7837c4a3b78692d7b4276de7a7051a11bc4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variantf0f82c899d17f6644c94dedc1b3b7837c4a3b78692d7b4276de7a7051a11bc4d.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
