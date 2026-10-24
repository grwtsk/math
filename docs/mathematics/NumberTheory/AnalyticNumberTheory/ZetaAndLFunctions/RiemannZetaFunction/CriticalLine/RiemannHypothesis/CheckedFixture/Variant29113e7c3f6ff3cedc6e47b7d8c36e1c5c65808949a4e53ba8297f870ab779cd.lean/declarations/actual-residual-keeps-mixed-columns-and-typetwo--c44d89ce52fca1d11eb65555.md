# actual_residual_keeps_mixed_columns_and_typeTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "188e16987f2ad83e788b33841f76482fcf7527a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29113e7c3f6ff3cedc6e47b7d8c36e1c5c65808949a4e53ba8297f870ab779cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c330a5bc-5677-b8af-9df9-5696e7a7d30a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85eaba62-061b-e409-6aac-1b6040f9c3b6",
  "kind": "theorem",
  "lexical_name": "actual_residual_keeps_mixed_columns_and_typeTwo",
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
  "slug": "actual-residual-keeps-mixed-columns-and-typetwo--c44d89ce52fca1d11eb65555",
  "source": {
    "blob": "188e16987f2ad83e788b33841f76482fcf7527a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedFixture/Variant29113e7c3f6ff3cedc6e47b7d8c36e1c5c65808949a4e53ba8297f870ab779cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44d89ce52fca1d11eb65555cb98988055ff9aaafc8834229a3f3d1f2da86b33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedFixture/Variant29113e7c3f6ff3cedc6e47b7d8c36e1c5c65808949a4e53ba8297f870ab779cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85eaba62-061b-e409-6aac-1b6040f9c3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_keeps_mixed_columns_and_typeTwo (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A)) +
      typeTwoSource A :=
  mertensResidual_eq_scaled_strict_rows_and_columns A hA

/-- Actual centered deletion still adds its independent reciprocal-mean compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedFixture/Variant29113e7c3f6ff3cedc6e47b7d8c36e1c5c65808949a4e53ba8297f870ab779cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedFixture/Variant29113e7c3f6ff3cedc6e47b7d8c36e1c5c65808949a4e53ba8297f870ab779cd.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `188e16987f2ad83e788b33841f76482fcf7527a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
