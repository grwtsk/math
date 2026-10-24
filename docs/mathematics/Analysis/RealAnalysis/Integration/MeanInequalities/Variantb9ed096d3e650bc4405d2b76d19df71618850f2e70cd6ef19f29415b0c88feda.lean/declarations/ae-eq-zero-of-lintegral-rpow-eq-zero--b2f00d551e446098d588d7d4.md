# ae_eq_zero_of_lintegral_rpow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a9d077d-48a2-8eb4-fbf2-119ee1c19944",
  "kind": "theorem",
  "lexical_name": "ae_eq_zero_of_lintegral_rpow_eq_zero",
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
  "slug": "ae-eq-zero-of-lintegral-rpow-eq-zero--b2f00d551e446098d588d7d4",
  "source": {
    "blob": "9cac203378984c4f5518115a7476a86395085199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f00d551e446098d588d7d4b6c474d306751b8ed28852d5f20be83c00e62c3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a9d077d-48a2-8eb4-fbf2-119ee1c19944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_zero_of_lintegral_rpow_eq_zero {p : ℝ} (hp0 : 0 ≤ p) {f : α → ℝ≥0∞}
    (hf : AEMeasurable f μ) (hf_zero : ∫⁻ a, f a ^ p ∂μ = 0) : f =ᵐ[μ] 0 := by
  rw [lintegral_eq_zero_iff' (hf.pow_const p)] at hf_zero
  refine' Filter.Eventually.mp hf_zero (Filter.eventually_of_forall fun x => _)
  dsimp only
  rw [Pi.zero_apply, ← not_imp_not]
  exact fun hx => (rpow_pos_of_nonneg (pos_iff_ne_zero.2 hx) hp0).ne'
#align ennreal.ae_eq_zero_of_lintegral_rpow_eq_zero ENNReal.ae_eq_zero_of_lintegral_rpow_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantb9ed096d3e650bc4405d2b76d19df71618850f2e70cd6ef19f29415b0c88feda.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cac203378984c4f5518115a7476a86395085199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
