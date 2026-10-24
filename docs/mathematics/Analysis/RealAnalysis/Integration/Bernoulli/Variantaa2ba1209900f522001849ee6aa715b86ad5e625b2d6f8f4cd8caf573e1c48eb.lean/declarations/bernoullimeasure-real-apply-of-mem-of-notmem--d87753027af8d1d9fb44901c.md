# bernoulliMeasure_real_apply_of_mem_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ebdc83d14a2a60de1acd65b241c770e168e7154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70ece313-b97b-e480-5cbb-3fd81a18ea25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93ec9225-273d-a89d-9be8-60c0a5d5f703",
  "kind": "lemma",
  "lexical_name": "bernoulliMeasure_real_apply_of_mem_of_notMem",
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
  "slug": "bernoullimeasure-real-apply-of-mem-of-notmem--d87753027af8d1d9fb44901c",
  "source": {
    "blob": "8ebdc83d14a2a60de1acd65b241c770e168e7154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d87753027af8d1d9fb44901c7c6d4d1dcfa73e5d00dddc852594c4f6129b550d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ec9225-273d-a89d-9be8-60c0a5d5f703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bernoulliMeasure_real_apply_of_mem_of_notMem (p : I) {s : Set X}
    (hs : MeasurableSet s) (hx : x ∈ s) (hy : y ∉ s) :
    Ber(x, y, p).real s = p := by
  classical
  simp_all [bernoulliMeasure_real_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantaa2ba1209900f522001849ee6aa715b86ad5e625b2d6f8f4cd8caf573e1c48eb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ebdc83d14a2a60de1acd65b241c770e168e7154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
