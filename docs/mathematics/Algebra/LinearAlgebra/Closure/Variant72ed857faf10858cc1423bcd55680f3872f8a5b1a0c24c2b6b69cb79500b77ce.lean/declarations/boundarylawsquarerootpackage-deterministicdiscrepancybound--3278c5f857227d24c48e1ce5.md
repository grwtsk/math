# BoundaryLawSquareRootPackage.deterministicDiscrepancyBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e82660ebaddfbde2fc2208bdd0226ca356c9df23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1a45252-8e88-bbf0-3e93-2face8eb05b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54c55044-f04c-8aa7-b2bf-4aa9b93f1dd6",
  "kind": "theorem",
  "lexical_name": "BoundaryLawSquareRootPackage.deterministicDiscrepancyBound",
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
  "slug": "boundarylawsquarerootpackage-deterministicdiscrepancybound--3278c5f857227d24c48e1ce5",
  "source": {
    "blob": "e82660ebaddfbde2fc2208bdd0226ca356c9df23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 265,
    "path": "GRWTSK/Algebra/LinearAlgebra/Closure/Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3278c5f857227d24c48e1ce5c496751ed288478aaebf44848f49e795714fb476",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Closure/Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c55044-f04c-8aa7-b2bf-4aa9b93f1dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BoundaryLawSquareRootPackage.deterministicDiscrepancyBound
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) :
    ∀ scale,
      package.assembly.discrepancyNorm scale ≤
        package.assembly.totalConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (package.assembly.mass scale)
            package.assembly.logarithmicOrder := by
  intro scale
  have weightNonnegative :
      0 ≤
        Mathematics.MobiusOntology.squareRootWeight
          (package.assembly.mass scale)
          package.assembly.logarithmicOrder := by
    apply mul_nonneg
    · exact Real.sqrt_nonneg _
    · exact pow_nonneg
        (add_nonneg zero_le_one
          (Real.log_nonneg
            (package.assembly.massAtLeastOne scale)))
        _
  have boundNonnegative :
      0 ≤
        package.assembly.totalConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (package.assembly.mass scale)
            package.assembly.logarithmicOrder :=
    mul_nonneg
      package.assembly.totalConstant_nonnegative
      weightNonnegative
  apply package.assembly.discrepancyNormUpperBound
    scale
    (package.assembly.totalConstant *
      Mathematics.MobiusOntology.squareRootWeight
        (package.assembly.mass scale)
        package.assembly.logarithmicOrder)
    boundNonnegative
  intro test
  have mainBound :=
    package.traceBounds.mainTermBound scale test
  have traceBound :=
    package.traceScale.trace_scale_bound scale test
  have regularizationBound :=
    package.traceBounds.regularizationRemainderBound
      scale test
  have bitfieldBound :=
    package.traceBounds.bitfieldRemainderBound
      scale test
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.mainBiasConstantMatches] at mainBound
  rw [← package.massMatchesTraceScale,
    ← package.testNormMatchesTraceScale,
    ← package.logarithmicOrderMatchesTraceScale,
    ← package.traceConstantMatches] at traceBound
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.regularizationConstantMatches] at
      regularizationBound
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.bitfieldConstantMatches] at
      bitfieldBound
  calc
    ‖package.assembly.discrepancy scale test‖ =
        ‖package.trace.mainTerm scale test +
          package.trace.traceTerm scale test +
          package.trace.regularizationRemainder scale test +
          package.trace.bitfieldRemainder scale test‖ := by
      rw [package.discrepancyMatchesTrace,
        package.trace.traceIdentity]
    _ ≤
        ‖package.trace.mainTerm scale test‖ +
          ‖package.trace.traceTerm scale test‖ +
          ‖package.trace.regularizationRemainder
            scale test‖ +
          ‖package.trace.bitfieldRemainder scale test‖ :=
      norm_add_four_le _ _ _ _
    _ ≤
        package.assembly.mainBiasConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.traceConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.regularizationConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.bitfieldConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test :=
      add_le_add
        (add_le_add
          (add_le_add mainBound traceBound)
          regularizationBound)
        bitfieldBound
    _ =
        package.assembly.totalConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
          package.assembly.testNorm test := by
      simp [SquareRootAssemblyCertificate.totalConstant]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Closure/Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Closure/Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e82660ebaddfbde2fc2208bdd0226ca356c9df23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
