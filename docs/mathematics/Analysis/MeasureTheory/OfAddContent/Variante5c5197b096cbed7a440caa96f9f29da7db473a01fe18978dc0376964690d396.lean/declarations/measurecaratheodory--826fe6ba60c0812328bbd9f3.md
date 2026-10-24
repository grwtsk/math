# measureCaratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fe7f14b6aebff7649cf6a673ad097e7bc0f5c66cd362b8ee4b714016987df31",
  "kind": "def",
  "lexical_name": "measureCaratheodory",
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
  "slug": "measurecaratheodory--826fe6ba60c0812328bbd9f3",
  "source": {
    "blob": "58ef0de5c6f79a44ccfd5a9ce2c7756238356876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:826fe6ba60c0812328bbd9f3bda04ae5fe02a25e0748525f6d528a8578feb66d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fe7f14b6aebff7649cf6a673ad097e7bc0f5c66cd362b8ee4b714016987df31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def measureCaratheodory (m : AddContent C) (hC : IsSetSemiring C)
    (m_sigma_subadd : m.IsSigmaSubadditive) :
    @Measure α (inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem addContent_empty).caratheodory :=
  letI : MeasurableSpace α :=
    (inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem addContent_empty).caratheodory
  { inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem addContent_empty with
    m_iUnion := fun f hf hd ↦ OuterMeasure.iUnion_eq_of_caratheodory _ hf hd
    trim_le := by
      apply le_inducedOuterMeasure.mpr fun s hs ↦ ?_
      have hs_meas : MeasurableSet[(inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem
          addContent_empty).caratheodory] s := by
        show (inducedOuterMeasure (fun x _ ↦ m x) hC.empty_mem addContent_empty).IsCaratheodory s
        exact isCaratheodory_inducedOuterMeasure_of_mem hC m hs
      rw [OuterMeasure.trim_eq _ hs_meas, m.inducedOuterMeasure_eq hC m_sigma_subadd hs] }

/-- The measure `MeasureTheory.AddContent.measureCaratheodory` generated from an
`m : AddContent C` on a `IsSetSemiring C` coincides with the `MeasureTheory.inducedOuterMeasure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ef0de5c6f79a44ccfd5a9ce2c7756238356876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
