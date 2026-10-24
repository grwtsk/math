# AEMeasurable.inner_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a499da63b783eac48ac532af8607353d29cec7bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efaf61d7-58fd-8e87-dc0d-588b4faade1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:649c3f87-562f-18aa-8217-1a26be8d1616",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.inner_const",
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
  "slug": "aemeasurable-inner-const--35ba84ab56a8b1b4e8e0ca48",
  "source": {
    "blob": "a499da63b783eac48ac532af8607353d29cec7bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ba84ab56a8b1b4e8e0ca48e5e8d8c0c24d00bbc47e67c9a224174248b947ae",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:649c3f87-562f-18aa-8217-1a26be8d1616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.inner_const {m : MeasurableSpace α} [MeasurableSpace E]
    [OpensMeasurableSpace E] [TopologicalSpace.SecondCountableTopology E]
    {μ : MeasureTheory.Measure α} {f : α → E} {c : E} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x => ⟪f x, c⟫) μ :=
  AEMeasurable.inner hf aemeasurable_const
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Inner/Variantbc2cddc0d453914e73a0e623a922790a0107541614cc2ab1e5e355c6abb3479c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a499da63b783eac48ac532af8607353d29cec7bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
