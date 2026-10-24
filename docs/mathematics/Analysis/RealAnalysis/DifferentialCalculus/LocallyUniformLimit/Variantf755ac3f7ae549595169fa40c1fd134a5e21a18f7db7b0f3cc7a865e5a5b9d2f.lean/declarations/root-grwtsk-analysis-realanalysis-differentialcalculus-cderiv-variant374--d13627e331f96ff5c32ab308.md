# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoLocallyUniformlyOn.deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:165c4835-fa47-b026-8efd-34b8a456c07f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoLocallyUniformlyOn.deriv",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant374--d13627e331f96ff5c32ab308",
  "source": {
    "blob": "b6e8df704946911ddef9dac231d43c06de47fb83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d13627e331f96ff5c32ab3081f0ec81b3b8f358f36d4bc2fd4cf929b7713fafe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:165c4835-fa47-b026-8efd-34b8a456c07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.TendstoLocallyUniformlyOn.deriv (hf : TendstoLocallyUniformlyOn F f φ U)
    (hF : ∀ᶠ n in φ, DifferentiableOn ℂ (F n) U) (hU : IsOpen U) :
    TendstoLocallyUniformlyOn (deriv ∘ F) (deriv f) φ U := by
  rw [tendstoLocallyUniformlyOn_iff_forall_isCompact hU]
  rcases φ.eq_or_neBot with rfl | hne
  · simp only [TendstoUniformlyOn, eventually_bot, imp_true_iff]
  rintro K hKU hK
  obtain ⟨δ, hδ, hK4, h⟩ := exists_cthickening_tendstoUniformlyOn hf hF hK hU hKU
  refine h.congr_right fun z hz => cderiv_eq_deriv hU (hf.differentiableOn hF hU) hδ ?_
  exact (closedBall_subset_cthickening hz δ).trans hK4

end Weierstrass

section Tsums

/-- If the terms in the sum `∑' (i : ι), F i` are uniformly bounded on `U` by a
summable function, and each term in the sum is differentiable on `U`, then so is the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variantf755ac3f7ae549595169fa40c1fd134a5e21a18f7db7b0f3cc7a865e5a5b9d2f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e8df704946911ddef9dac231d43c06de47fb83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
