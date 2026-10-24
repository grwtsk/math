# boundary_cubic_moment_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee2125b-b17c-c750-8754-7755b6afb6fb",
  "kind": "theorem",
  "lexical_name": "boundary_cubic_moment_pos",
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
  "slug": "boundary-cubic-moment-pos--9e289bc60c58a3ad49c8a51d",
  "source": {
    "blob": "e6c6e423fac39c15da9eb014599478be5eadc8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e289bc60c58a3ad49c8a51dbb42894e46be6fd10609026c49b46877929b3e68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee2125b-b17c-c750-8754-7755b6afb6fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_cubic_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < ∫ y in 0..4*A, y^3*boundaryWorkKernel A y := by
  rw [boundary_cubic_moment hA]
  exact mul_pos (mul_pos (mul_pos (by norm_num) (pow_pos (by linarith : 0 < A) _))
    (Real.exp_pos _)) (sq_pos_of_pos (primitive_pole_moment_pos hA))

end ContinuousResearch.SourceBoundaryCubic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic02/Variant0623bb547e28a1a095f9d68783fd35724120f9098268dfad123b80db5d0461bf.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c6e423fac39c15da9eb014599478be5eadc8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
