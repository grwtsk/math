# regularPart_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e18b51-f65d-63d6-cd8b-4c4b4f4708f6",
  "kind": "theorem",
  "lexical_name": "regularPart_lower_bound",
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
  "slug": "regularpart-lower-bound--0163f4364bb18c5aec6259b8",
  "source": {
    "blob": "64dabdcf5d6abf3a700c901dcf70fd56c14f7fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0163f4364bb18c5aec6259b82d10191a1fe3274cc8d82da8c1ce07ccbbced5c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e18b51-f65d-63d6-cd8b-4c4b4f4708f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularPart_lower_bound {w M g : ℝ} {p z r : ℂ}
    (hw : 0 ≤ w) (_hd : 0 < ‖z - p‖)
    (hregular : ‖r‖ ≤ (M - w) / (g - ‖z - p‖)) :
    exclusionBound w M g ‖z - p‖ ≤ ‖(w : ℂ) / (p - z) + r‖ := by
  have hpz : ‖p - z‖ = ‖z - p‖ := norm_sub_rev p z
  have hn : ‖(w : ℂ) / (p - z)‖ = w / ‖z - p‖ := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hw, hpz]
  have ht := norm_sub_le ((w : ℂ) / (p - z) + r) r
  have he : ((w : ℂ) / (p - z) + r) - r = (w : ℂ) / (p - z) := by ring
  rw [he, hn] at ht
  unfold exclusionBound
  linarith

/-- Atom separation controls the entire finite regular part without deleting
signed complex contributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant340e9c389b5df27c49298a4c7ffc9bf4864963cf2422ee9a7b3a829cbe38815f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dabdcf5d6abf3a700c901dcf70fd56c14f7fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
