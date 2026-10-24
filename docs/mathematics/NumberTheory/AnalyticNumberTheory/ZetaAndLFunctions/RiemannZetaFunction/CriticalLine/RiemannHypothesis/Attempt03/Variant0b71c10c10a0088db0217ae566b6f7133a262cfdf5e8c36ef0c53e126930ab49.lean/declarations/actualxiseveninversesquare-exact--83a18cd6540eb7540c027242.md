# actualXiSevenInverseSquare_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b9ad87-e0b8-03c9-c725-95b68a2a82d2",
  "kind": "theorem",
  "lexical_name": "actualXiSevenInverseSquare_exact",
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
  "slug": "actualxiseveninversesquare-exact--83a18cd6540eb7540c027242",
  "source": {
    "blob": "69aa6343534e43826a0711f462d2d54ae502241a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a18cd6540eb7540c0272420df8f498bd9766f2b44f6a234370fd00328bbee6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b9ad87-e0b8-03c9-c725-95b68a2a82d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenInverseSquare_exact {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) =
      mangoldtLogError T - mangoldtLogError (Real.log 7) -
        shiftedActualChebyshev (Real.exp T) / Real.exp T + shiftedActualChebyshev 7 / 7 := by
  have he7 := shiftedActualChebyshev_inverse_square 7 (by norm_num : (2 : ℝ) ≤ 7)
  have heT := shiftedActualChebyshev_inverse_square (Real.exp T)
    (by linarith [physical_lower hT] : 2 ≤ Real.exp T)
  have hi7 := shiftedActualChebyshev_inverseSquare_intervalIntegrable 7 (by norm_num)
  have hiT := shiftedActualChebyshev_inverseSquare_intervalIntegrable (Real.exp T)
    (by linarith [physical_lower hT])
  have hj := intervalIntegral.integral_interval_sub_left hiT hi7
  rw [he7, heT, Real.log_exp] at hj
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69aa6343534e43826a0711f462d2d54ae502241a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
