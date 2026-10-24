# zero_rpow_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91a713403aceaf568a54c3f4dbe2be3a2c0cb221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6bcf3b9-475a-7f2d-e9b0-9f39606d73a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f34b4b03-cdf7-b10e-5288-fbb15a0031f6",
  "kind": "theorem",
  "lexical_name": "zero_rpow_mul_self",
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
  "slug": "zero-rpow-mul-self--fa95cc3b4c8fa0cf387e1c07",
  "source": {
    "blob": "91a713403aceaf568a54c3f4dbe2be3a2c0cb221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 422,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa95cc3b4c8fa0cf387e1c0702e4663434f1fdaabdccb947129438679e99cd44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34b4b03-cdf7-b10e-5288-fbb15a0031f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_rpow_mul_self (y : ℝ) : (0 : ℝ≥0∞) ^ y * (0 : ℝ≥0∞) ^ y = (0 : ℝ≥0∞) ^ y := by
  rw [zero_rpow_def]
  split_ifs
  exacts [zero_mul _, one_mul _, top_mul_top]
#align ennreal.zero_rpow_mul_self ENNReal.zero_rpow_mul_self

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant40111048c2940ec71409c03f02a16e6333d2617393ae7f7931537e9483c927ad.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a713403aceaf568a54c3f4dbe2be3a2c0cb221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
