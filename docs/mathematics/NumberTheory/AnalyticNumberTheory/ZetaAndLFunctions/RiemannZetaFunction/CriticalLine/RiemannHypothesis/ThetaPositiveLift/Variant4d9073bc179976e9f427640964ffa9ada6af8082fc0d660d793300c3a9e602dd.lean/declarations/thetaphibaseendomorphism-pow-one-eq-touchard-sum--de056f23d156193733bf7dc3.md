# thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60c52d62e928c1d786dccf2d68e4ed84ece64665",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85306663-f43b-2064-c3b6-3d9b15d7849e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e858dbf1-8c49-6e86-bc06-236e28777e34",
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
  "slug": "thetaphibaseendomorphism-pow-one-eq-touchard-sum--de056f23d156193733bf7dc3",
  "source": {
    "blob": "60c52d62e928c1d786dccf2d68e4ed84ece64665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de056f23d156193733bf7dc303f7b53eb29cee5509ab68751405fd3d5ac13e24",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e858dbf1-8c49-6e86-bc06-236e28777e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–261.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c52d62e928c1d786dccf2d68e4ed84ece64665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
