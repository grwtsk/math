# pred_notMem_iff_isMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f84bf1acfeaf8625fc0ff6a0dd212c2412d22491",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcbe3338-3360-5ed9-d22e-c1ed6c3811d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b68ae2d-a55d-aac3-1e5f-f88566eeeb87",
  "kind": "lemma",
  "lexical_name": "pred_notMem_iff_isMin",
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
  "slug": "pred-notmem-iff-ismin--848a36fb2af9b1aa2784601d",
  "source": {
    "blob": "f84bf1acfeaf8625fc0ff6a0dd212c2412d22491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1319,
    "line": 1309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848a36fb2af9b1aa2784601d67bdac718299d4832e19e2f5fee4043a49b8b97a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b68ae2d-a55d-aac3-1e5f-f88566eeeb87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1309–1319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pred_notMem_iff_isMin [PredOrder α] [NoMinOrder α] {a : s} :
    pred ↑a ∉ s ↔ IsMin a where
  mp := isMin_of_pred_notMem
  mpr h nh := by
    replace h := congr($h.pred_eq.1)
    rw [coe_pred_of_mem nh] at h
    simp at h

@[deprecated (since := "2025-05-23")]
alias not_pred_mem_iff_isMin := pred_notMem_iff_isMin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean#L1309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84bf1acfeaf8625fc0ff6a0dd212c2412d22491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
