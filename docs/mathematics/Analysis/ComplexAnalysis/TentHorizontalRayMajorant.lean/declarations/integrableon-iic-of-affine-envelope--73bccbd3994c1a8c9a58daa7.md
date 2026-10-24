# integrableOn_Iic_of_affine_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db1a8584-bf7f-c3a3-a3f6-83c3837c0fa4",
  "kind": "theorem",
  "lexical_name": "integrableOn_Iic_of_affine_envelope",
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
  "slug": "integrableon-iic-of-affine-envelope--73bccbd3994c1a8c9a58daa7",
  "source": {
    "blob": "3c01638c882fed0a2d4032ee54dc4f6052205d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 138,
    "path": "GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73bccbd3994c1a8c9a58daa7fc825eb148d7f64cd90aae8da9efdef874ed4dda",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db1a8584-bf7f-c3a3-a3f6-83c3837c0fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Iic_of_affine_envelope (g : ℝ → ℂ) (hg : Continuous g)
    (x h A y : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A) (hy : y ≠ 0)
    (hbound : ∀ σ ≤ 2, ‖g σ‖ ≤
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) :
    IntegrableOn g (Iic 2) := by
  apply integrableOn_Iic_of_intervalIntegral_norm_bounded
    (a := fun N : ℕ => -(N : ℝ)) (l := atTop) (affineRayBudget x h A / y ^ 2) 2
  · intro N
    exact (hg.integrableOn_Icc).mono_set Ioc_subset_Icc_self
  · exact (tendsto_neg_atTop_atBot.comp tendsto_natCast_atTop_atTop)
  · exact Eventually.of_forall (fun N => integral_norm_le_of_affine_envelope g hg
      x h A y (-(N : ℝ)) hh ha hA hy (by linarith [Nat.cast_nonneg (α := ℝ) N]) hbound)

/-- The same explicit budget bounds the norm integral over the entire leftward ray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01638c882fed0a2d4032ee54dc4f6052205d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
