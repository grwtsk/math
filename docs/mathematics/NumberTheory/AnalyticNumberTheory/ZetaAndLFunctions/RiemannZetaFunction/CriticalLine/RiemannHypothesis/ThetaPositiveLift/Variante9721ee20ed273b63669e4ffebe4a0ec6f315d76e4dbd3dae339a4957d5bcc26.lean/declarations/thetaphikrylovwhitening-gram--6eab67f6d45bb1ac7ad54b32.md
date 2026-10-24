# thetaPhiKrylovWhitening_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5bb0d3a5190b3bbe2ea4956db6701ace2e56024",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:591d7282-0cb6-dc19-6cb0-4e16245355f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5af1147-6a96-2849-c54f-e2bd97c0fbaf",
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
  "slug": "thetaphikrylovwhitening-gram--6eab67f6d45bb1ac7ad54b32",
  "source": {
    "blob": "e5bb0d3a5190b3bbe2ea4956db6701ace2e56024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eab67f6d45bb1ac7ad54b3278f7f147e757ab6054eae52f1f2ddcb9789c63f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5af1147-6a96-2849-c54f-e2bd97c0fbaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–141.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5bb0d3a5190b3bbe2ea4956db6701ace2e56024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
