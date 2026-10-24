# ediam_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4010a4b5-296c-e230-d6b5-e3bea8e170b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:386b8ef5-f6c2-e7a8-7d12-32a78c93f6f1",
  "kind": "theorem",
  "lexical_name": "ediam_eq",
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
  "slug": "ediam-eq--cef5467081b0efe159a5532f",
  "source": {
    "blob": "991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1222,
    "line": 1210,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cef5467081b0efe159a5532f58090c85eff08228551bae6bf53607c12e7abdc0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386b8ef5-f6c2-e7a8-7d12-32a78c93f6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1210–1222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_eq {s : Set ℝ} (h : Bornology.IsBounded s) :
    EMetric.diam s = ENNReal.ofReal (sSup s - sInf s) := by
  rcases eq_empty_or_nonempty s with (rfl | hne)
  · simp
  refine le_antisymm (Metric.ediam_le_of_forall_dist_le fun x hx y hy => ?_) ?_
  · exact Real.dist_le_of_mem_Icc (h.subset_Icc_sInf_sSup hx) (h.subset_Icc_sInf_sSup hy)
  · apply ENNReal.ofReal_le_of_le_toReal
    rw [← Metric.diam, ← Metric.diam_closure]
    calc sSup s - sInf s ≤ dist (sSup s) (sInf s) := le_abs_self _
    _ ≤ Metric.diam (closure s) := dist_le_diam_of_mem h.closure (csSup_mem_closure hne h.bddAbove)
        (csInf_mem_closure hne h.bddBelow)

/-- For a bounded set `s : Set ℝ`, its `Metric.diam` is equal to `sSup s - sInf s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant97e58fedaf3ffda0f0946d84352707a3441d4182d01b2778fdb0c009a209012a.lean#L1210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991ff3ff54c2c6b84eae48c935d8aab3ab0c6ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
