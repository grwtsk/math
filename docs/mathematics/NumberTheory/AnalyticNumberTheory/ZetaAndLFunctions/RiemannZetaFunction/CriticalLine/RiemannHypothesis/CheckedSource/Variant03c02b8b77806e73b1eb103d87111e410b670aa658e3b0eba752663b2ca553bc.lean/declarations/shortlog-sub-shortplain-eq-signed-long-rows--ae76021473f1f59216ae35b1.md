# shortLog_sub_shortPlain_eq_signed_long_rows

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
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65d6e191-1918-8024-f26e-f3b291ed2fb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20d0df58-fd92-9885-4a46-244a1af4751b",
  "kind": "theorem",
  "lexical_name": "shortLog_sub_shortPlain_eq_signed_long_rows",
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
  "slug": "shortlog-sub-shortplain-eq-signed-long-rows--ae76021473f1f59216ae35b1",
  "source": {
    "blob": "1984d286468a54c1980f8591309112117fd4c0a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae76021473f1f59216ae35b103efdb4a82956d91447380d1850046bb6279d3e5",
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

Occurrence: `result:20d0df58-fd92-9885-4a46-244a1af4751b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortLog_sub_shortPlain_eq_signed_long_rows (A : ℝ) (hA : 1 ≤ A) :
    shortLogSource A - shortPlainSource A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * longMangoldtPlainRowsAt A d (vaughanCutoff A) := by
  unfold shortLogSource shortPlainSource
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hp := (Finset.mem_Icc.mp hd).1
  have hs :
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * vonMangoldt m * sourcePlainKernel A ((d * m : ℕ) : ℝ)) =
      realMoebius d * shortMangoldtPlainRowsAt A d (vaughanCutoff A) := by
    unfold shortMangoldtPlainRowsAt
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    ring
  rw [hs, ← completeRowsAt_eq_sourceMobiusKernel A hA d hp,
    completeRowsAt_eq_short_add_long A d (vaughanCutoff A)
      (vaughanCutoff_le_sourceKernelCutoff A hA)]
  ring

/-- The original Vaughan residual keeps the mixed columns and the original Type-II term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CheckedSource/Variant03c02b8b77806e73b1eb103d87111e410b670aa658e3b0eba752663b2ca553bc.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1984d286468a54c1980f8591309112117fd4c0a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
