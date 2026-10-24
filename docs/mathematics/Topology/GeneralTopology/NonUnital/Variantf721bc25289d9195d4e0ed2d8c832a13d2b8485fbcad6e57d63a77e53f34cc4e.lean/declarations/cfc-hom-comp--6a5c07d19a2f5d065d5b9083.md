# cfcₙHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b686cd8-d24f-6272-44c7-acbdc56c3608",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:848209c6-40a1-7a19-8653-da8f01be11b0",
  "kind": "theorem",
  "lexical_name": "cfcₙHom_comp",
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
  "slug": "cfc-hom-comp--6a5c07d19a2f5d065d5b9083",
  "source": {
    "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a5c07d19a2f5d065d5b90830eaa68110298ddcf71619c25879911323c928681",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848209c6-40a1-7a19-8653-da8f01be11b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfcₙHom_comp [UniqueHom R A] (f : C(σₙ R a, R)₀)
    (f' : C(σₙ R a, σₙ R (cfcₙHom ha f))₀)
    (hff' : ∀ x, f x = f' x) (g : C(σₙ R (cfcₙHom ha f), R)₀) :
    cfcₙHom ha (g.comp f') = cfcₙHom (cfcₙHom_predicate ha f) g := by
  let ψ : C(σₙ R (cfcₙHom ha f), R)₀ →⋆ₙₐ[R] C(σₙ R a, R)₀ :=
    { toFun := (ContinuousMapZero.comp · f')
      map_smul' := fun _ _ ↦ rfl
      map_add' := fun _ _ ↦ rfl
      map_mul' := fun _ _ ↦ rfl
      map_zero' := rfl
      map_star' := fun _ ↦ rfl }
  let φ : C(σₙ R (cfcₙHom ha f), R)₀ →⋆ₙₐ[R] A := (cfcₙHom ha).comp ψ
  suffices cfcₙHom (cfcₙHom_predicate ha f) = φ from DFunLike.congr_fun this.symm g
  refine cfcₙHom_eq_of_continuous_of_map_id (cfcₙHom_predicate ha f) φ ?_ ?_
  · refine (cfcₙHom_isClosedEmbedding ha).continuous.comp <| continuous_induced_rng.mpr ?_
    exact f'.toContinuousMap.continuous_precomp.comp continuous_induced_dom
  · simp only [φ, ψ, NonUnitalStarAlgHom.comp_apply, NonUnitalStarAlgHom.coe_mk',
      NonUnitalAlgHom.coe_mk]
    congr
    ext x
    simp [hff']

end cfcₙHom

section cfcₙL

/-- `cfcₙHom` bundled as a continuous linear map. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488e8af4bb20e2115bde831a4265d2e61157d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
