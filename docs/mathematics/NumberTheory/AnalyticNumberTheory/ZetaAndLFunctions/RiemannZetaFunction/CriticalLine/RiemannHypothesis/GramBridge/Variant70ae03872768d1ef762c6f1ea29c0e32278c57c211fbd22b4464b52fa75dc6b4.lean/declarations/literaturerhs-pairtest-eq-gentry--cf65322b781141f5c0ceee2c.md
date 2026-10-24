# literatureRHS_pairTest_eq_Gentry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbc709ee-9eef-437c-004e-8433f8a7e879",
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
  "slug": "literaturerhs-pairtest-eq-gentry--cf65322b781141f5c0ceee2c",
  "source": {
    "blob": "cd847a8f56258c16714cc129ba1f852d78c8fa11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf65322b781141f5c0ceee2cba534bff871053827ab83bffe634e90d19462db2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbc709ee-9eef-437c-004e-8433f8a7e879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–169.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd847a8f56258c16714cc129ba1f852d78c8fa11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
