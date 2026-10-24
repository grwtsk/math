# withDensity_one_sub_rnDerivAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26986612-9302-1782-6f87-d98b20ab69e7",
  "kind": "lemma",
  "lexical_name": "withDensity_one_sub_rnDerivAux",
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
  "slug": "withdensity-one-sub-rnderivaux--e77f7e45e48efbd0d4814588",
  "source": {
    "blob": "475e0e93987e53420eef42296f73c0157d2bdcb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 165,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e77f7e45e48efbd0d481458837db91013782df498b96b0901e4f09d993c80c73",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26986612-9302-1782-6f87-d98b20ab69e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma withDensity_one_sub_rnDerivAux (κ η : Kernel α γ) [IsFiniteKernel κ] [IsFiniteKernel η] :
    withDensity (κ + η) (fun a x ↦ Real.toNNReal (1 - rnDerivAux κ (κ + η) a x)) = η := by
  have h_le : κ ≤ κ + η := le_add_of_nonneg_right bot_le
  suffices withDensity (κ + η) (fun a x ↦ Real.toNNReal (1 - rnDerivAux κ (κ + η) a x))
      + withDensity (κ + η) (fun a x ↦ Real.toNNReal (rnDerivAux κ (κ + η) a x))
      = κ + η by
    ext a s
    have h : (withDensity (κ + η) (fun a x ↦ Real.toNNReal (1 - rnDerivAux κ (κ + η) a x))
          + withDensity (κ + η) (fun a x ↦ Real.toNNReal (rnDerivAux κ (κ + η) a x))) a s
        = κ a s + η a s := by
      rw [this]
      simp
    simp only [coe_add, Pi.add_apply, Measure.coe_add] at h
    rwa [withDensity_rnDerivAux, add_comm, ENNReal.add_right_inj (measure_ne_top _ _)] at h
  simp_rw [ofNNReal_toNNReal, ENNReal.ofReal_sub _ (rnDerivAux_nonneg h_le), ENNReal.ofReal_one]
  rw [withDensity_sub_add_cancel]
  · rw [withDensity_one']
  · exact measurable_const
  · fun_prop
  · intro a
    filter_upwards [rnDerivAux_le_one h_le] with x hx
    simp only [ENNReal.ofReal_le_one]
    exact hx

/-- A set of points in `α × γ` related to the absolute continuity / mutual singularity of
`κ` and `η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `475e0e93987e53420eef42296f73c0157d2bdcb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
