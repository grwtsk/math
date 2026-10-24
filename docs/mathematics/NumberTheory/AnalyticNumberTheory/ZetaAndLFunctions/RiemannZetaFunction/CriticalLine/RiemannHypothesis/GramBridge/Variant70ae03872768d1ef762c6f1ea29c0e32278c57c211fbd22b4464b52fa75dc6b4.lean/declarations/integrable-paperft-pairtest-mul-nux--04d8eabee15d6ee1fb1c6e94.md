# integrable_paperFT_pairTest_mul_nuX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c23af700-3050-4f7a-ab4b-8a4926d36311",
  "kind": "theorem",
  "lexical_name": "integrable_paperFT_pairTest_mul_nuX",
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
  "slug": "integrable-paperft-pairtest-mul-nux--04d8eabee15d6ee1fb1c6e94",
  "source": {
    "blob": "cd847a8f56258c16714cc129ba1f852d78c8fa11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d8eabee15d6ee1fb1c6e941ecfa89a1fae6c9103112ca747af75caf1dd74dd",
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

Occurrence: `result:c23af700-3050-4f7a-ab4b-8a4926d36311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_paperFT_pairTest_mul_nuX (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (hL : 0 < P.L T) (k l : ℤ) :
    Integrable (fun τ : ℝ => paperFT (kfun P T k l) τ * (nuX (P.X T) τ : ℂ)) :=
  Zeta23.EF.integrable_paperFT_mul_nuX hL
    (Zeta23.EF.integrable_fourier_of_contDiff_two (pairTest_contDiff P T hφC2 hφsupp k l)
      (pairTest_hasCompactSupport P T hφsupp k l))
    (Zeta23.EF.integrable_paperFT_mul_mu (pairTest_contDiff P T hφC2 hφsupp k l)
      (pairTest_hasCompactSupport P T hφsupp k l) Zeta23.gammaFacts)

/-- **(S2)**  literatureRHS (f_k ⋆ f̃_l) = G_{kl} (= ∫ φ̂_ℝ(τ−τ_k) φ̂_ℝ(τ−τ_l) ν_X(τ) dτ, X = e^L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variant70ae03872768d1ef762c6f1ea29c0e32278c57c211fbd22b4464b52fa75dc6b4.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd847a8f56258c16714cc129ba1f852d78c8fa11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
