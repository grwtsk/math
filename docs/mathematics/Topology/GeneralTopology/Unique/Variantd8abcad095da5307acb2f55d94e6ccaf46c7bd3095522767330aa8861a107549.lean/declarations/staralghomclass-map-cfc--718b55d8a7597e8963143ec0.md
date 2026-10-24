# StarAlgHomClass.map_cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58f4c47e-ebab-7c46-8226-8957b421afb3",
  "kind": "lemma",
  "lexical_name": "StarAlgHomClass.map_cfc",
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
  "slug": "staralghomclass-map-cfc--718b55d8a7597e8963143ec0",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:718b55d8a7597e8963143ec0a3d56c6021d1ffa3e822fad25f9966a5d55da912",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58f4c47e-ebab-7c46-8226-8957b421afb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StarAlgHomClass.map_cfc (φ : F) (f : R → R) (a : A)
    (hf : ContinuousOn f (spectrum R a) := by cfc_cont_tac)
    (hφ : Continuous φ := by fun_prop) (ha : p a := by cfc_tac) (hφa : q (φ a) := by cfc_tac) :
    φ (cfc f a) = cfc f (φ a) := by
  let ψ : A →⋆ₐ[R] B := (.ofClass φ : A →⋆ₐ[S] B).restrictScalars R
  have : Continuous ψ := hφ
  have h_spec := AlgHom.spectrum_apply_subset ψ a
  have hψa : q (ψ a) := hφa
  let ι : C(spectrum R (ψ a), spectrum R a) :=
    ⟨Set.inclusion h_spec, continuous_id.subtype_map h_spec⟩
  suffices ψ.comp (cfcHom ha) = (cfcHom hψa).comp (ContinuousMap.compStarAlgHom' R R ι) by
    have hf' : ContinuousOn f (spectrum R (ψ a)) := hf.mono h_spec
    rw [cfc_apply .., cfc_apply ..]
    congrm($(this) ⟨_, hf.domRestrict⟩)
  refine ContinuousMap.UniqueHom.eq_of_continuous_of_map_id _ _ _ ?_ ?_ ?apply_id
  case apply_id =>
    trans cfcHom hψa (.restrict (spectrum R (ψ a)) (.id R))
    · simp [cfcHom_id]
    · congr
  all_goals
    dsimp [ContinuousMap.compStarAlgHom']
    fun_prop

/-- Star algebra homomorphisms commute with the continuous functional calculus.
This version is specialized to `A →⋆ₐ[S] B` to allow for dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
