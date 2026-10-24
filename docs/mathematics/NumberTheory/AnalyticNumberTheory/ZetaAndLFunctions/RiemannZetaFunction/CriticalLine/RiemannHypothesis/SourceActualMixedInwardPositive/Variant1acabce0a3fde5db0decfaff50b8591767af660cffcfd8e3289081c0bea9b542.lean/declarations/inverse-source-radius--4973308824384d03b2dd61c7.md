# inverse_source_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c77f59b-c9c1-7b41-e30c-ffd46d649d1a",
  "kind": "theorem",
  "lexical_name": "inverse_source_radius",
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
  "slug": "inverse-source-radius--4973308824384d03b2dd61c7",
  "source": {
    "blob": "45971278b906cc5a042826b6d5a2d41f84573d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant1acabce0a3fde5db0decfaff50b8591767af660cffcfd8e3289081c0bea9b542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4973308824384d03b2dd61c705ffef1f07cbdbd8acf18b1c64a63356d6cae611",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant1acabce0a3fde5db0decfaff50b8591767af660cffcfd8e3289081c0bea9b542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c77f59b-c9c1-7b41-e30c-ffd46d649d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_source_radius {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) : ‖((A : ℂ) * z)⁻¹‖ ≤ 1 / 1092 := by
  have hn : 12 ≤ ‖z‖ := hi.trans (Complex.abs_im_le_norm z)
  rw [norm_inv, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by linarith : 0 ≤ A)]
  simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1092)
    (show (1092 : ℝ) ≤ A * ‖z‖ by nlinarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant1acabce0a3fde5db0decfaff50b8591767af660cffcfd8e3289081c0bea9b542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant1acabce0a3fde5db0decfaff50b8591767af660cffcfd8e3289081c0bea9b542.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45971278b906cc5a042826b6d5a2d41f84573d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
