# eventually_abs_sub_le_of_isEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddbfcf7f-8839-428a-d4ec-d2f871cd3a63",
  "kind": "lemma",
  "lexical_name": "eventually_abs_sub_le_of_isEquivalent",
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
  "slug": "eventually-abs-sub-le-of-isequivalent--a1cdfcc3319356bba2bed9e9",
  "source": {
    "blob": "2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cdfcc3319356bba2bed9e96faeac91700d64e96783498b7828ee2e61e4f3bf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddbfcf7f-8839-428a-d4ec-d2f871cd3a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_abs_sub_le_of_isEquivalent {u v : ℝ → ℝ} (h : u ~[atTop] v)
    (hv : ∀ᶠ T in atTop, 0 ≤ v T) {δ : ℝ} (hδ : 0 < δ) :
    ∀ᶠ T in atTop, |u T - v T| ≤ δ * v T := by
  have := h.isLittleO.def hδ
  filter_upwards [this, hv] with T h1 h2
  simpa [Real.norm_eq_abs, abs_of_nonneg h2] using h1

/-! ## The scalar rates -/

section Rates
variable (P : Params)

/-- `l² X / T → 0` for `0 < λ < 1` (the one place `λ < 1` strictly is used: `X = (T/2π)^λ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variant1fd6733020ddccbf3568dd510bc17645a5fee86244b79dc05b9d2de3aef9ced1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fcd6f6db026d97bd8254fdc7c05b9871d8c0b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
