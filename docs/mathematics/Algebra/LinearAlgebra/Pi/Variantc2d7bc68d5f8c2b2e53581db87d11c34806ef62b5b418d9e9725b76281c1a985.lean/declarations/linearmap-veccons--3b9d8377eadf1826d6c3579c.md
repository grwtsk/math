# LinearMap.vecCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:844d058b4526a2c66901759bfaee0665bd4d62d6e0ad7be5d3ef153376881099",
  "kind": "def",
  "lexical_name": "LinearMap.vecCons",
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
  "slug": "linearmap-veccons--3b9d8377eadf1826d6c3579c",
  "source": {
    "blob": "52128bab340b154d9f91dfaaef47e6c5d5dc67ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 566,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b9d8377eadf1826d6c3579ca9fd9385cdd8210b772aafe9552403bcbfe0c86c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:844d058b4526a2c66901759bfaee0665bd4d62d6e0ad7be5d3ef153376881099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearMap.vecCons {n} (f : M →ₗ[R] M₂) (g : M →ₗ[R] Fin n → M₂) : M →ₗ[R] Fin n.succ → M₂ where
  toFun m := Matrix.vecCons (f m) (g m)
  map_add' x y := by
    simp only []
    rw [f.map_add, g.map_add, Matrix.cons_add_cons (f x)]
  map_smul' c x := by
    simp only []
    rw [f.map_smul, g.map_smul, RingHom.id_apply, Matrix.smul_cons c (f x)]
#align linear_map.vec_cons LinearMap.vecCons

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52128bab340b154d9f91dfaaef47e6c5d5dc67ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
