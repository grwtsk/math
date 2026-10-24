# finiteTransform_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5109bd9-7f0a-5098-2e75-7b819ed629a7",
  "kind": "theorem",
  "lexical_name": "finiteTransform_ne_zero",
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
  "slug": "finitetransform-ne-zero--415ecc5cf0505d033dfb393c",
  "source": {
    "blob": "20fe8a99da89b6a04bad0ad69cb003285c7c5b42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415ecc5cf0505d033dfb393c5fad465b35b41e07735007999a2de10f06014669",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5109bd9-7f0a-5098-2e75-7b819ed629a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteTransform_ne_zero {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g : ℝ} {p z : ℂ}
    (hw : 0 < w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hMpos : 0 < M) (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g)
    (hr : ‖z - p‖ < w * g / M) :
    finiteTransform s weight location w p z ≠ 0 := by
  intro hz
  have hlow := finiteTransform_lower_bound s weight location (le_of_lt hw)
    hwrest hM hsep hd hdg
  rw [hz, norm_zero] at hlow
  exact (not_le_of_gt (exclusionBound_pos hMpos hd hdg hr)) hlow

/-- The positive remaining weights make the quantitative radius no larger than
`g`, so this exclusion needs only the requested punctured radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variante6ecb1633bcf87cff0f571bc1d66c10e5be469d8a64fccd1db5d55d48553ddf8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20fe8a99da89b6a04bad0ad69cb003285c7c5b42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
