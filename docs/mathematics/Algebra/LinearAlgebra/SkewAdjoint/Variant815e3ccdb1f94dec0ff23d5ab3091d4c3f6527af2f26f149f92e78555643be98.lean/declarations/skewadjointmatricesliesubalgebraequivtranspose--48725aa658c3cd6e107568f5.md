# skewAdjointMatricesLieSubalgebraEquivTranspose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d043d8171788b095088c5d11aa239ed1b385cec3c7765d3fc7b46ac698fcbbf",
  "kind": "def",
  "lexical_name": "skewAdjointMatricesLieSubalgebraEquivTranspose",
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
  "slug": "skewadjointmatricesliesubalgebraequivtranspose--48725aa658c3cd6e107568f5",
  "source": {
    "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48725aa658c3cd6e107568f5aec1618f9c0e83d7aee68929e110cc21f36cbf05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d043d8171788b095088c5d11aa239ed1b385cec3c7765d3fc7b46ac698fcbbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skewAdjointMatricesLieSubalgebraEquivTranspose {m : Type w} [DecidableEq m] [Fintype m]
    (e : Matrix n n R ≃ₐ[R] Matrix m m R) (h : ∀ A, (e A)ᵀ = e Aᵀ) :
    skewAdjointMatricesLieSubalgebra J ≃ₗ⁅R⁆ skewAdjointMatricesLieSubalgebra (e J) :=
  LieEquiv.ofSubalgebras _ _ e.toLieEquiv <| by
    ext A
    suffices J.IsSkewAdjoint (e.symm A) ↔ (e J).IsSkewAdjoint A by
      simpa [- LieSubalgebra.mem_map, LieSubalgebra.mem_map_submodule]
    simp only [Matrix.IsSkewAdjoint, Matrix.IsAdjointPair, ← h,
      ← Function.Injective.eq_iff e.injective, map_mul, AlgEquiv.apply_symm_apply, map_neg]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45df81f4957206bb923db30886e655a133e5f2b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
