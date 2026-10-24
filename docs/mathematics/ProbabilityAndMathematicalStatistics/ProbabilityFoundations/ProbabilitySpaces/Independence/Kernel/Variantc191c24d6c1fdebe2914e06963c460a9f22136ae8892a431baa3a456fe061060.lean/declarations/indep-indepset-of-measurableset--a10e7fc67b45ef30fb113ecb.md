# Indep.indepSet_of_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7458c459-f066-f917-7fec-84c614f84532",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecd64e50-2e13-2953-bf18-3562d9999198",
  "kind": "theorem",
  "lexical_name": "Indep.indepSet_of_measurableSet",
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
  "slug": "indep-indepset-of-measurableset--a10e7fc67b45ef30fb113ecb",
  "source": {
    "blob": "bb720a5629710180fcd3c206acbe3275cdb76d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 627,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a10e7fc67b45ef30fb113ecbbc1700790ba0cf674f545fe11cd76ea0907e31c6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd64e50-2e13-2953-bf18-3562d9999198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Indep.indepSet_of_measurableSet {m₁ m₂ m0 : MeasurableSpace Ω} {κ : kernel α Ω}
    {μ : Measure α}
    (h_indep : Indep m₁ m₂ κ μ) {s t : Set Ω} (hs : MeasurableSet[m₁] s)
    (ht : MeasurableSet[m₂] t) :
    IndepSet s t κ μ := by
  refine fun s' t' hs' ht' => h_indep s' t' ?_ ?_
  · refine @generateFrom_induction _ (fun u => MeasurableSet[m₁] u) {s} ?_ ?_ ?_ ?_ _ hs'
    · simp only [Set.mem_singleton_iff, forall_eq, hs]
    · exact @MeasurableSet.empty _ m₁
    · exact fun u hu => hu.compl
    · exact fun f hf => MeasurableSet.iUnion hf
  · refine @generateFrom_induction _ (fun u => MeasurableSet[m₂] u) {t} ?_ ?_ ?_ ?_ _ ht'
    · simp only [Set.mem_singleton_iff, forall_eq, ht]
    · exact @MeasurableSet.empty _ m₂
    · exact fun u hu => hu.compl
    · exact fun f hf => MeasurableSet.iUnion hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc191c24d6c1fdebe2914e06963c460a9f22136ae8892a431baa3a456fe061060.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb720a5629710180fcd3c206acbe3275cdb76d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
