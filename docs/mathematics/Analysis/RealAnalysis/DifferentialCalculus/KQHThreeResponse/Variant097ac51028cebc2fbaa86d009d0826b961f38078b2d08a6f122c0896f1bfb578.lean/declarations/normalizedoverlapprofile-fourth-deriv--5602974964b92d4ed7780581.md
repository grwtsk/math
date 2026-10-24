# normalizedOverlapProfile_fourth_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c9b7ead-aff2-71a6-e214-18a2322117a3",
  "kind": "theorem",
  "lexical_name": "normalizedOverlapProfile_fourth_deriv",
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
  "slug": "normalizedoverlapprofile-fourth-deriv--5602974964b92d4ed7780581",
  "source": {
    "blob": "23c2d1cb432b14419498a8eb0c2deb3fab7ad8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponse/Variant097ac51028cebc2fbaa86d009d0826b961f38078b2d08a6f122c0896f1bfb578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5602974964b92d4ed778058102a43655e9be5ec76b9176d18760de71859b0ca9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponse/Variant097ac51028cebc2fbaa86d009d0826b961f38078b2d08a6f122c0896f1bfb578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c9b7ead-aff2-71a6-e214-18a2322117a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOverlapProfile_fourth_deriv (A t : ℝ) :
    iteratedDeriv 4 (normalizedOverlapProfile A) t =
      iteratedDeriv 4 overlapProfile (t / A) / A ^ 4 / sourceNormalization A := by
  have hH : ContDiff ℝ 4 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have he : (fun s : ℝ => overlapProfile (s / A)) =
      (fun s : ℝ => overlapProfile (A⁻¹ * s)) := by
    funext s
    congr 1
    simp only [div_eq_mul_inv, mul_comm]
  change iteratedDeriv 4
    (fun s : ℝ => overlapProfile (s / A) / sourceNormalization A) t = _
  rw [iteratedDeriv_div_const, he, iteratedDeriv_comp_const_mul hH (A⁻¹)]
  rw [show A⁻¹ * t = t / A by simp only [div_eq_mul_inv, mul_comm]]
  simp only [inv_pow, div_eq_mul_inv]
  ring

/-- Two further unique differentiations retain zero and the touching endpoint 2A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponse/Variant097ac51028cebc2fbaa86d009d0826b961f38078b2d08a6f122c0896f1bfb578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHThreeResponse/Variant097ac51028cebc2fbaa86d009d0826b961f38078b2d08a6f122c0896f1bfb578.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c2d1cb432b14419498a8eb0c2deb3fab7ad8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
