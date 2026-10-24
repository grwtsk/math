# sSup_sphere_eq_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5414610-5b69-49e3-4220-3d69c9ca5a55",
  "kind": "theorem",
  "lexical_name": "sSup_sphere_eq_nnnorm",
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
  "slug": "ssup-sphere-eq-nnnorm--fa427cd423dc333bb4b9d954",
  "source": {
    "blob": "484379c28c0e4e01731488880634f78feaad95ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa427cd423dc333bb4b9d954e9dd219f7ddc4ea960aa4fab426a8806361aab08",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5414610-5b69-49e3-4220-3d69c9ca5a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_sphere_eq_nnnorm [NormedAlgebra ℝ 𝕜] (f : E →SL[σ₁₂] F) :
    sSup ((fun x => ‖f x‖₊) '' Metric.sphere 0 1) = ‖f‖₊ := by
  cases subsingleton_or_nontrivial E
  · simp [sphere_eq_empty_of_subsingleton one_ne_zero]
  have : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  refine csSup_eq_of_forall_le_of_forall_lt_exists_gt
      ((NormedSpace.sphere_nonempty.mpr zero_le_one).image _) ?_ fun ub hub => ?_
  · rintro - ⟨x, hx, rfl⟩
    simpa only [mul_one] using! f.le_opNorm_of_le (mem_sphere_zero_iff_norm.1 hx).le
  · obtain ⟨x, hx, hxf⟩ := f.exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm hub
    exact ⟨_, ⟨x, by simpa using! congrArg NNReal.toReal hx, rfl⟩, hxf⟩

/-- When the domain is a real normed space, `ContinuousLinearMap.sSup_unitClosedBall_eq_norm` can be
tightened to take the supremum over only the `Metric.sphere`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variantcac7290dcf7a0b81247ac04be2e69b8a34cf10e9669800a44417271aa79647a4.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `484379c28c0e4e01731488880634f78feaad95ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
