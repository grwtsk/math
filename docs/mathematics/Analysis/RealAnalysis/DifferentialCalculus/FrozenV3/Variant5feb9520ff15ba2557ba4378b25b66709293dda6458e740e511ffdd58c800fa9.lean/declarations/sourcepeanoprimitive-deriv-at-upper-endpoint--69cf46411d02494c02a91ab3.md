# sourcePeanoPrimitive_deriv_at_upper_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef2d77a8-6367-fac5-7020-9186fc8436ae",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_deriv_at_upper_endpoint",
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
  "slug": "sourcepeanoprimitive-deriv-at-upper-endpoint--69cf46411d02494c02a91ab3",
  "source": {
    "blob": "582264c66efd3c4c4f2d52f3d55eafabfe93491e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variant5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69cf46411d02494c02a91ab3e020479c790c91f1cf80ad2e13f4ad46cf520e79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variant5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef2d77a8-6367-fac5-7020-9186fc8436ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_deriv_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    deriv (sourcePeanoPrimitive A) (2 * A) = 0 := by
  rw [sourcePeanoPrimitive_deriv_eq_profile hA (by linarith) le_rfl]
  have harg : 2 * A / A = (2 : ℝ) := by field_simp
  rw [harg]
  simp [overlapProfile_two, overlapProfile_deriv_two,
    overlapProfile_second_deriv_two, overlapProfile_third_deriv_two]

/-- The exact boundary reflection changes the first derivative's sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variant5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenV3/Variant5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `582264c66efd3c4c4f2d52f3d55eafabfe93491e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
