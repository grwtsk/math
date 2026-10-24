# divisor_source_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bbddccc-79d4-1e64-ca91-34356514c0bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2455a25-a063-d8ab-0f5c-6b6326cf7139",
  "kind": "theorem",
  "lexical_name": "divisor_source_product_integrable",
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
  "slug": "divisor-source-product-integrable--b02ed9a460c653974b2a520c",
  "source": {
    "blob": "66979de2f5534ef71d1cfd4a479262f5aa48d7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 350,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b02ed9a460c653974b2a520c4331b70c26e91c5033ec3b9e348db6398646baf8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2455a25-a063-d8ab-0f5c-6b6326cf7139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_source_product_integrable (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    Integrable (fun x => mangoldtForwardProfile A x *
      divisorDiscrepancyProfile A (vaughanCutoff A) (sourceKernelCutoff A) d x) :=
  profile_product_integrable (by linarith : 0 < A) (longInventory A)
    (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => (1 / (d : ℝ) - if d ∣ n then 1 else 0) / Real.sqrt (n : ℝ))

/-- The full signed physical source interaction of a divisor, before diagonal deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantf6a83e03912f46daba628f5d194929b842ab5df9fd97f47677d3fce53fa4c570.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66979de2f5534ef71d1cfd4a479262f5aa48d7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
