# actualSignedPeriodicPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1414c3b-2e2e-d668-b84f-3a3612f8c3d2",
  "kind": "theorem",
  "lexical_name": "actualSignedPeriodicPrimitive_abs_le",
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
  "slug": "actualsignedperiodicprimitive-abs-le--e58932d8e057a86fec3f7f69",
  "source": {
    "blob": "368f6a1509324b86a1a8465aa48035c10b79a6cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPeriodicColumnPrimitive/Variante79c48b321e3aa90b6b51c9428e6dbd5af4ed19d1bf718bebbcf07d2ced36b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e58932d8e057a86fec3f7f6927afd4fbec545a1a3115e28c0798a7fecd523c87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPeriodicColumnPrimitive/Variante79c48b321e3aa90b6b51c9428e6dbd5af4ed19d1bf718bebbcf07d2ced36b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1414c3b-2e2e-d668-b84f-3a3612f8c3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedPeriodicPrimitive_abs_le (U M : ℕ) :
    |actualSignedPeriodicPrimitive U M| ≤ (U : ℝ) * ((U : ℝ) + 1) / 16 := by
  unfold actualSignedPeriodicPrimitive
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ) * actualDivisorPeriodicPrimitive d M| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 U, (d : ℝ) / 8 := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
      calc
        _ ≤ 1 * ((d : ℝ) / 8) := mul_le_mul hm
          (actualDivisorPeriodicPrimitive_abs_le d M (Finset.mem_Icc.mp hd).1)
          (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = _ := by rw [← Finset.sum_div, sum_closed_naturals]; ring

/-- Actual finite summation by parts keeps both endpoints and the weight difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPeriodicColumnPrimitive/Variante79c48b321e3aa90b6b51c9428e6dbd5af4ed19d1bf718bebbcf07d2ced36b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPeriodicColumnPrimitive/Variante79c48b321e3aa90b6b51c9428e6dbd5af4ed19d1bf718bebbcf07d2ced36b03.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `368f6a1509324b86a1a8465aa48035c10b79a6cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
