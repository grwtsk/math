# reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d61c01fa-135f-1e8e-a339-c288300fadfc",
  "kind": "theorem",
  "lexical_name": "reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving",
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
  "slug": "reciprocalvariationpowersaving-of-mertenscorrelationpowersaving--993bf059bf8dd3109c4b9981",
  "source": {
    "blob": "9fee17d5e741fa828b16c265d8ae4d677eb6ebad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:993bf059bf8dd3109c4b99817689d8ce1d2b9719f9e466259cc17878bc4c3235",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d61c01fa-135f-1e8e-a339-c288300fadfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving
    (h : ReciprocalMertensCorrelationPowerSaving) :
    ReciprocalVariationPowerSaving := by
  obtain ⟨C, δ, hC, hδ, hδ1, hbound⟩ := h
  have heps : 0 < 1 - δ := by linarith
  let D : ℝ := 1 + 1 / (1 - δ)
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨C + D, δ, add_nonneg hC hD, hδ, ?_⟩
  intro n hn
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hp : 1 ≤ (n : ℝ) ^ (1 - δ) :=
    Real.one_le_rpow hn1 heps.le
  have hlog := Real.log_natCast_le_rpow_div n heps
  have hdiag :
      reciprocalVariationDiagonal n ≤ D * (n : ℝ) ^ (1 - δ) := by
    calc
      reciprocalVariationDiagonal n ≤ 1 + Real.log n :=
        reciprocalVariationDiagonal_le_log n
      _ ≤ 1 + (n : ℝ) ^ (1 - δ) / (1 - δ) := by gcongr
      _ ≤ (n : ℝ) ^ (1 - δ) +
          (n : ℝ) ^ (1 - δ) / (1 - δ) := by gcongr
      _ = D * (n : ℝ) ^ (1 - δ) := by
        dsimp [D]
        ring
  rw [reciprocalPrefixVariationSquare_eq_correlation_add_diagonal]
  calc
    reciprocalVariationCorrelation n + reciprocalVariationDiagonal n ≤
        C * (n : ℝ) ^ (1 - δ) + D * (n : ℝ) ^ (1 - δ) :=
      add_le_add (hbound n hn) hdiag
    _ = (C + D) * (n : ℝ) ^ (1 - δ) := by ring

/-- The signed Möbius--Mertens correlation power saving implies the completed
critical vertical-line estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationRecurrence.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fee17d5e741fa828b16c265d8ae4d677eb6ebad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
