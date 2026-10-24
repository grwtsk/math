# literal_counting_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e35a0810-5dce-8458-8718-f32af6040009",
  "kind": "theorem",
  "lexical_name": "literal_counting_primitive_derivative",
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
  "slug": "literal-counting-primitive-derivative--685967e0bdce1ffd1b4a5551",
  "source": {
    "blob": "b1d5b75bc2ec99362199057bf9bc123cb41b9497",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685967e0bdce1ffd1b4a5551f6ae7dc0444a18a58fc52e5ab36710711205ad57",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e35a0810-5dce-8458-8718-f32af6040009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_counting_primitive_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt countingPrimitive (density x) x := by
  have hd := Complex.reCLM.hasFDerivAt.comp_hasDerivAt x (literal_complex_counting_derivative hx)
  have hr : HasDerivAt (fun y : ℝ ↦ (phase * Complex.exp (exponent * (Real.log y : ℂ))).re)
      (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))).re x := by
    simpa using! hd
  simpa only [countingPrimitive, density] using! (hasDerivAt_id x).add hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d5b75bc2ec99362199057bf9bc123cb41b9497` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
