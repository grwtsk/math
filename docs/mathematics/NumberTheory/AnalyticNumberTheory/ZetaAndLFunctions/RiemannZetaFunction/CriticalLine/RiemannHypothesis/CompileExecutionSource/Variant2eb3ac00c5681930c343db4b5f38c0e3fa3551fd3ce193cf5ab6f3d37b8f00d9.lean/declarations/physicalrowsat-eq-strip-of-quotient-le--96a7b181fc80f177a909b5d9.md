# physicalRowsAt_eq_strip_of_quotient_le

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
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3895a4ba-2e9d-0cfa-6a49-b00e64a90d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d31f8ee-f185-0f8d-3f17-cd4b222cf164",
  "kind": "theorem",
  "lexical_name": "physicalRowsAt_eq_strip_of_quotient_le",
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
  "slug": "physicalrowsat-eq-strip-of-quotient-le--96a7b181fc80f177a909b5d9",
  "source": {
    "blob": "ffb52cafb77e6bdaa68868553b933d91267f3c12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a7b181fc80f177a909b5d9338f04672846b7c7a658ed8ac04a1e67fe6c45a8",
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

Occurrence: `result:7d31f8ee-f185-0f8d-3f17-cd4b222cf164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalRowsAt_eq_strip_of_quotient_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) (hTU : sourceKernelCutoff A / d ≤ U) :
    physicalQuotientRowsAt A d U = quotientStripRowsAt A d U := by
  rw [physicalRowsAt_eq_auxiliary_strict_add_strip A hA d hd U,
    auxiliaryStrictRowsAt_zero_of_quotient_le A hA d hd U hTU, zero_add]

/-- Specialization keeps the original real-A short cutoff and the original long cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variant2eb3ac00c5681930c343db4b5f38c0e3fa3551fd3ce193cf5ab6f3d37b8f00d9.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb52cafb77e6bdaa68868553b933d91267f3c12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
