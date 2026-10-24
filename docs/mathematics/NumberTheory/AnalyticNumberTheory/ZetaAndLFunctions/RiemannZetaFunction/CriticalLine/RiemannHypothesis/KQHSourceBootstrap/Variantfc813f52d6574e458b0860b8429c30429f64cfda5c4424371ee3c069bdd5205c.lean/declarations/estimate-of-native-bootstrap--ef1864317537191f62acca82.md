# estimate_of_native_bootstrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b207b00-ca82-3814-be42-5f6ae79b3743",
  "kind": "theorem",
  "lexical_name": "estimate_of_native_bootstrap",
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
  "slug": "estimate-of-native-bootstrap--ef1864317537191f62acca82",
  "source": {
    "blob": "65cb55bf3e99b33a13632404ca2adabd5bb1c038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef1864317537191f62acca82b35612b36e5ced947ec582bd228a58ac73b73d3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b207b00-ca82-3814-be42-5f6ae79b3743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_native_bootstrap (R Rε C₀ C₁ ε : ℝ)
    (hR : 1 ≤ R) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hclose : ∀ T : ℝ, R ≤ T →
      finiteHorizon nonaffineWork R T ≤
        C₀ + C₁ * Real.sqrt (finiteHorizon nonaffineWork R T))
    (htrend : ∀ A : ℝ, Rε ≤ A → |trendValue A| ≤ ε) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_native_bootstrap R Rε C₀ C₁ ε hR hC₀ hC₁ hclose htrend⟩

/-- The restricted compression error is `r-I`, so its direct return does not
pay for the affine trend a second time. Its uniform scalar cap is still a premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65cb55bf3e99b33a13632404ca2adabd5bb1c038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
