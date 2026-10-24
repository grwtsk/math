# integrable_Fline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dada3479-436e-f268-2bcb-180d4a4a8738",
  "kind": "theorem",
  "lexical_name": "integrable_Fline",
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
  "slug": "integrable-fline--fe07bae6519bddb07ec1d112",
  "source": {
    "blob": "fddabb897516dcc6a4eb0928590a25c5e6feea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe07bae6519bddb07ec1d112de6eefe76758192aa33ec9cc7605661212f43928",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dada3479-436e-f268-2bcb-180d4a4a8738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_Fline (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) {c : ℝ}
    (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) : Integrable (Fline k c) := by
  obtain ⟨C, hC0, hC⟩ := norm_Hfn_le hk hkc
  set φ : ℝ → ℂ := fun t => Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I) with hφ
  have hφc : Continuous φ := (continuous_Hfn_line hk hkc c).add (continuous_Hfn_reflect hk hkc c)
  have hφb : ∀ t, ‖φ t‖ ≤ (2 * C) / (1 + t ^ 2) := by
    intro t
    have h1 := hC c t (by linarith) (by linarith)
    have h2 := hC (1 - c) (-t) (by linarith) (by linarith)
    rw [← one_sub_cast] at h2
    rw [neg_sq] at h2
    calc ‖φ t‖ ≤ ‖Hfn k ((c : ℂ) + t * I)‖ + ‖Hfn k (1 - c - t * I)‖ := norm_add_le _ _
      _ ≤ C / (1 + t ^ 2) + C / (1 + t ^ 2) := add_le_add h1 h2
      _ = (2 * C) / (1 + t ^ 2) := by ring
  have hΓ := integrable_mul_logDeriv_Gammaℝ_of_decay hφc (by positivity) hφb
    (by linarith : (1:ℝ) / 2 ≤ c) hc2
  have hζ := integrable_mul_logDeriv_zeta_of_decay hφc hφb hc1
  refine (hΓ.add hζ).congr (Eventually.of_forall fun t => ?_)
  simp only [Fline, hφ, logDeriv_completedZeta_line hc1 t, Pi.add_apply]
  ring

/-- Folding the left vertical side onto the right one: for every `R`,
`V_f(c; −R, R) − V_f(1−c; −R, R) = I • ∫_{−R}^{R} F`,  `f := H·Λ'/Λ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddabb897516dcc6a4eb0928590a25c5e6feea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
