# thetaPhiKrylovWhitening_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a9cd35-cf20-0aaa-fbbe-8cbfa76050f8",
  "kind": "theorem",
  "lexical_name": "thetaPhiKrylovWhitening_gram",
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
  "slug": "thetaphikrylovwhitening-gram--f38b78efc9dc0e9417b5a296",
  "source": {
    "blob": "6eeb8c5b66cd95c8c1ea16a4eac2e408dec71503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38b78efc9dc0e9417b5a296b3e290bbc344ca93598eae9262e49065e87d67ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a9cd35-cf20-0aaa-fbbe-8cbfa76050f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiKrylovWhitening_gram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiKrylovWhitening k L N t *
        thetaPhiSignedMomentKrylovGram k L N t *
          (thetaPhiKrylovWhitening k L N t).transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
  let G :=
    thetaPhiSignedMomentKrylovGram k L N t
  let S := CFC.sqrt G
  have hG : G.PosDef := by
    dsimp [G]
    exact thetaPhiSignedMomentKrylovGram_posDef hk hN t
  have hGnonneg : 0 ≤ G :=
    hG.posSemidef.nonneg
  have hsunit : IsUnit S := by
    dsimp [S]
    exact
      (CFC.isUnit_sqrt_iff G hGnonneg).mpr
        hG.isUnit
  have hsdet : IsUnit S.det :=
    (Matrix.isUnit_iff_isUnit_det S).mp hsunit
  let _ : Invertible S :=
    S.invertibleOfIsUnitDet hsdet
  have hsquare : S * S = G := by
    dsimp [S]
    exact CFC.sqrt_mul_sqrt_self G hGnonneg
  rw [thetaPhiKrylovWhitening_transpose]
  unfold thetaPhiKrylovWhitening
  change S⁻¹ * G * S⁻¹ = 1
  rw [← hsquare]
  rw [Matrix.inv_mul_cancel_left_of_invertible,
    Matrix.mul_inv_of_invertible]

/-- The canonically whitened positive theta Krylov frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantc85de07475c941a0226dda4a560a1d69851ba7d37b9fa188af52766e15b8f86c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eeb8c5b66cd95c8c1ea16a4eac2e408dec71503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
