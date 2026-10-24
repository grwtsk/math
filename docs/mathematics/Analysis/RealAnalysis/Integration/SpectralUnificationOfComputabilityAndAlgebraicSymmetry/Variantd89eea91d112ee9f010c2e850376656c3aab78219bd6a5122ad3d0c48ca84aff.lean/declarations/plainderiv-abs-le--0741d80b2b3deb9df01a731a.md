# plainDeriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13f9eae3-09e5-b4b9-2736-284c081482f8",
  "kind": "theorem",
  "lexical_name": "plainDeriv_abs_le",
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
  "slug": "plainderiv-abs-le--0741d80b2b3deb9df01a731a",
  "source": {
    "blob": "036f32b561ee1b123ecf027cc5dd681753c54012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 282,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0741d80b2b3deb9df01a731accd868581c3ce2cf3cb049dc4be90fbe04e24a72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13f9eae3-09e5-b4b9-2736-284c081482f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem plainDeriv_abs_le {F : ℝ → ℝ} {x u B0 B1 : ℝ}
    (hu : 1 ≤ u) (hB : ProfileSupBounds F B0 B1) :
    |plainDeriv F x u| ≤
      Real.exp (-Real.log x / 2) * (B1 + B0 / 2) * halfDensity u := by
  have hf : |deriv F (Real.log x + Real.log u) - F (Real.log x + Real.log u) / 2| ≤
      B1 + B0 / 2 := by
    calc
      _ ≤ |deriv F (Real.log x + Real.log u)| + |F (Real.log x + Real.log u) / 2| :=
        by
          simpa using abs_sub_le (deriv F (Real.log x + Real.log u)) 0
            (F (Real.log x + Real.log u) / 2)
      _ ≤ _ := by
        rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
        exact add_le_add (hB.2.2.2 _) (div_le_div_of_nonneg_right (hB.2.2.1 _) (by norm_num))
  have he : Real.exp (-(Real.log x + Real.log u) / 2) =
      Real.exp (-Real.log x / 2) * Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]; congr 1; ring
  dsimp [plainDeriv]
  rw [abs_mul, abs_of_nonneg (by positivity)]
  calc
    _ ≤ Real.exp (-(Real.log x + Real.log u) / 2) / u * (B1 + B0 / 2) := by
      gcongr
    _ = _ := by rw [he]; dsimp [halfDensity]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f32b561ee1b123ecf027cc5dd681753c54012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
