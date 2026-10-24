# quotTensorEquivQuotSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83a4ed9634730d3e14e2a2c9218a6c315af49428ec9bc023dad8695e4a8ac702",
  "kind": "def",
  "lexical_name": "quotTensorEquivQuotSMul",
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
  "slug": "quottensorequivquotsmul--a4d64f7ce1eaebd4fd3278aa",
  "source": {
    "blob": "5f1a42cce43dd6937d69090248fd98f12407178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4d64f7ce1eaebd4fd3278aaca4bacc281c51ffec61dea3b0961520764414d1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83a4ed9634730d3e14e2a2c9218a6c315af49428ec9bc023dad8695e4a8ac702`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotTensorEquivQuotSMul (I : Ideal R) :
    ((R ⧸ I) ⊗[R] M) ≃ₗ[R] M ⧸ (I • (⊤ : Submodule R M)) :=
  quotientTensorEquiv M I ≪≫ₗ
  (Submodule.Quotient.equiv _ _ (TensorProduct.lid R M) <| by
    rw [← LinearMap.range_comp, ← (Submodule.topEquiv.lTensor I).range_comp, Submodule.smul_eq_map₂,
      map₂_eq_range_lift_comp_mapIncl]
    exact congr_arg _ (TensorProduct.ext' fun _ _ ↦ by simp))

variable (M) in
/-- Right tensoring a module with a quotient of the ring is the same as
quotienting that module by the corresponding submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f1a42cce43dd6937d69090248fd98f12407178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
