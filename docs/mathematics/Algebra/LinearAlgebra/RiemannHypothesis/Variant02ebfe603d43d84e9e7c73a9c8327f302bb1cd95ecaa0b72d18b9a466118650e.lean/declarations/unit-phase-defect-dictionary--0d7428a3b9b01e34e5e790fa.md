# unit_phase_defect_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b92eef621713ca0d2639faaa06609747a79de08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de8056a4-a901-e89c-13da-377fc6ee22bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9207408-4500-cbcb-6ee4-a4e87ec29c47",
  "kind": "theorem",
  "lexical_name": "unit_phase_defect_dictionary",
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
  "slug": "unit-phase-defect-dictionary--0d7428a3b9b01e34e5e790fa",
  "source": {
    "blob": "7b92eef621713ca0d2639faaa06609747a79de08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7428a3b9b01e34e5e790fa63b7eeff5eb4575db62b61dc77982bf96fb8da09",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9207408-4500-cbcb-6ee4-a4e87ec29c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_phase_defect_dictionary (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (Complex.normSq (1 - χ) : ℂ) = Matrix.det (1 - phaseRotation χ) ∧
      Matrix.det (1 - phaseRotation χ) = 2 - Matrix.trace (phaseRotation χ) ∧
      2 - Matrix.trace (phaseRotation χ) =
        (1 / 2 : ℂ) * Matrix.trace ((phaseReflection χ - phaseReflection 1) ^ 2) := by
  refine ⟨phase_defect_eq_det χ, ?_, ?_⟩
  · rw [← phase_defect_eq_det, phase_defect_eq_trace_deficit χ hχ]
  · rw [← phase_defect_eq_trace_deficit χ hχ, phase_defect_eq_half_trace_square]

/-- The scalar phase defect is nonnegative for every complex phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b92eef621713ca0d2639faaa06609747a79de08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
