# NonUnitalStarAlgHomClass.map_cfcₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b56f3598-cca1-8174-8c62-2ef299cc671d",
  "kind": "lemma",
  "lexical_name": "NonUnitalStarAlgHomClass.map_cfcₙ",
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
  "slug": "nonunitalstaralghomclass-map-cfc--0cadf7bcaae828f71700c2e1",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 420,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cadf7bcaae828f71700c2e14b0810bd731a0d157072e57e63e694a3e1d2b91f",
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

Occurrence: `result:b56f3598-cca1-8174-8c62-2ef299cc671d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NonUnitalStarAlgHomClass.map_cfcₙ (φ : F) (f : R → R) (a : A)
    (hf : ContinuousOn f (quasispectrum R a) := by cfc_cont_tac)
    (hf₀ : f 0 = 0 := by cfc_zero_tac) (hφ : Continuous φ := by fun_prop) (ha : p a := by cfc_tac)
    (hφa : q (φ a) := by cfc_tac) : φ (cfcₙ f a) = cfcₙ f (φ a) := by
  let ψ : A →⋆ₙₐ[R] B := (.ofClass φ : A →⋆ₙₐ[S] B).restrictScalars R
  have : Continuous ψ := hφ
  have h_spec := NonUnitalAlgHom.quasispectrum_apply_subset' (R := R) S φ a
  have hψa : q (ψ a) := hφa
  let ι : C(quasispectrum R (ψ a), quasispectrum R a)₀ :=
    ⟨⟨Set.inclusion h_spec, continuous_id.subtype_map h_spec⟩, rfl⟩
  suffices ψ.comp (cfcₙHom ha) =
      (cfcₙHom hψa).comp (ContinuousMapZero.nonUnitalStarAlgHom_precomp R ι) by
    have hf' : ContinuousOn f (quasispectrum R (ψ a)) := hf.mono h_spec
    rw [cfcₙ_apply .., cfcₙ_apply ..]
    exact DFunLike.congr_fun this _
  refine ContinuousMapZero.UniqueHom.eq_of_continuous_of_map_id _ _ _ ?_ ?_ ?apply_id
  case apply_id =>
    trans cfcₙHom hψa (.id (quasispectrum R (ψ a)))
    · simp [cfcₙHom_id]
    · congr
  all_goals
    dsimp [ContinuousMapZero.nonUnitalStarAlgHom_precomp]
    fun_prop

/-- Non-unital star algebra homomorphisms commute with the non-unital continuous functional
calculus.  This version is specialized to `A →⋆ₙₐ[S] B` to allow for dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
