# actualUpperEvenProductMoment_eq_full_mobius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b77d69d-d6df-1261-addf-0a9473e713b4",
  "kind": "theorem",
  "lexical_name": "actualUpperEvenProductMoment_eq_full_mobius_sum",
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
  "slug": "actualupperevenproductmoment-eq-full-mobius-sum--9216d1c24c8466e97ba6ae42",
  "source": {
    "blob": "e0174cef51802a1f2550bc92f950345a3b5ed4f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Variant2dd0a484008a623e520422e608497abac3dd687cf21e586b3f4d17c95268f420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9216d1c24c8466e97ba6ae42095a414be144f5c37540cc4a0ed8bb0c66f427d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Variant2dd0a484008a623e520422e608497abac3dd687cf21e586b3f4d17c95268f420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b77d69d-d6df-1261-addf-0a9473e713b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEvenProductMoment_eq_full_mobius_sum (A : ℝ) :
    actualUpperEvenProductMoment A =
      ∑ n ∈ ((primePowerInventory (2 * A)).filter (fun n : ℕ => 2 ∣ n)).filter
        (fun n : ℕ => 2 * Real.exp (2 * A) / 3 < (n : ℝ)),
        ∑ dk ∈ n.divisorsAntidiagonal, mobiusLogTerm A n dk := by
  unfold actualUpperEvenProductMoment
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  rfl

/-- The touching lower-band atom remains in the exact closed complementary sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Variant2dd0a484008a623e520422e608497abac3dd687cf21e586b3f4d17c95268f420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceCompleteEvenProductMobiusCompensationAndMovingUpperPayment/Variant2dd0a484008a623e520422e608497abac3dd687cf21e586b3f4d17c95268f420.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0174cef51802a1f2550bc92f950345a3b5ed4f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
