# setLIntegral_condLExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21d7d102-ce96-91b7-57bb-9725a52fae06",
  "kind": "theorem",
  "lexical_name": "setLIntegral_condLExp",
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
  "slug": "setlintegral-condlexp--dbef13b8f7c66900660e5908",
  "source": {
    "blob": "09bf39056775d3f28d8703d3e7a03950392b4875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbef13b8f7c66900660e59082808c6a0d38b6147aa587071dda74d3cb5cf7c18",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d7d102-ce96-91b7-57bb-9725a52fae06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_condLExp (P : Measure[mΩ₀] Ω) [hσ : SigmaFinite (P.trim hm)]
    (X : Ω → ℝ≥0∞) {s : Set Ω} (hs : MeasurableSet[mΩ] s) :
    ∫⁻ ω in s, P⁻[X|mΩ] ω ∂P = ∫⁻ ω in s, X ω ∂P := by
  by_cases hX : Measurable[mΩ] X
  · simp [condLExp_eq_self hm _ hX]
  have h := AbsolutelyContinuous.trim (withDensity_absolutelyContinuous P X) hm
  have : SFinite ((P.withDensity X).trim hm) := sFinite_of_absolutelyContinuous h
  rw [condLExp_of_not_sub_sigma_measurable hm _ hX, ← lintegral_indicator (hm s hs),
    ← lintegral_trim hm (by measurability), lintegral_indicator hs, setLIntegral_rnDeriv' h hs,
    trim_measurableSet_eq hm hs, withDensity_apply _ (hm s hs)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variant3b12856d486e86ec6124686cf176ff1378126131cd4f5d5558313c9af9042d73.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09bf39056775d3f28d8703d3e7a03950392b4875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
