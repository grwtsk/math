# Yfn_generic_inputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290263a0-5f6b-49c6-57f8-ef57c48f6146",
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
  "slug": "yfn-generic-inputs--aa9e611a6d7b85835cabf9e1",
  "source": {
    "blob": "a55eeae37bebc51e3efa80a0c86652ab68b3eba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Varianta4f3d611cde487d2f0b25c9becc6ace5aa367f53a9836b55c0b7903e643d6c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9e611a6d7b85835cabf9e12979b05af7a068d11aa7a78aaaeb4bbbb709db15",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Varianta4f3d611cde487d2f0b25c9becc6ace5aa367f53a9836b55c0b7903e643d6c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290263a0-5f6b-49c6-57f8-ef57c48f6146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Varianta4f3d611cde487d2f0b25c9becc6ace5aa367f53a9836b55c0b7903e643d6c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Varianta4f3d611cde487d2f0b25c9becc6ace5aa367f53a9836b55c0b7903e643d6c9b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55eeae37bebc51e3efa80a0c86652ab68b3eba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
