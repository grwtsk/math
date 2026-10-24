# regularPart_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37cb9996-e310-fed5-04b1-975a68a082f1",
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
  "slug": "regularpart-lower-bound--0a9f08db63ec3690a13122f2",
  "source": {
    "blob": "bd10ac13e6e788c512782ab06d530a452b265848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9f08db63ec3690a13122f25e3adf450bd6ca3cbaa2a3c8d84b57be7fcdc291",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37cb9996-e310-fed5-04b1-975a68a082f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularPart_lower_bound {w M g : ℝ} {p z r : ℂ}
    (hw : 0 ≤ w) (hd : 0 < ‖z - p‖)
    (hregular : ‖r‖ ≤ (M - w) / (g - ‖z - p‖)) :
    exclusionBound w M g ‖z - p‖ ≤ ‖(w : ℂ) / (p - z) + r‖ := by
  have hpz : ‖p - z‖ = ‖z - p‖ := norm_sub_rev p z
  have hn : ‖(w : ℂ) / (p - z)‖ = w / ‖z - p‖ := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hw, hpz]
  have ht := norm_sub_norm_le ((w : ℂ) / (p - z) + r) r
  have he : ((w : ℂ) / (p - z) + r) - r = (w : ℂ) / (p - z) := by ring
  rw [he, hn] at ht
  unfold exclusionBound
  linarith

/-- Atom separation controls the entire finite regular part without deleting
signed complex contributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant8be5c760a6bc9b8ccb2f48dbed4edbfd700be35dfce4cb03694a1ea7d1fa0391.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd10ac13e6e788c512782ab06d530a452b265848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
