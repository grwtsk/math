# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.TendstoLocallyUniformlyOn.deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:338e8c63-e6c3-8344-905f-aaa25f142d00",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.TendstoLocallyUniformlyOn.deriv",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-cderiv-variant6a4--497dc2c1a6fde8ce0c3957f6",
  "source": {
    "blob": "d691113fbecf81a638eac73916f0c2a3e089be78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:497dc2c1a6fde8ce0c3957f63eaef4030c087cde2b57d13cccb05fa1d66882df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:338e8c63-e6c3-8344-905f-aaa25f142d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Cderiv.Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.TendstoLocallyUniformlyOn.deriv (hf : TendstoLocallyUniformlyOn F f φ U)
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant412fb6f63ba9c99fda0bcc3945a80b0f42564e76094c0e8a9e2fffaae7ed0591.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d691113fbecf81a638eac73916f0c2a3e089be78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
