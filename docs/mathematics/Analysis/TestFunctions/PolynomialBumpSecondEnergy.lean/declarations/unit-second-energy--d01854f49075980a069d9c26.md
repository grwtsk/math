# unit_second_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ae8b00-f2a3-b4a1-7b8b-f5f550bd18e9",
  "kind": "theorem",
  "lexical_name": "unit_second_energy",
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
  "slug": "unit-second-energy--d01854f49075980a069d9c26",
  "source": {
    "blob": "85eb665c4da2513bf4ea2c0e6d3250494163047e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01854f49075980a069d9c26db1d61b60129b0b89a7cb91d80d70eb07f6525f8",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ae8b00-f2a3-b4a1-7b8b-f5f550bd18e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_second_energy (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      32768 / A ^ 8 + (32768 / 77 : ℝ) / A ^ 6 + (12288 / 5005 : ℝ) / A ^ 4 := by
  have expand : (fun x : ℝ ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      fun x ↦ unitFourth x ^ 2 / A ^ 8 -
        (unitFourth x * unitSecond x) / (2 * A ^ 6) + unitSecond x ^ 2 / (16 * A ^ 4) := by
    funext x
    ring
  rw [expand]
  simp (disch := (
    apply Continuous.intervalIntegrable
    dsimp [unitFourth, unitSecond]
    fun_prop)) only [intervalIntegral.integral_add, intervalIntegral.integral_sub]
  simp only [intervalIntegral.integral_div, unitFourth_square_integral,
    unitFourth_mul_second_integral, unitSecond_square_integral]
  ring

/-- The second representative is a compact-interval polynomial, hence square integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85eb665c4da2513bf4ea2c0e6d3250494163047e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
