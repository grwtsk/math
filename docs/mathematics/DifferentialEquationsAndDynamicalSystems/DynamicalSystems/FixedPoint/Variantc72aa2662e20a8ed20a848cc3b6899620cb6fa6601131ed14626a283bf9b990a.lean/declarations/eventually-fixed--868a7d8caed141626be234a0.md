# eventually_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a5c8923-9c38-10f3-5433-0bdba8195431",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e896936-eeb1-ab57-2464-43f4c34fa4e6",
  "kind": "theorem",
  "lexical_name": "eventually_fixed",
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
  "slug": "eventually-fixed--868a7d8caed141626be234a0",
  "source": {
    "blob": "2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 19,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:868a7d8caed141626be234a0e8f303cd72a0224a06ed6f090104ad76c8207c13",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e896936-eeb1-ab57-2464-43f4c34fa4e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_fixed
    (operator : Operator)
    (initial : State) :
    ∃ iteration,
      Function.IsFixedPt operator.step
        ((operator.step^[iteration]) initial) := by
  induction measureEquation : operator.energy.measure initial using
      Nat.strong_induction_on generalizing initial with
  | h measure inductionHypothesis =>
      by_cases fixed : operator.step initial = initial
      · exact ⟨0, by simpa [Function.IsFixedPt] using fixed⟩
      · have decreases :
            operator.energy.measure (operator.step initial) < measure := by
          simpa [measureEquation] using operator.strict_descent initial fixed
        obtain ⟨iteration, eventually⟩ :=
          inductionHypothesis
            (operator.energy.measure (operator.step initial))
            decreases
            (operator.step initial)
            rfl
        refine ⟨iteration + 1, ?_⟩
        simpa [Function.iterate_succ_apply] using eventually

/-- The termination witness packages directly as an exact fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPoint/Variantc72aa2662e20a8ed20a848cc3b6899620cb6fa6601131ed14626a283bf9b990a.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee5f99fbca4c07ceeb2c16dcf9b377de48cc5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
