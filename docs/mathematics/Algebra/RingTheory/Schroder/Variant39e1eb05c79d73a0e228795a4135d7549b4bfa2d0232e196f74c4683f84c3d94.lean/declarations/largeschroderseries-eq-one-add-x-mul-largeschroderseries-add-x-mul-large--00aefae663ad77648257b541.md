# largeSchroderSeries_eq_one_add_X_mul_largeSchroderSeries_add_X_mul_largeSchroderSeries_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bf4b26fbe020b961c2f63db813ee906ae8fb7e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c8ed13f-547c-1d93-d06a-3debd95bf7d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7be4ff99-857a-51bd-9b5e-e92ce0b5379e",
  "kind": "theorem",
  "lexical_name": "largeSchroderSeries_eq_one_add_X_mul_largeSchroderSeries_add_X_mul_largeSchroderSeries_sq",
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
  "slug": "largeschroderseries-eq-one-add-x-mul-largeschroderseries-add-x-mul-large--00aefae663ad77648257b541",
  "source": {
    "blob": "8bf4b26fbe020b961c2f63db813ee906ae8fb7e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00aefae663ad77648257b5411144a54d790df063a73c298dee39b8836c06eedc",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be4ff99-857a-51bd-9b5e-e92ce0b5379e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largeSchroderSeries_eq_one_add_X_mul_largeSchroderSeries_add_X_mul_largeSchroderSeries_sq :
    largeSchroderSeries = 1 + X * largeSchroderSeries + X * largeSchroderSeries ^ 2 := by
  ext n
  by_cases hn : n = 0
  · aesop
  · have hn' : 0 < n := by omega
    simp only [coeff_largeSchroderSeries, map_add, coeff_one, hn, ↓reduceIte, zero_add]
    rw [coeff_X_mul_largeSchroderSeriesSeries_sq _ hn', coeff_X_mul_largeSchroderSeries _ hn',
      show n = n - 1 + 1 by omega, largeSchroder_succ (n - 1)]
    simp only [add_tsub_cancel_right, Nat.add_left_cancel_iff]
    rw [Iic_eq_Icc, Nat.bot_eq_zero, ← range_succ_eq_Icc_zero]

end PowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Schroder/Variant39e1eb05c79d73a0e228795a4135d7549b4bfa2d0232e196f74c4683f84c3d94.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bf4b26fbe020b961c2f63db813ee906ae8fb7e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
