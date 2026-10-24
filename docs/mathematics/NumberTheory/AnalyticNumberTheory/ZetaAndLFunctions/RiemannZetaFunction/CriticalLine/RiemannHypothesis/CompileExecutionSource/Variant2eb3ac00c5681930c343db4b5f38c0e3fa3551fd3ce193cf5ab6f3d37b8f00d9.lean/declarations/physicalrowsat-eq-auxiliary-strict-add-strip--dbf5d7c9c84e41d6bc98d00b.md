# physicalRowsAt_eq_auxiliary_strict_add_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffb52cafb77e6bdaa68868553b933d91267f3c12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1da663af-f649-8f0f-7a57-ae9300d38bd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10afed92-d014-fcd2-2fd9-2175705b2aa5",
  "kind": "theorem",
  "lexical_name": "physicalRowsAt_eq_auxiliary_strict_add_strip",
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
  "slug": "physicalrowsat-eq-auxiliary-strict-add-strip--dbf5d7c9c84e41d6bc98d00b",
  "source": {
    "blob": "ffb52cafb77e6bdaa68868553b933d91267f3c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf5d7c9c84e41d6bc98d00bf669461f12fedbf4ddaf1d3128e3fbe754617c4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10afed92-d014-fcd2-2fd9-2175705b2aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalRowsAt_eq_auxiliary_strict_add_strip (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) :
    physicalQuotientRowsAt A d U =
      strictLongPlainRowsAt A d U + quotientStripRowsAt A d U := by
  unfold physicalQuotientRowsAt strictLongPlainRowsAt quotientStripRowsAt
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← mul_add, auxiliary_inner_eq_quotient_upper A hA d hd U m
    (Finset.mem_Ioc.mp hm).1]
  exact congrArg (fun r : ℝ => vonMangoldt m * r)
    (sum_quotient_interval_split (U / d) U (sourceKernelCutoff A / d)
      (Nat.div_le_self U d)
      (fun k => sourcePlainWeight A ((d * m * k : ℕ) : ℝ)))

/-- If U is below the quotient upper endpoint, the strip ends exactly at U. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb52cafb77e6bdaa68868553b933d91267f3c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
