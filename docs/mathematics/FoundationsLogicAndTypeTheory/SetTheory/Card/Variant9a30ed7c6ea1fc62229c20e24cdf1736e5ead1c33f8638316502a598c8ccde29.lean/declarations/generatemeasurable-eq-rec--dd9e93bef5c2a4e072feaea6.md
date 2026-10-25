# generateMeasurable_eq_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96e96769a8907ae9000436c7eef12f2c09d856f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4026aa4-4e11-115c-6cdc-9f26a4759aca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:986ea096-6ff8-a667-b244-0588f489ecca",
  "kind": "theorem",
  "lexical_name": "generateMeasurable_eq_rec",
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
  "slug": "generatemeasurable-eq-rec--dd9e93bef5c2a4e072feaea6",
  "source": {
    "blob": "96e96769a8907ae9000436c7eef12f2c09d856f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9e93bef5c2a4e072feaea6d689bfd037d4cab4762f01479db02f97d12ba6da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:986ea096-6ff8-a667-b244-0588f489ecca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateMeasurable_eq_rec (s : Set (Set α)) :
    { t | GenerateMeasurable s t } = generateMeasurableRec s ω₁ := by
  apply (generateMeasurableRec_subset s _).antisymm'
  intro t ht
  induction ht with
  | basic u hu => exact self_subset_generateMeasurableRec s _ hu
  | empty => exact empty_mem_generateMeasurableRec s _
  | compl u _ IH =>
    rw [generateMeasurableRec_omega1, mem_iUnion₂] at IH
    obtain ⟨i, hi, hi'⟩ := IH
    exact generateMeasurableRec_mono _ ((isLimit_omega 1).succ_lt hi).le
      (compl_mem_generateMeasurableRec (Order.lt_succ i) hi')
  | iUnion f _ IH =>
    simp_rw [generateMeasurableRec_omega1, mem_iUnion₂, exists_prop] at IH
    exact iUnion_mem_generateMeasurableRec IH

/-- `generateMeasurableRec` is constant for ordinals `≥ ω₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9a30ed7c6ea1fc62229c20e24cdf1736e5ead1c33f8638316502a598c8ccde29.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e96769a8907ae9000436c7eef12f2c09d856f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
