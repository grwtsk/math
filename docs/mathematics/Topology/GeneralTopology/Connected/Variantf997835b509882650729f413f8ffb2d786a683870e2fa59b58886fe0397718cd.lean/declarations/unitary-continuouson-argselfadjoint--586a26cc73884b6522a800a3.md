# Unitary.continuousOn_argSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b30fd9-0b27-aadc-55ef-80778c40fa5d",
  "kind": "lemma",
  "lexical_name": "Unitary.continuousOn_argSelfAdjoint",
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
  "slug": "unitary-continuouson-argselfadjoint--586a26cc73884b6522a800a3",
  "source": {
    "blob": "092b916ab1e0d55969c502ec34031fb0f1a901a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:586a26cc73884b6522a800a31cc2570273a44da00fb801b927986ca9a376abe6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b30fd9-0b27-aadc-55ef-80778c40fa5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.continuousOn_argSelfAdjoint :
    ContinuousOn (argSelfAdjoint : unitary A → selfAdjoint A) (ball (1 : unitary A) 2) := by
  rw [Topology.IsInducing.subtypeVal.continuousOn_iff]
  simp only [Function.comp_def, argSelfAdjoint_coe]
  rw [isOpen_ball.continuousOn_iff]
  intro u (hu : dist u 1 < 2)
  obtain ⟨ε, huε, hε2⟩ := exists_between (sq_lt_sq₀ (by positivity) (by positivity) |>.mpr hu)
  have hε : 0 < ε := lt_of_le_of_lt (by positivity) huε
  have huε' : dist u 1 < √ε := Real.lt_sqrt_of_sq_lt huε
  apply ContinuousOn.continuousAt ?_ (closedBall_mem_nhds_of_mem huε')
  apply ContinuousOn.image_comp_continuous ?_ continuous_subtype_val
  apply continuousOn_cfc A (s := sphere 0 1 ∩ {z | 2 * (1 - z.re) ≤ ε}) ?_ _ ?_ |>.mono
  · rintro - ⟨v, hv, rfl⟩
    simp only [Set.subset_inter_iff, Set.mem_ofPred_eq]
    refine ⟨inferInstance, spectrum_subset_circle v, ?_⟩
    intro z hz
    simp only [Set.mem_ofPred_eq]
    trans ‖(v - 1 : A)‖ ^ 2
    · exact two_mul_one_sub_le_norm_sub_one_sq v.2 hz
    · refine Real.le_sqrt (by positivity) (by positivity) |>.mp ?_
      simpa [Subtype.dist_eq, dist_eq_norm] using hv
  · exact isCompact_sphere 0 1 |>.inter_right <| isClosed_le (by fun_prop) (by fun_prop)
  · refine continuous_ofReal.comp_continuousOn <| continuousOn_arg.mono ?_
    apply subset_slitPlane_iff_of_subset_sphere Set.inter_subset_left |>.mpr
    norm_num at hε2 ⊢
    exact hε2

set_option backward.isDefEq.respectTransparency false in
/-- the maps `unitary.argSelfAdjoint` and `selfAdjoint.expUnitary` form a partial
homeomorphism between `ball (1 : unitary A) 2` and `ball (0 : selfAdjoint A) π`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092b916ab1e0d55969c502ec34031fb0f1a901a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
