# unit_dilation_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebe5a125-c337-74c2-b455-aa5d3e5ab22a",
  "kind": "theorem",
  "lexical_name": "unit_dilation_square_integral",
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
  "slug": "unit-dilation-square-integral--28cb71799648cabf53ee3efb",
  "source": {
    "blob": "0dbfada61aa6ee9e6d2e3c37ad0e26a15d67b207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/Analysis/TestFunctions/PolynomialBumpNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28cb71799648cabf53ee3efb978f2d649a0822f3cb3668c98e60a8ae14c575f0",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe5a125-c337-74c2-b455-aa5d3e5ab22a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_dilation_square_integral (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) =
      sourceNormalization A := by
  have expand : (fun x : ℝ ↦ (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) =
      (fun x ↦ unitSecond x ^ 2 / A ^ 4 -
        (unitSecond x * unitBump x) / (2 * A ^ 2) + unitBump x ^ 2 / 16) := by
    funext x
    ring
  rw [expand]
  simp (disch := (
    apply Continuous.intervalIntegrable
    simp only [unitSecond, unitBump]
    fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub]
  simp only [intervalIntegral.integral_div, unitSecond_square_integral,
    unitSecond_mul_bump_integral, unitBump_square_integral, sourceNormalization]
  ring

/-- The source's prescribed Z_A equals the genuine integral for the explicit weak derivative.
Square integrability is proved independently in `Realization`; no realization is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/PolynomialBumpNormalization.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dbfada61aa6ee9e6d2e3c37ad0e26a15d67b207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
