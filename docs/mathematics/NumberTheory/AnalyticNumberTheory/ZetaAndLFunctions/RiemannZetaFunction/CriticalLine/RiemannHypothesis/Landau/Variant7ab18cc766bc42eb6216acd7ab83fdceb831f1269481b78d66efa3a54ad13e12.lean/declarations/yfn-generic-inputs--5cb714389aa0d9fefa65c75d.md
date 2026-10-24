# Yfn_generic_inputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adba6ba7d0a59f3d93a138ec46716cab2aac3df1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e344b7f1-0efb-9404-742b-a104763edccc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:620617fb-2e09-0cb1-e138-acd35cefc9f2",
  "kind": "theorem",
  "lexical_name": "Yfn_generic_inputs",
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
  "slug": "yfn-generic-inputs--5cb714389aa0d9fefa65c75d",
  "source": {
    "blob": "adba6ba7d0a59f3d93a138ec46716cab2aac3df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb714389aa0d9fefa65c75da26fc2a9cec81325e9ae1ede434e56dbbb106712",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:620617fb-2e09-0cb1-e138-acd35cefc9f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Yfn_generic_inputs : ∃ (Cf t₀ : ℝ), 0 < Cf ∧ 2 ≤ t₀ ∧
    (∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ Yfn (closedBall (2 + t * I) (91 / 50))) ∧
    (∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖Yfn s‖ ≤ Cf * |s.im| ^ 4) ∧
    (∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖Yfn (2 + t * I)‖) := by
  obtain ⟨Cf, hCf, hgrow⟩ := Yfn_growth
  obtain ⟨t₁, ht₁, hlow⟩ := two_line_lower
  exact ⟨Cf, t₁, hCf, ht₁, fun t _ => Yfn_analyticOnNhd_disc t (by norm_num), hgrow,
    fun t ht => (hlow t ht).2⟩

/-- **Landau partial fraction for Y′/Y around 2+it** (|t| ≥ t₁). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adba6ba7d0a59f3d93a138ec46716cab2aac3df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
