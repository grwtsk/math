# closedPrimeMoment_eq_criticalWeight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c9b272-116a-a7c0-53c2-21b51ba378b9",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_criticalWeight_sum",
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
  "slug": "closedprimemoment-eq-criticalweight-sum--716e92f1030cd04ac2c507de",
  "source": {
    "blob": "55e35b671e3716a378ea08bad41336edc43494a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:716e92f1030cd04ac2c507de83135ac6634fa038764e9c06c053df13f9b387c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c9b272-116a-a7c0-53c2-21b51ba378b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_criticalWeight_sum (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeMoment A = ∑ n ∈ primePowerInventory (2*A),
      ArithmeticFunction.vonMangoldt n * criticalWeight A n := by
  unfold closedPrimeMoment
  apply Finset.sum_congr rfl
  intro n hn
  have hn1 : 1 ≤ n := by
    have := (Finset.mem_Icc.mp hn).1
    omega
  change ArithmeticFunction.vonMangoldt n * EstimateMobiusSplit.closedPrimeWeight A n = _
  rw [← sourcePlainWeight_nat_eq A n hn1,
    sourcePlainWeight_eq_criticalWeight A n (by linarith)]

/-- The scaled smooth integrand is genuinely integrable on its finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e35b671e3716a378ea08bad41336edc43494a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
