# literatureRHS_pairTest_eq_Gentry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3366cab977b88a81cbafd150f4f705ebce00768d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf629d9d-82cb-e57d-7f78-14682bb66a55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7caf0ea6-611a-04a4-a7bc-fa74239815ca",
  "kind": "theorem",
  "lexical_name": "literatureRHS_pairTest_eq_Gentry",
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
  "slug": "literaturerhs-pairtest-eq-gentry--5881fcb4ade812738a5abf70",
  "source": {
    "blob": "3366cab977b88a81cbafd150f4f705ebce00768d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5881fcb4ade812738a5abf7034d7ed708c5ce216f78c058d1f9803192ab852af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7caf0ea6-611a-04a4-a7bc-fa74239815ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literatureRHS_pairTest_eq_Gentry (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T)
    (k l : Fin (P.d T)) :
    Zeta23.EF.literatureRHS (kfun P T k l) = ((P.Gentry T k l : ℝ) : ℂ) := by
  have hkd := pairTest_contDiff P T hφC2 hφsupp (k : ℤ) (l : ℤ)
  have hkc := pairTest_hasCompactSupport P T hφsupp (k : ℤ) (l : ℤ)
  rw [Zeta23.EF.literatureRHS_eq_integral_nu hL hkd.continuous (tsupport_pairTest P T hφsupp k l)
    (Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkc)
    (Zeta23.EF.integrable_paperFT_mul_mu hkd hkc Zeta23.gammaFacts)]
  rw [show ((P.Gentry T k l : ℝ) : ℂ) = P.Gp T k l from rfl, ← GzGp.EFrhs_eq_Gp]
  refine integral_congr_ae (ae_of_all _ fun τ => ?_)
  dsimp only [kfun]
  rw [Zeta23.EF.paperFT_weilTest (fk_continuous P T hφC2 k) (fk_continuous P T hφC2 l)
      (fk_hasCompactSupport P T hφsupp k) (fk_hasCompactSupport P T hφsupp l), Complex.conj_ofReal]

/-! ### (S3b) prime side with general coefficients: GentryC / Gentry1 versus Gentry -/

/-- If the density with coefficients c splits as ν_c(X) = ν_X + P_{cJ}(X) pointwise and ĥ·P_{cJ} is
integrable, then  M^c_{kl} = G_{kl} + ∫ ĥ(τ) P_{cJ}(X; τ) dτ  (as complex numbers). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3366cab977b88a81cbafd150f4f705ebce00768d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
