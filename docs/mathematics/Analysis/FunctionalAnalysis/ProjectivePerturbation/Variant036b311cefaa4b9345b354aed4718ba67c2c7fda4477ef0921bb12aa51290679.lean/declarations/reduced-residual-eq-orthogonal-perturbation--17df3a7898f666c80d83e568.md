# reduced_residual_eq_orthogonal_perturbation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7059924253dbf612e4e044f895a2daed394a7bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6e5d4f2-37ad-1140-4e61-571f5963d39d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb174167-6dba-2185-5322-d0b1cb429414",
  "kind": "theorem",
  "lexical_name": "reduced_residual_eq_orthogonal_perturbation",
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
  "slug": "reduced-residual-eq-orthogonal-perturbation--17df3a7898f666c80d83e568",
  "source": {
    "blob": "e7059924253dbf612e4e044f895a2daed394a7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 343,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17df3a7898f666c80d83e56810854ea1cea0f75f15f307e62a59c646f5fd3386",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb174167-6dba-2185-5322-d0b1cb429414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduced_residual_eq_orthogonal_perturbation
    (A V : H →L[ℂ] H) (x y : H) (lambda mu : ℝ)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y) :
    A (ProjectiveFubiniStudy.orthogonalRemainder x y) -
        (mu : ℂ) • ProjectiveFubiniStudy.orthogonalRemainder x y =
      ProjectiveFubiniStudy.orthogonalRemainder x (-V y) := by
  have hAy : A y - (mu : ℂ) • y = -V y := by
    have hBy' : A y + V y = (mu : ℂ) • y := by simpa using hBy
    have hAeq : A y = (mu : ℂ) • y - V y := eq_sub_of_add_eq hBy'
    rw [hAeq]
    abel
  have hinner :
      inner ℂ x (-V y) = ((lambda - mu : ℝ) : ℂ) * inner ℂ x y := by
    rw [← hAy, inner_sub_right, ← hA.apply_clm x y, hAx,
      inner_smul_left, inner_smul_right]
    simp
    ring
  rw [ProjectiveFubiniStudy.orthogonalRemainder,
    ProjectiveFubiniStudy.orthogonalRemainder, map_sub, map_smul, hAx, hinner]
  rw [← hAy]
  module

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectivePerturbation/Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7059924253dbf612e4e044f895a2daed394a7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
