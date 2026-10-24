# leftMulMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db1c44ad136ae4956bd3abdc1912d52943d2055c1fc5364266f651284a6ca1d1",
  "kind": "def",
  "lexical_name": "leftMulMatrix",
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
  "slug": "leftmulmatrix--11e75f33182668a7d5926bb7",
  "source": {
    "blob": "2fd72bd95e0a67c08248535dc7162cd83a448225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 860,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant78dbca069fb30ca8529ccdce60f4db7f84be24a2e47fd9de287cebf4b3c778de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11e75f33182668a7d5926bb7bad1a6942f50f3798176319b19bad94584097226",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant78dbca069fb30ca8529ccdce60f4db7f84be24a2e47fd9de287cebf4b3c778de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db1c44ad136ae4956bd3abdc1912d52943d2055c1fc5364266f651284a6ca1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def leftMulMatrix : S →ₐ[R] Matrix m m R where
  toFun x := LinearMap.toMatrix b b (Algebra.lmul R S x)
  map_zero' := by
    dsimp only  -- porting node: needed due to new-style structures
    rw [AlgHom.map_zero, LinearEquiv.map_zero]
  map_one' := by
    dsimp only  -- porting node: needed due to new-style structures
    rw [AlgHom.map_one, LinearMap.toMatrix_one]
  map_add' x y := by
    dsimp only  -- porting node: needed due to new-style structures
    rw [AlgHom.map_add, LinearEquiv.map_add]
  map_mul' x y := by
    dsimp only  -- porting node: needed due to new-style structures
    rw [AlgHom.map_mul, LinearMap.toMatrix_mul]
  commutes' r := by
    dsimp only  -- porting node: needed due to new-style structures
    ext
    rw [lmul_algebraMap, toMatrix_lsmul, algebraMap_eq_diagonal, Pi.algebraMap_def,
      Algebra.id.map_eq_self]
#align algebra.left_mul_matrix Algebra.leftMulMatrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant78dbca069fb30ca8529ccdce60f4db7f84be24a2e47fd9de287cebf4b3c778de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant78dbca069fb30ca8529ccdce60f4db7f84be24a2e47fd9de287cebf4b3c778de.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd72bd95e0a67c08248535dc7162cd83a448225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
