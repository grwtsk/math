# LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdb80d5b28a57e514db0218578474324db3f0382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d560c247-e432-68a8-23a9-018d3be63453",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5e41652-8715-4bfc-38e6-fb9fcba071e6",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow",
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
  "slug": "lseries-abscissaofabsconv-le-of-le-const-mul-rpow--b05a55823b978d9ddb754a59",
  "source": {
    "blob": "bdb80d5b28a57e514db0218578474324db3f0382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05a55823b978d9ddb754a59319e02abaaef054c1f6fe5fc9b89d853c032239b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e41652-8715-4bfc-38e6-fb9fcba071e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow {f : ℕ → ℂ} {x : ℝ}
    (h : ∃ C, ∀ n ≠ 0, ‖f n‖ ≤ C * n ^ x) : abscissaOfAbsConv f ≤ x + 1 := by
  rw [show x = x + 1 - 1 by ring] at h
  by_contra! H
  obtain ⟨y, hy₁, hy₂⟩ := EReal.exists_between_coe_real H
  exact (LSeriesSummable_of_le_const_mul_rpow (s := y) (EReal.coe_lt_coe_iff.mp hy₁) h
    |>.abscissaOfAbsConv_le.trans_lt hy₂).false

open Filter in
/-- If `‖f n‖` is `O(n^x)`, then the abscissa of absolute convergence
of `f` is bounded by `x + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant8207176b7d01003232d93e83164140c2dafd064485c5449576e609c4f0e6de44.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb80d5b28a57e514db0218578474324db3f0382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
