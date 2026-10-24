# actualMangoldtErrorConvolution_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:606b40ed-eb7e-d7d3-c25c-1efc94a7acd0",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_ae_hasDerivAt",
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
  "slug": "actualmangoldterrorconvolution-ae-hasderivat--ea119647cd5ef8744f5bebfc",
  "source": {
    "blob": "dc2935a6c124703d7dd81870972eafcd4bb5163a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant901f50e6a1cca408dc051a8a6f5562162a60c15bf01832915875608b53c35825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea119647cd5ef8744f5bebfc933faaf2d2d0d740d0be4c18bb3cd04dcc311f4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant901f50e6a1cca408dc051a8a6f5562162a60c15bf01832915875608b53c35825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606b40ed-eb7e-d7d3-c25c-1efc94a7acd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_ae_hasDerivAt (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    ∀ᵐ t, t ∈ uIcc 0 b → HasDerivAt (actualMangoldtErrorConvolution lam)
      (actualCenteredMangoldtLogError t - lam * actualMangoldtErrorConvolution lam t) t := by
  have hi := weighted_error_intervalIntegrable lam hb
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
  have he := (((hasDerivAt_id t).const_mul (-lam)).exp).mul (ht hm 0 (by simp))
  apply he.congr_deriv
  simp only [id_eq]
  have hx : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  calc
    _ = actualCenteredMangoldtLogError t *
        (Real.exp (-lam * t) * Real.exp (lam * t)) -
          lam * (Real.exp (-lam * t) *
            ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r)) := by ring
    _ = _ := by rw [hx]; ring


/-- The actual half-convolution antiderivative retains the zeroth quarter jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant901f50e6a1cca408dc051a8a6f5562162a60c15bf01832915875608b53c35825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant901f50e6a1cca408dc051a8a6f5562162a60c15bf01832915875608b53c35825.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2935a6c124703d7dd81870972eafcd4bb5163a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
