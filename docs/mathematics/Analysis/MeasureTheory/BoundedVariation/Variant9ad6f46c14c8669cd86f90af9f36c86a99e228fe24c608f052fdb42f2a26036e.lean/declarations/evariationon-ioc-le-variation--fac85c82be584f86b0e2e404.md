# eVariationOn_Ioc_le_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51986340-14cc-3fbb-881e-5e52dd44771e",
  "kind": "lemma",
  "lexical_name": "eVariationOn_Ioc_le_variation",
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
  "slug": "evariationon-ioc-le-variation--fac85c82be584f86b0e2e404",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 330,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac85c82be584f86b0e2e4044abda85df65356389e630f50c3eaa5005c9acc62",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51986340-14cc-3fbb-881e-5e52dd44771e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma eVariationOn_Ioc_le_variation (hf : BoundedVariationOn f univ) {a b : α} :
    eVariationOn f.rightLim (Ioc a b) ≤ hf.vectorMeasure.variation (Ioc a b) := by
  simp only [eVariationOn, iSup_le_iff, Prod.forall, Subtype.forall, mem_Ioc, and_imp,
    edist_eq_enorm_sub]
  intro n u u_mono u_mem
  calc ∑ i ∈ Finset.range n, ‖Function.rightLim f (u (i + 1)) - Function.rightLim f (u i)‖ₑ
  _ ≤ ∑ i ∈ Finset.range n, hf.vectorMeasure.variation (Ioc (u i) (u (i + 1))) := by
    gcongr with i
    grw [← enorm_measure_le_variation, vectorMeasure_Ioc _ (u_mono (by grind))]
  _ = hf.vectorMeasure.variation (⋃ i ∈ Finset.range n, Ioc (u i) (u (i + 1))) := by
    rw [measure_biUnion_finset ?_ (fun i hi ↦ measurableSet_Ioc)]
    rintro i - j - hij
    simp [Function.onFun]
    grind [Monotone]
  _ ≤ hf.vectorMeasure.variation (Ioc a b) := measure_mono (by simp; grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
