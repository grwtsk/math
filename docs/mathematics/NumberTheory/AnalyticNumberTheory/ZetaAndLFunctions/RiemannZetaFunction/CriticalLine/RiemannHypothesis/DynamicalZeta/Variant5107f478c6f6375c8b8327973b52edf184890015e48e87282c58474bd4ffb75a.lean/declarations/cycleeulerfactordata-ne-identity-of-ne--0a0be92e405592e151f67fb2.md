# cycleEulerFactorData_ne_identity_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b71a03d8-88c9-8cb4-7523-e10ed074d247",
  "kind": "theorem",
  "lexical_name": "cycleEulerFactorData_ne_identity_of_ne",
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
  "slug": "cycleeulerfactordata-ne-identity-of-ne--0a0be92e405592e151f67fb2",
  "source": {
    "blob": "1ba1a9399eaa3abfa32d1c2599561dda18697c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 574,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0be92e405592e151f67fb2733d2216c9c679a701635ae2261f32da8c8375d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b71a03d8-88c9-8cb4-7523-e10ed074d247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cycleEulerFactorData_ne_identity_of_ne {n : Nat}
    (H : BitPerm n)
    (hH : H ≠ 1) :
    cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) := by
  intro heuler
  have hcycle : cycleCount H 1 = cycleCount (1 : BitPerm n) 1 := by
    have h := DFunLike.congr_fun heuler 1
    simpa using h
  have hfixedH :=
    fixedPointCount_eq_sum_mul_cycleCount H (by decide : 0 < 1)
  have hfixedOne :=
    fixedPointCount_eq_sum_mul_cycleCount
      (1 : BitPerm n) (by decide : 0 < 1)
  have hfixed :
      fixedPointCount H 1 = fixedPointCount (1 : BitPerm n) 1 := by
    calc
      fixedPointCount H 1 = cycleCount H 1 := by simpa using hfixedH
      _ = cycleCount (1 : BitPerm n) 1 := hcycle
      _ = fixedPointCount (1 : BitPerm n) 1 := by
        simpa using hfixedOne.symm
  have hcard :
      (fixedPoints H 1).card = (Finset.univ : Finset (Bits n)).card := by
    calc
      (fixedPoints H 1).card = fixedPointCount H 1 := rfl
      _ = fixedPointCount (1 : BitPerm n) 1 := hfixed
      _ = 2 ^ n := fixedPointCount_identity 1
      _ = (Finset.univ : Finset (Bits n)).card := by
        rw [Finset.card_univ, BitMatrix.Dynamics.Avalanche.card_bits]
  have hset : fixedPoints H 1 = (Finset.univ : Finset (Bits n)) :=
    Finset.eq_of_subset_of_card_le (Finset.filter_subset _ _)
      (Nat.le_of_eq hcard.symm)
  apply hH
  apply Equiv.ext
  intro x
  have hx : x ∈ fixedPoints H 1 := by rw [hset]; simp
  have hfix := (mem_fixedPoints_iff H 1 x).1 hx
  simpa using hfix

/--
There is nontrivial primitive cycle data with zero avalanche scores.  Thus
cycle information alone proves neither SAC nor derivative-bit independence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba1a9399eaa3abfa32d1c2599561dda18697c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
