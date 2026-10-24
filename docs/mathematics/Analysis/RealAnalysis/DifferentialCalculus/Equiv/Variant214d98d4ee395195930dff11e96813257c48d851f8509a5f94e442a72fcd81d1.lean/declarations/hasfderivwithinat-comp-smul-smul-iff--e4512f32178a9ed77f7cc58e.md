# hasFDerivWithinAt_comp_smul_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a986bb62-bf99-14de-bedc-f0cada240c63",
  "kind": "theorem",
  "lexical_name": "hasFDerivWithinAt_comp_smul_smul_iff",
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
  "slug": "hasfderivwithinat-comp-smul-smul-iff--e4512f32178a9ed77f7cc58e",
  "source": {
    "blob": "602460e86a21e102e0d57a38ef1953ab09d545a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 532,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4512f32178a9ed77f7cc58e0bb9b88a6957c6ffa67d7fe37714e1903293b888",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a986bb62-bf99-14de-bedc-f0cada240c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivWithinAt_comp_smul_smul_iff {c : 𝕜} :
    HasFDerivWithinAt (f <| c • ·) (c • f') s x ↔ HasFDerivWithinAt f f' (c • s) (c • x) := by
  rcases eq_or_ne c 0 with rfl | hc
  · simp [hasFDerivWithinAt_const, HasFDerivWithinAt.of_subsingleton (subsingleton_zero_smul_set _)]
  · lift c to 𝕜ˣ using IsUnit.mk0 c hc
    have A : f'.comp ((ContinuousLinearEquiv.smulLeft c : E ≃L[𝕜] E) : E →L[𝕜] E) = c • f' := by
      ext; simp
    rw [← Units.smul_def c x, ← ContinuousLinearEquiv.smulLeft_apply_apply (R₁ := 𝕜),
      ← ContinuousLinearEquiv.comp_right_hasFDerivWithinAt_iff, A]
    simp [Function.comp_def, ← Units.smul_def, ← preimage_smul_inv, preimage_preimage]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variant214d98d4ee395195930dff11e96813257c48d851f8509a5f94e442a72fcd81d1.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602460e86a21e102e0d57a38ef1953ab09d545a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
