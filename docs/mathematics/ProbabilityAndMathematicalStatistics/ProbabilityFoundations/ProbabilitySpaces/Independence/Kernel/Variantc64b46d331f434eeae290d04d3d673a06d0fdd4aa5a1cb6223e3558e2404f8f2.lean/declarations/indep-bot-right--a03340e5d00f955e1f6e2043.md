# indep_bot_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe6ae29f-8aef-d167-3b1d-ac92d634bdbe",
  "kind": "theorem",
  "lexical_name": "indep_bot_right",
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
  "slug": "indep-bot-right--a03340e5d00f955e1f6e2043",
  "source": {
    "blob": "6b11a3760d5a40fc5cb1c50b429ce8d65e150314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a03340e5d00f955e1f6e20434136e9f50c9609a00c162ce8842bd6514ddbe811",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe6ae29f-8aef-d167-3b1d-ac92d634bdbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indep_bot_right (m' : MeasurableSpace Ω) {_mΩ : MeasurableSpace Ω}
    {κ : kernel α Ω} {μ : Measure α} [IsMarkovKernel κ] :
    Indep m' ⊥ κ μ := by
  intros s t _ ht
  rw [Set.mem_setOf_eq, MeasurableSpace.measurableSet_bot_iff] at ht
  refine Filter.eventually_of_forall (fun a ↦ ?_)
  cases' ht with ht ht
  · rw [ht, Set.inter_empty, measure_empty, mul_zero]
  · rw [ht, Set.inter_univ, measure_univ, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Kernel/Variantc64b46d331f434eeae290d04d3d673a06d0fdd4aa5a1cb6223e3558e2404f8f2.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b11a3760d5a40fc5cb1c50b429ce8d65e150314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
