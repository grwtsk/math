# analytic_zero_no_continuous_logDeriv_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a512f9c7-e8b3-7c8a-f7b8-8e5cb9065c63",
  "kind": "theorem",
  "lexical_name": "analytic_zero_no_continuous_logDeriv_extension",
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
  "slug": "analytic-zero-no-continuous-logderiv-extension--ae4a80d69b50429aa6c80212",
  "source": {
    "blob": "cbfcd672b3ac88d8b40e404d15058f37529e2872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae4a80d69b50429aa6c802127aebc62b92934287702a4341270b6ce700056ed9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a512f9c7-e8b3-7c8a-f7b8-8e5cb9065c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_zero_no_continuous_logDeriv_extension (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hfinite : analyticOrderAt f a ≠ ⊤) (hzero : f a = 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f := by
  obtain ⟨u, hu, hu0, hfactor⟩ := analytic_finite_order_factorization f a hf hfinite
  apply no_continuous_extension_of_nonzero_order f u a (analyticOrderNatAt f a : ℤ)
    hu hu0 hfactor
  exact_mod_cast (Nat.ne_of_gt (analytic_zero_order_pos f a hf hfinite hzero))
/-- A nonzero analytic source value supplies the finite-order gate for the local detector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfcd672b3ac88d8b40e404d15058f37529e2872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
