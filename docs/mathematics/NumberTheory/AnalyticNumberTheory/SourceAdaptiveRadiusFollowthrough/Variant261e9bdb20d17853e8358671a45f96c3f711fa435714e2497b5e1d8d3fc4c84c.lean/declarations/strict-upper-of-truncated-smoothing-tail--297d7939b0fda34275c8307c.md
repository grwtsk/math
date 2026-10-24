# strict_upper_of_truncated_smoothing_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0df3e26-2031-64f6-0876-e852c52b4a19",
  "kind": "theorem",
  "lexical_name": "strict_upper_of_truncated_smoothing_tail",
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
  "slug": "strict-upper-of-truncated-smoothing-tail--297d7939b0fda34275c8307c",
  "source": {
    "blob": "d4133179390da606d4781d086820764f73d4f496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297d7939b0fda34275c8307c5249a414a22a946b14de22d981099eed9e6ba9cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0df3e26-2031-64f6-0876-e852c52b4a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem strict_upper_of_truncated_smoothing_tail (D R A : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (SourceVaughanHankelFourier.mangoldtPolynomial A ξ *
          SourceVaughanHankelFourier.centeredBetaPolynomial A ξ).re *
            truncatedDensity A ξ)| ≤ 4 * B0 A /
              (Real.pi * bandwidth A * truncation A)) (hRA : R ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A ≤ D + 1 := by
  have hA := hR.trans hRA
  have hf := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have ht := (abs_le.mp (hTrunc A hRA)).2
  have hb := adaptive_budget A hA
  have hg := hG A hRA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hg
  unfold discrepancy at hb
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4133179390da606d4781d086820764f73d4f496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
