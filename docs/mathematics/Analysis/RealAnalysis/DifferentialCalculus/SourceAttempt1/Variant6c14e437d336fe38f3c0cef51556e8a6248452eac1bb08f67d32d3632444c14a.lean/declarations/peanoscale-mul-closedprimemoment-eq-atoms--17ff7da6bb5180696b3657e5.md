# peanoScale_mul_closedPrimeMoment_eq_atoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03626bf2-e551-33c3-0127-41fa33fca5fa",
  "kind": "theorem",
  "lexical_name": "peanoScale_mul_closedPrimeMoment_eq_atoms",
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
  "slug": "peanoscale-mul-closedprimemoment-eq-atoms--17ff7da6bb5180696b3657e5",
  "source": {
    "blob": "0b199a82edb1a09d4de4c2426799683d8205b7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ff7da6bb5180696b3657e5241ab6b49ed4fff3cb690966373961cb0d9f1595",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03626bf2-e551-33c3-0127-41fa33fca5fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem peanoScale_mul_closedPrimeMoment_eq_atoms {A : ℝ} (hA : 0 < A) :
    peanoScale A * closedPrimeMoment A =
      ∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n / (n : ℝ) *
          deriv (deriv (boundaryPeano A)) (2 * A - Real.log n) := by
  rw [closedPrimeMoment_eq_mangoldtLogSum, mangoldtLogSum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [boundaryPeano_second_deriv_eq_scaled hA,
    show 2 * A - (2 * A - Real.log (n : ℝ)) = Real.log n by ring,
    sourcePeanoPrimitive_second_deriv hA]
  unfold criticalPrimeTest
  ring

/-- The unchanged Mertens residual has the same normalized full finite atom readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b199a82edb1a09d4de4c2426799683d8205b7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
