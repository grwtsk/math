# IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62645a899fd035ab04969db2301d3a1caf52f1b7023ce705fe1dc9025eca317f",
  "kind": "def",
  "lexical_name": "IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv",
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
  "slug": "islocaldiffeomorphat-mfderivtocontinuouslinearequiv--96ff2ef7d6aa748a681d231f",
  "source": {
    "blob": "da2f771d21560dafda5cfd832d4ce0655565f558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 409,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ff2ef7d6aa748a681d231f82a65b8d1383a560ed341a9e391d4075a840ac69",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62645a899fd035ab04969db2301d3a1caf52f1b7023ce705fe1dc9025eca317f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv
    (hf : IsLocalDiffeomorphAt I J n f x) (hn : n ≠ 0) :
    TangentSpace I x ≃L[𝕜] TangentSpace J (f x) where
  toFun := mfderiv% f x
  invFun := mfderiv% hf.localInverse (f x)
  left_inv := by
    apply ContinuousLinearMap.leftInverse_of_comp
    rw [← mfderiv_id, hf.localInverse_eventuallyEq_left.symm.mfderiv_eq]
    exact (mfderiv_comp _ (hf.localInverse_mdifferentiableAt hn) (hf.mdifferentiableAt hn)).symm
  right_inv := by
    apply ContinuousLinearMap.rightInverse_of_comp
    rw [← mfderiv_id, hf.localInverse_eventuallyEq_right.symm.mfderiv_eq]
    -- We need to rewrite the base point hf.localInverse (f x) = x twice,
    -- in the differentiability hypothesis and for applying the chain rule.
    have hf' : MDifferentiableAt I J f (hf.localInverse (f x)) := by
      rw [hf.localInverse_left_inv hf.localInverse_mem_target]
      exact hf.mdifferentiableAt hn
    rw [mfderiv_comp _ hf' (hf.localInverse_mdifferentiableAt hn),
      hf.localInverse_left_inv hf.localInverse_mem_target]
    rfl
  continuous_toFun := (mfderiv% f x).cont
  continuous_invFun := (mfderiv% hf.localInverse (f x)).cont
  map_add' := fun x_1 y ↦ map_add _ x_1 y
  map_smul' := by intros; simp

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2f771d21560dafda5cfd832d4ce0655565f558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
