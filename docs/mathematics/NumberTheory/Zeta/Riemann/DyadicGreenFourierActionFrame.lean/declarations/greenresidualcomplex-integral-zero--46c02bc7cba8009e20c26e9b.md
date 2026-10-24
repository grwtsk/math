# greenResidualComplex_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33798dea-3199-e9c0-9bc5-1e75bfa5ac01",
  "kind": "theorem",
  "lexical_name": "greenResidualComplex_integral_zero",
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
  "slug": "greenresidualcomplex-integral-zero--46c02bc7cba8009e20c26e9b",
  "source": {
    "blob": "7b7c5c0a75c60e91db31aa508204d1c89079da25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46c02bc7cba8009e20c26e9bfedbedd7fd6fc542c8bdadecbe5c493c7a79e281",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33798dea-3199-e9c0-9bc5-1e75bfa5ac01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenResidualComplex_integral_zero
    {X : ℕ} (hX : 0 < X) :
    (∫ t, greenResidualComplex X t ∂unitVolume) = 0 := by
  have hi : Integrable (greenSourceFrameValue X) unitVolume := by
    convert! (cumulative_integrable X).sub (integrable_const (center X) (μ := unitVolume)) using 1
    funext t
    exact greenSourceFrameValue_eq_centeredResidual X t
  have h := Complex.ofRealCLM.integral_comp_comm hi
  calc
    _ = ((∫ t, greenSourceFrameValue X t ∂unitVolume : ℝ) : ℂ) := by
      convert! h using 1
    _ = 0 := by rw [greenSourceFrameValue_integral_zero hX]; rfl

/-- The zero Fourier coefficient is exactly absent because the source residual
was centered before Fourier analysis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7c5c0a75c60e91db31aa508204d1c89079da25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
