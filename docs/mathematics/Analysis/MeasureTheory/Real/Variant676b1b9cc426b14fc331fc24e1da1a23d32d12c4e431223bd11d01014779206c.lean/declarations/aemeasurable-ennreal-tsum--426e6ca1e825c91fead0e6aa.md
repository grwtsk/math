# AEMeasurable.ennreal_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc38339bc21d598cbe6b515df8c59225a571733c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f46a612d-fd41-0969-3883-7d978725c490",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b27d1c3-f551-056a-0a19-d2149c691a4c",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.ennreal_tsum",
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
  "slug": "aemeasurable-ennreal-tsum--426e6ca1e825c91fead0e6aa",
  "source": {
    "blob": "bc38339bc21d598cbe6b515df8c59225a571733c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 378,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426e6ca1e825c91fead0e6aa7621fa596662461896ab425488a95e1d8805db4a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b27d1c3-f551-056a-0a19-d2149c691a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.ennreal_tsum {ι} [Countable ι] {f : ι → α → ℝ≥0∞} {μ : Measure α}
    (h : ∀ i, AEMeasurable (f i) μ) : AEMeasurable (fun x => ∑' i, f i x) μ := by
  simp_rw [ENNReal.tsum_eq_iSup_sum]
  exact .iSup fun s ↦ Finset.aemeasurable_fun_sum s fun i _ => h i

@[fun_prop, deprecated
  "Use `AEMeasurable.tsum` from `Mathlib.MeasureTheory.Constructions.Polish.Basic` instead"
  (since := "2026-04-30")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant676b1b9cc426b14fc331fc24e1da1a23d32d12c4e431223bd11d01014779206c.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc38339bc21d598cbe6b515df8c59225a571733c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
