# sourceBump_traces_zero_of_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d766d225-9854-5df9-09ec-8fce2f17358d",
  "kind": "theorem",
  "lexical_name": "sourceBump_traces_zero_of_le_abs",
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
  "slug": "sourcebump-traces-zero-of-le-abs--a82ce9e7559f8bd4a73a63cf",
  "source": {
    "blob": "c301eea6a3bd661ee5b33b62829718fcb59b1e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a82ce9e7559f8bd4a73a63cf1ace5885a4db0bf72180906d954bc50f6ba40c47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d766d225-9854-5df9-09ec-8fce2f17358d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBump_traces_zero_of_le_abs {x : ℝ} (hx : 1 ≤ |x|) :
    sourceBump x = 0 ∧ deriv sourceBump x = 0 ∧
      deriv (deriv sourceBump) x = 0 ∧ deriv (deriv (deriv sourceBump)) x = 0 := by
  have h1 : deriv sourceBump = firstDerivative 1 := by
    rw [sourceBump_eq_scaled_unit, deriv_scaledBump (by norm_num)]
  rw [sourceBump_third_eq_indicator, sourceBump_second_eq_indicator, h1,
    sourceBump_eq_indicator]
  by_cases hm : x ∈ Icc (-1 : ℝ) 1
  · have he : |x| = 1 := le_antisymm (abs_le.mpr hm) hx
    rcases abs_eq_abs.mp (by simpa using he : |x| = |(1 : ℝ)|) with he | he <;>
      rw [he] <;> norm_num [firstDerivative, firstInterior, unitBump, unitSecond, unitThird]
  · simp [hm, firstDerivative]

/-- The exact scale derivative vanishes at the moving source boundaries and beyond. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c301eea6a3bd661ee5b33b62829718fcb59b1e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
