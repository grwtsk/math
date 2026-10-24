# thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1291bf9-9732-fb83-21d0-d2ce25e51df2",
  "kind": "theorem",
  "lexical_name": "thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum",
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
  "slug": "thetaphibaseendomorphism-pow-one-eq-touchard-sum--f1827cb9d681a5369a96809c",
  "source": {
    "blob": "181e8809db9e06af15d220fbf0197318f5778f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 232,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1827cb9d681a5369a96809c085fb286b3ab8b9468c818e9983027994482d0da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1291bf9-9732-fb83-21d0-d2ce25e51df2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum
    (n : ℕ) :
    (thetaPhiBaseEndomorphism ^ n) (1 : ℝ[X]) =
      ∑ j ∈ Finset.range (n + 1),
        ((n.choose j : ℝ) *
          (4 : ℝ) ^ j *
          (5 : ℝ) ^ (n - j)) •
            thetaPhiSignedTouchardPolynomial j := by
  let A : Module.End ℝ ℝ[X] :=
    (4 : ℝ) • thetaPhiSignedTouchardOperator
  let I : Module.End ℝ ℝ[X] :=
    (5 : ℝ) • (LinearMap.id : Module.End ℝ ℝ[X])
  have hcomm : Commute A I := by
    simpa [A, I] using scaled_touchard_commute_scaled_id
  have hbase : thetaPhiBaseEndomorphism = A + I := by
    dsimp [A, I, thetaPhiBaseEndomorphism]
    rw [add_comm]
  rw [hbase, hcomm.add_pow]
  change
    (∑ j ∈ Finset.range (n + 1),
      A ^ j * I ^ (n - j) * (n.choose j)) (1 : ℝ[X]) =
      _
  rw [LinearMap.sum_apply]
  apply Finset.sum_congr rfl
  intro j hj
  rw [Module.End.mul_apply, Module.End.natCast_apply,
    Module.End.mul_apply]
  rw [← Nat.cast_smul_eq_nsmul ℝ]
  rw [map_smul, map_smul]
  dsimp [A, I]
  rw [scaled_id_pow_apply, map_smul,
    scaled_touchard_pow_one]
  simp only [smul_smul]
  congr 1
  ring

/-- The verified base polynomial is exactly the explicit generalized signed
Touchard polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181e8809db9e06af15d220fbf0197318f5778f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
