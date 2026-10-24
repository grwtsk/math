# physicalRowsAt_eq_auxiliary_add_full_strip_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c951614b1cafde4697ad8d001eec7be43551057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:823a193f-282a-ae69-ebc2-2a1e595165dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f5715d6-12b6-002a-b851-7b85f896d850",
  "kind": "theorem",
  "lexical_name": "physicalRowsAt_eq_auxiliary_add_full_strip_of_le",
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
  "slug": "physicalrowsat-eq-auxiliary-add-full-strip-of-le--0e381fdbdbdd69475e5bbd7f",
  "source": {
    "blob": "9c951614b1cafde4697ad8d001eec7be43551057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e381fdbdbdd69475e5bbd7f3ffa3e0daf795ae2505ef69e1d043202547463ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f5715d6-12b6-002a-b851-7b85f896d850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalRowsAt_eq_auxiliary_add_full_strip_of_le (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) (U : ℕ) (hUT : U ≤ sourceKernelCutoff A / d) :
    physicalQuotientRowsAt A d U = strictLongPlainRowsAt A d U +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        ∑ k ∈ Finset.Ioc (U / d) U,
          sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
  simpa only [quotientStripRowsAt, min_eq_left hUT] using
    physicalRowsAt_eq_auxiliary_strict_add_strip A hA d hd U

/-- If the quotient endpoint is at most U, the auxiliary row is empty after support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalQuotientStrip/Variantb56e4e5f293b1d538046b4ef401e0046a0d8a00462e87eb2773752b8470bae9f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c951614b1cafde4697ad8d001eec7be43551057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
