# Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56f1286f-27b4-47f7-9fd9-9736a998d5f7",
  "kind": "theorem",
  "lexical_name": "Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay",
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
  "slug": "real-tsum-eq-tsum-fourierintegral-of-rpow-decay--414c29c004eaa64a4f9dea3d",
  "source": {
    "blob": "6181f9999b89fb90b0272db2278bcaa3e3d950fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 210,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:414c29c004eaa64a4f9dea3d9e7b8cd00568533bb1a9f1c1e73408590658b6bd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56f1286f-27b4-47f7-9fd9-9736a998d5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay {f : ℝ → ℂ} (hc : Continuous f) {b : ℝ}
    (hb : 1 < b) (hf : f =O[cocompact ℝ] (|·| ^ (-b)))
    (hFf : (𝓕 f) =O[cocompact ℝ] (|·| ^ (-b))) (x : ℝ) :
    ∑' n : ℤ, f (x + n) = ∑' n : ℤ, 𝓕 f n * fourier n (x : UnitAddCircle) :=
  Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable hc hb hf (summable_of_isBigO
    (Real.summable_abs_int_rpow hb) (hFf.comp_tendsto Int.tendsto_coe_cofinite)) x

end RpowDecay

section Schwartz

/-- **Poisson's summation formula** for Schwartz functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6181f9999b89fb90b0272db2278bcaa3e3d950fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
