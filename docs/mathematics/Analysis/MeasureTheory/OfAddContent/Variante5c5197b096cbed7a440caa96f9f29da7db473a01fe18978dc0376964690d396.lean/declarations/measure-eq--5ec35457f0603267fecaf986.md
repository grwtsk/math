# measure_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1073d0d0-b09b-6888-f2f0-023c25e9d96f",
  "kind": "theorem",
  "lexical_name": "measure_eq",
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
  "slug": "measure-eq--5ec35457f0603267fecaf986",
  "source": {
    "blob": "58ef0de5c6f79a44ccfd5a9ce2c7756238356876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ec35457f0603267fecaf98604149695b3ce3313618277f58869e88430869bf0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1073d0d0-b09b-6888-f2f0-023c25e9d96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq [mα : MeasurableSpace α] (m : AddContent C) (hC : IsSetSemiring C)
    (hC_gen : mα = MeasurableSpace.generateFrom C) (m_sigma_subadd : m.IsSigmaSubadditive)
    (hs : s ∈ C) :
    m.measure hC hC_gen.le m_sigma_subadd s = m s := by
  rw [measure, trim_measurableSet_eq]
  · exact m.measureCaratheodory_eq hC m_sigma_subadd hs
  · rw [hC_gen]
    apply MeasurableSpace.measurableSet_generateFrom hs

end MeasureTheory.AddContent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/OfAddContent/Variante5c5197b096cbed7a440caa96f9f29da7db473a01fe18978dc0376964690d396.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ef0de5c6f79a44ccfd5a9ce2c7756238356876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
