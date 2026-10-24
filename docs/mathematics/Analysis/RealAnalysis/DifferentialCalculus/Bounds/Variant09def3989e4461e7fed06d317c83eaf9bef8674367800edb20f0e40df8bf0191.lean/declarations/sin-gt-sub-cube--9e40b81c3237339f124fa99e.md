# sin_gt_sub_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e07146b-fce9-2e3f-2c16-5659b34aad61",
  "kind": "theorem",
  "lexical_name": "sin_gt_sub_cube",
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
  "slug": "sin-gt-sub-cube--9e40b81c3237339f124fa99e",
  "source": {
    "blob": "f71dadc2b2d4aee73e9e758ba506e6021af100ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e40b81c3237339f124fa99ef8b2e33dc71faabb8a2caf0e025dc0388335ffcc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e07146b-fce9-2e3f-2c16-5659b34aad61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_gt_sub_cube {x : ℝ} (hx : 0 < x) : x - x ^ 3 / 6 < Real.sin x := by
  let f (t : ℝ) : ℝ := Real.sin t - (t - t ^ 3 / 6)
  have hderiv (t : ℝ) : deriv f t = cos t - 1 + t ^ 2 / 2 := by
    simp (disch := fun_prop) [f]
    ring
  have hmono : StrictMonoOn f (Set.Ici 0) := by
    apply strictMonoOn_of_deriv_pos (convex_Ici 0) (by fun_prop)
    grind [one_sub_sq_div_two_lt_cos, interior_Ici]
  have h0 : f 0 < f x := hmono (by simp) hx.le hx
  grind [Real.sin_zero]

/-- For 0 ≤ x we have x - x ^ 3 / 6 ≤ sin x.

This inequality is tight, in that the constant 6 is best possible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant09def3989e4461e7fed06d317c83eaf9bef8674367800edb20f0e40df8bf0191.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dadc2b2d4aee73e9e758ba506e6021af100ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
