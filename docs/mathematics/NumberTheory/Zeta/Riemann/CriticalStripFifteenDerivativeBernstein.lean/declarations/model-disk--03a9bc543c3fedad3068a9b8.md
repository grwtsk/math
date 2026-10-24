# model_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:655bc5b3-1d20-f592-48ef-ffd32e7d4eba",
  "kind": "theorem",
  "lexical_name": "model_disk",
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
  "slug": "model-disk--03a9bc543c3fedad3068a9b8",
  "source": {
    "blob": "aa38a402eef98530b48e54c0cb4b5ca3142e6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a9bc543c3fedad3068a9b877416690ac71760bfe2c01e1df628e9fc11f0718",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:655bc5b3-1d20-f592-48ef-ffd32e7d4eba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem model_disk {s : ℂ} (hs : Region s) :
    ‖model s-(1+13*I)‖ ≤ (23/2 : ℝ) := by
  have h := component_bounds hs.1.le hs.2.1 hs.2.2.1 hs.2.2.2
  have hr : |(model s).re-1| ≤ (17/2 : ℝ) := abs_le.mpr ⟨by linarith [h.1], by linarith [h.2.1]⟩
  have hi : |(model s).im-13| ≤ (15/2 : ℝ) := abs_le.mpr ⟨by linarith [h.2.2.1], by linarith [h.2.2.2]⟩
  have hr2 := mul_le_mul hr hr (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 17/2)
  have hi2 := mul_le_mul hi hi (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 15/2)
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 23/2)).mp
  rw [Complex.sq_norm, Complex.normSq_apply]
  norm_num only [Complex.sub_re, Complex.sub_im, Complex.add_re, Complex.add_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im,
    Complex.one_re, Complex.one_im, Complex.ofNat_re, Complex.ofNat_im] 
  nlinarith [sq_abs ((model s).re-1), sq_abs ((model s).im-13)]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.DerivativeSixteen.Certificate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa38a402eef98530b48e54c0cb4b5ca3142e6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
