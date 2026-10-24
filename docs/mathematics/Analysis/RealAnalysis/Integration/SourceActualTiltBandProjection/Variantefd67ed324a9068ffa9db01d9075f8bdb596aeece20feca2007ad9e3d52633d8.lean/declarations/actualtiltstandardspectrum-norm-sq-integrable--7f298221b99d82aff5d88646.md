# actualTiltStandardSpectrum_norm_sq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:364eb137-4c08-9a93-13f9-718aec598cb9",
  "kind": "theorem",
  "lexical_name": "actualTiltStandardSpectrum_norm_sq_integrable",
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
  "slug": "actualtiltstandardspectrum-norm-sq-integrable--7f298221b99d82aff5d88646",
  "source": {
    "blob": "c506456e2769454e6cd22b4b5f6939f0b7447764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f298221b99d82aff5d886469e7402c8ee1df6b6a21253289d17edf0581c5b46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:364eb137-4c08-9a93-13f9-718aec598cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltStandardSpectrum_norm_sq_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ => ‖actualTiltStandardSpectrum A ξ‖ ^ 2) volume := by
  have hi := (L2.integrable_inner (𝕜 := ℂ)
    (𝓕 (actualUnitTiltState A)) (𝓕 (actualUnitTiltState A))).re
  apply hi.congr
  filter_upwards [actualUnitTiltState_fourier_coe_ae hA] with ξ hξ
  rw [hξ, ← norm_sq_eq_re_inner (𝕜 := ℂ)]

/-- The projected norm square is precisely the source energy in the physical band. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantefd67ed324a9068ffa9db01d9075f8bdb596aeece20feca2007ad9e3d52633d8.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c506456e2769454e6cd22b4b5f6939f0b7447764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
