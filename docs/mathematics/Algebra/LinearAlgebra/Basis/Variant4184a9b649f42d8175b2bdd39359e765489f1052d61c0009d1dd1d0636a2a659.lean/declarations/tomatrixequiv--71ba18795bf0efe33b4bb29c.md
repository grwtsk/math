# toMatrixEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60ac4d648c30c1ac5b4daf25cc037e4529b7752d1043a14c08640068dfb92c1c",
  "kind": "def",
  "lexical_name": "toMatrixEquiv",
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
  "slug": "tomatrixequiv--71ba18795bf0efe33b4bb29c",
  "source": {
    "blob": "97e66729147e79bd440f7a386139b3a0ec5137b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71ba18795bf0efe33b4bb29c64e1f8ce144395840dddb294ad3d4d2ce0f97f63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60ac4d648c30c1ac5b4daf25cc037e4529b7752d1043a14c08640068dfb92c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMatrixEquiv [Fintype ι] (e : Basis ι R M) : (ι → M) ≃ₗ[R] Matrix ι ι R where
  toFun := e.toMatrix
  map_add' v w := by
    ext i j
    rw [Matrix.add_apply, e.toMatrix_apply, Pi.add_apply, LinearEquiv.map_add]
    rfl
  map_smul' := by
    intro c v
    ext i j
    dsimp only []
    rw [e.toMatrix_apply, Pi.smul_apply, LinearEquiv.map_smul]
    rfl
  invFun m j := ∑ i, m i j • e i
  left_inv := by
    intro v
    ext j
    exact e.sum_toMatrix_smul_self v j
  right_inv := by
    intro m
    ext k l
    simp only [e.toMatrix_apply, ← e.equivFun_apply, ← e.equivFun_symm_apply,
      LinearEquiv.apply_symm_apply]

variable (R₂) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97e66729147e79bd440f7a386139b3a0ec5137b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
