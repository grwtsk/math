# cardinal_generateMeasurableRec_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abbf2d2f-fca7-0617-00d4-056d1f6c946a",
  "kind": "theorem",
  "lexical_name": "cardinal_generateMeasurableRec_le",
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
  "slug": "cardinal-generatemeasurablerec-le--6675eee1fbe1526e8cc8d4ab",
  "source": {
    "blob": "0cf28872cca3581e565805434d09bf9fbbfb5791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6675eee1fbe1526e8cc8d4ab793acc56408be3cc3d7b88cc011556d8d10f733d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abbf2d2f-fca7-0617-00d4-056d1f6c946a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_generateMeasurableRec_le (s : Set (Set α)) (i : ω₁) :
    #(generateMeasurableRec s i) ≤ max #s 2 ^ aleph0.{u} := by
  apply (aleph 1).ord.out.wo.wf.induction i
  intro i IH
  have A := aleph0_le_aleph 1
  have B : aleph 1 ≤ max #s 2 ^ aleph0.{u} :=
    aleph_one_le_continuum.trans (power_le_power_right (le_max_right _ _))
  have C : ℵ₀ ≤ max #s 2 ^ aleph0.{u} := A.trans B
  have J : #(⋃ j : Iio i, generateMeasurableRec s j.1) ≤ max #s 2 ^ aleph0.{u} := by
    refine (mk_iUnion_le _).trans ?_
    have D : ⨆ j : Iio i, #(generateMeasurableRec s j) ≤ _ := ciSup_le' fun ⟨j, hj⟩ => IH j hj
    apply (mul_le_mul' ((mk_subtype_le _).trans (aleph 1).mk_ord_out.le) D).trans
    rw [mul_eq_max A C]
    exact max_le B le_rfl
  rw [generateMeasurableRec]
  apply_rules [(mk_union_le _ _).trans, add_le_of_le C, mk_image_le.trans]
  · exact (le_max_left _ _).trans (self_le_power _ one_lt_aleph0.le)
  · rw [mk_singleton]
    exact one_lt_aleph0.le.trans C
  · apply mk_range_le.trans
    simp only [mk_pi, prod_const, lift_uzero, mk_denumerable, lift_aleph0]
    have := @power_le_power_right _ _ ℵ₀ J
    rwa [← power_mul, aleph0_mul_aleph0] at this
#align measurable_space.cardinal_generate_measurable_rec_le MeasurableSpace.cardinal_generateMeasurableRec_le

/-- `generateMeasurableRec s` generates precisely the smallest sigma-algebra containing `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf28872cca3581e565805434d09bf9fbbfb5791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
