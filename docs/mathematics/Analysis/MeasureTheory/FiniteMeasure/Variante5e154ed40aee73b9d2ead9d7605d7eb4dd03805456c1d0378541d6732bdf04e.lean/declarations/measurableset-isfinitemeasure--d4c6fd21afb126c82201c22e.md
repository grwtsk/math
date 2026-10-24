# measurableSet_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20d371bc-65a1-874d-75bb-53700cd04917",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:677bb4c8-0c65-4b9d-5bf0-b7f9efdf3096",
  "kind": "lemma",
  "lexical_name": "measurableSet_isFiniteMeasure",
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
  "slug": "measurableset-isfinitemeasure--d4c6fd21afb126c82201c22e",
  "source": {
    "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 337,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4c6fd21afb126c82201c22e71a8edf8b734c269fa1d5105d4c728169c1c09c6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:677bb4c8-0c65-4b9d-5bf0-b7f9efdf3096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_isFiniteMeasure : MeasurableSet { μ : Measure Ω | IsFiniteMeasure μ } := by
  suffices { μ : Measure Ω | IsFiniteMeasure μ } = (fun μ => μ univ) ⁻¹' (Set.Ico 0 ∞) by
    rw [this]
    exact Measure.measurable_coe MeasurableSet.univ measurableSet_Ico
  ext μ
  simp only [mem_ofPred_eq, mem_preimage, mem_Ico, zero_le, true_and]
  exact isFiniteMeasure_iff μ

/-- The monoidal product is a measurable function from the product of finite measures over
`α` and `β` into the type of finite measures over `α × β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8d3b802caeee3f409048a9044cc77e96b73f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
