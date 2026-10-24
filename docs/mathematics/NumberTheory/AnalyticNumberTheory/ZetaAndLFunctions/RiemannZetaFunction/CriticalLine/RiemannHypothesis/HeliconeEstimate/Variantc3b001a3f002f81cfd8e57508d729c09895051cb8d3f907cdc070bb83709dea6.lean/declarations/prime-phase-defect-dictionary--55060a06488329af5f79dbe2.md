# prime_phase_defect_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "981ae71fcaa82529198ac2da5ab94ddad14d9f17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3b001a3f002f81cfd8e57508d729c09895051cb8d3f907cdc070bb83709dea6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f7de618-a552-45e0-b256-7c2ce42c86b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14288718-f6aa-d3d7-3bc7-d012b935e2c7",
  "kind": "theorem",
  "lexical_name": "prime_phase_defect_dictionary",
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
  "slug": "prime-phase-defect-dictionary--55060a06488329af5f79dbe2",
  "source": {
    "blob": "981ae71fcaa82529198ac2da5ab94ddad14d9f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeliconeEstimate/Variantc3b001a3f002f81cfd8e57508d729c09895051cb8d3f907cdc070bb83709dea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55060a06488329af5f79dbe254f0794285f7021b882145deaf827763e8d4b5f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeliconeEstimate/Variantc3b001a3f002f81cfd8e57508d729c09895051cb8d3f907cdc070bb83709dea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14288718-f6aa-d3d7-3bc7-d012b935e2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_phase_defect_dictionary (ξ : ℝ) (n : ℕ) :
    ((2 - 2 * Real.cos (ξ * Real.log n) : ℝ) : ℂ) =
        Matrix.det (1 - phaseRotation (MultiplicativePhase.chi ξ n)) ∧
      Matrix.det (1 - phaseRotation (MultiplicativePhase.chi ξ n)) =
        2 - Matrix.trace (phaseRotation (MultiplicativePhase.chi ξ n)) ∧
      2 - Matrix.trace (phaseRotation (MultiplicativePhase.chi ξ n)) =
        (1 / 2 : ℂ) * Matrix.trace
          ((phaseReflection (MultiplicativePhase.chi ξ n) - phaseReflection 1) ^ 2) := by
  rw [← MultiplicativePhase.normSq_one_sub_chi]
  exact unit_phase_defect_dictionary _ (MultiplicativePhase.chi_normSq ξ n)

/-- A unit phase and positive weight can have zero defect and a strictly
negative signed packet. Thus defect positivity cannot delete its baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeliconeEstimate/Variantc3b001a3f002f81cfd8e57508d729c09895051cb8d3f907cdc070bb83709dea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeliconeEstimate/Variantc3b001a3f002f81cfd8e57508d729c09895051cb8d3f907cdc070bb83709dea6.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981ae71fcaa82529198ac2da5ab94ddad14d9f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
