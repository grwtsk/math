# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c0f91f0755e8dcb2094b29797d9763fbb0ec2e4698b679dae4320743d06708b",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--e4c2f4b2a25fed5ea781f35d",
  "source": {
    "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4c2f4b2a25fed5ea781f35de306e099409dac7a88d3b4e246acd618938f1c0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c0f91f0755e8dcb2094b29797d9763fbb0ec2e4698b679dae4320743d06708b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map : (M →ₗ[R] N) →ₗ[R] (AdicCompletion I M →ₗ[AdicCompletion I R] AdicCompletion I N) where
  toFun f :=
    { __ := AdicCompletion.lift I (fun n ↦ reduceModIdeal (I ^ n) f ∘ₗ AdicCompletion.eval I M n)
        (fun {m n} hmn ↦ by rw [← comp_assoc, AdicCompletion.transitionMap_comp_reduceModIdeal,
          comp_assoc, transitionMap_comp_eval])
      map_smul' r x := by
        ext
        dsimp
        rw [val_smul_eq_evalₐ_smul, val_smul_eq_evalₐ_smul, map_smul] }
  map_add' f g := LinearMap.ext fun _ ↦ by
    simp only [map_add, restrictScalars_add, add_comp, ← Pi.add_def, coe_mk, coe_toAddHom,
      add_apply]
    rw [← LinearMap.add_apply, ← lift_add]
  map_smul' c f := LinearMap.ext fun _ ↦ by
    simp only [map_smul, restrictScalars_smul, coe_mk, coe_toAddHom, RingHom.id_apply, smul_apply]
    simp_rw [← LinearMap.smul_apply, ← lift_smul, Pi.smul_def, LinearMap.smul_comp]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd81f33807254ee6729e94daa32cb3a68807c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
