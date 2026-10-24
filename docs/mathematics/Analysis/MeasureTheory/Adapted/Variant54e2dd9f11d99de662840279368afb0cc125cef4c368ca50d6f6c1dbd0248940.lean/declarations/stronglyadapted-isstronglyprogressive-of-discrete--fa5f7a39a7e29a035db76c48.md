# StronglyAdapted.isStronglyProgressive_of_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c91f5fcb9b1982ac9d8be6ff26cc4d093a54e91e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54e2dd9f11d99de662840279368afb0cc125cef4c368ca50d6f6c1dbd0248940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34ed942f-25a7-ea2b-ccc1-785c2781e5c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c93b38b-b71a-0f7c-11e2-48125b5f6ade",
  "kind": "theorem",
  "lexical_name": "StronglyAdapted.isStronglyProgressive_of_discrete",
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
  "slug": "stronglyadapted-isstronglyprogressive-of-discrete--fa5f7a39a7e29a035db76c48",
  "source": {
    "blob": "c91f5fcb9b1982ac9d8be6ff26cc4d093a54e91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 376,
    "path": "GRWTSK/Analysis/MeasureTheory/Adapted/Variant54e2dd9f11d99de662840279368afb0cc125cef4c368ca50d6f6c1dbd0248940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa5f7a39a7e29a035db76c486f2d254b39b3e54950cb0ee675054b51773c971e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Adapted/Variant54e2dd9f11d99de662840279368afb0cc125cef4c368ca50d6f6c1dbd0248940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c93b38b-b71a-0f7c-11e2-48125b5f6ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyAdapted.isStronglyProgressive_of_discrete [TopologicalSpace ι] [DiscreteTopology ι]
    [SecondCountableTopology ι] [MeasurableSpace ι] [OpensMeasurableSpace ι]
    [PseudoMetrizableSpace β] (h : StronglyAdapted f u) : IsStronglyProgressive f u :=
  h.isStronglyProgressive_of_continuous fun _ => continuous_of_discreteTopology

@[deprecated (since := "2026-04-24")] alias ProgMeasurable := IsStronglyProgressive

@[deprecated (since := "2026-04-24")] alias progMeasurable_const := isStronglyProgressive_const

@[deprecated (since := "2026-04-24")]
alias ProgMeasurable.stronglyAdapted := IsStronglyProgressive.stronglyAdapted

@[deprecated (since := "2026-04-24")] alias ProgMeasurable.comp := IsStronglyProgressive.comp

@[deprecated (since := "2026-04-24")] alias ProgMeasurable.add := IsStronglyProgressive.add

@[to_additive existing, deprecated (since := "2026-04-24")]
alias ProgMeasurable.mul := IsStronglyProgressive.mul

@[deprecated (since := "2026-04-24")]
alias ProgMeasurable.finset_sum' := IsStronglyProgressive.finsetSum'

@[to_additive existing, deprecated (since := "2026-04-24")]
alias ProgMeasurable.finset_prod' := IsStronglyProgressive.finsetProd'

@[deprecated (since := "2026-04-24")]
alias ProgMeasurable.finset_sum := IsStronglyProgressive.finsetSum

@[to_additive existing, deprecated (since := "2026-04-24")]
alias ProgMeasurable.finset_prod := IsStronglyProgressive.finsetProd

@[deprecated (since := "2026-04-24")]
alias ProgMeasurable.neg := IsStronglyProgressive.neg

@[to_additive existing, deprecated (since := "2026-04-24")]
alias ProgMeasurable.inv := IsStronglyProgressive.inv

@[deprecated (since := "2026-04-24")] alias ProgMeasurable.sub := IsStronglyProgressive.sub

@[to_additive existing ProgMeasurable.sub, deprecated (since := "2026-04-24")]
alias ProgMeasurable.div' := IsStronglyProgressive.div'

@[deprecated (since := "2026-04-24")] alias ProgMeasurable.norm := IsStronglyProgressive.norm

@[deprecated (since := "2026-04-24")]
alias progMeasurable_of_tendsto := isStronglyProgressive_of_tendsto

@[deprecated (since := "2026-04-24")]
alias progMeasurable_of_tendsto' := isStronglyProgressive_of_tendsto'

@[deprecated (since := "2026-04-24")]
alias StronglyAdapted.progMeasurable_of_continuous :=
  StronglyAdapted.isStronglyProgressive_of_continuous

@[deprecated (since := "2026-04-24")]
alias StronglyAdapted.progMeasurable_of_discrete :=
  StronglyAdapted.isStronglyProgressive_of_discrete

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Adapted/Variant54e2dd9f11d99de662840279368afb0cc125cef4c368ca50d6f6c1dbd0248940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Adapted/Variant54e2dd9f11d99de662840279368afb0cc125cef4c368ca50d6f6c1dbd0248940.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91f5fcb9b1982ac9d8be6ff26cc4d093a54e91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
