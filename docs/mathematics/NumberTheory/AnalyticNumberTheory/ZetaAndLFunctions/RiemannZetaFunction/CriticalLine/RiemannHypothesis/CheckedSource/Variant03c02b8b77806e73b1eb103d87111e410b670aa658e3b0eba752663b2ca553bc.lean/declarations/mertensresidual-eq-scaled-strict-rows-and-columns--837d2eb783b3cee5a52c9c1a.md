# mertensResidual_eq_scaled_strict_rows_and_columns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1984d286468a54c1980f8591309112117fd4c0a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb55a3f8-e168-34f7-4d91-f3af8bd505ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68f01ef3-b960-0b91-92b6-4eca0be0a7ec",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_scaled_strict_rows_and_columns",
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
  "slug": "mertensresidual-eq-scaled-strict-rows-and-columns--837d2eb783b3cee5a52c9c1a",
  "source": {
    "blob": "1984d286468a54c1980f8591309112117fd4c0a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 225,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837d2eb783b3cee5a52c9c1a97bac8dce108336c657b45a8ffb7af99e4c177ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f01ef3-b960-0b91-92b6-4eca0be0a7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_scaled_strict_rows_and_columns (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A)) +
      typeTwoSource A := by
  have hv := mertensResidual_eq_vaughan A hA
  have hs := shortLog_sub_shortPlain_eq_signed_long_rows A hA
  have hl :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A)) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * strictLongPlainRowsAt A d (vaughanCutoff A)) +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * shortColumnPlainRowsAt A d (vaughanCutoff A) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    rw [longRowsAt_eq_strict_add_shortColumn A d (vaughanCutoff A)
      (vaughanCutoff_le_sourceKernelCutoff A hA), mul_add]
  linarith

/-- At scale one the strict coefficient-one rectangle still contains its raw diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1984d286468a54c1980f8591309112117fd4c0a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
