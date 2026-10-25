# generateMeasurable_eq_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2e4689badbfd992dd861b3d8af1a8d38f277351",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6646ab7-0a4d-dfab-e7c6-d44cfa34e5e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b012be5-d1da-f0a5-dd44-36396519a0dc",
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
  "slug": "generatemeasurable-eq-rec--044b7a39c364dfc17820cf97",
  "source": {
    "blob": "d2e4689badbfd992dd861b3d8af1a8d38f277351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:044b7a39c364dfc17820cf97c4190e98ae1f2055e1000eca067231868f8f2acc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b012be5-d1da-f0a5-dd44-36396519a0dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

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
    rw [generateMeasurableRec_omega_one, mem_iUnion₂] at IH
    obtain ⟨i, hi, hi'⟩ := IH
    exact generateMeasurableRec_mono _ ((isSuccLimit_omega 1).succ_lt hi).le
      (compl_mem_generateMeasurableRec (Order.lt_succ i) hi')
  | iUnion f _ IH =>
    simp_rw [generateMeasurableRec_omega_one, mem_iUnion₂, exists_prop] at IH
    exact iUnion_mem_generateMeasurableRec IH

/-- `generateMeasurableRec` is constant for ordinals `≥ ω₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant3a93156c8ce267a56e33e0ed43aa5d0ff2ca7b758e9f6e0a71de06ae28db0230.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e4689badbfd992dd861b3d8af1a8d38f277351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
