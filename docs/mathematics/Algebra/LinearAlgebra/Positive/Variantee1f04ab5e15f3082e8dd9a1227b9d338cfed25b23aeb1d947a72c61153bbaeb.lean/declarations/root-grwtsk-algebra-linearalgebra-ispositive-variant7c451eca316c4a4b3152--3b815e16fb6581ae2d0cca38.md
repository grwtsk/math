# _root_.GRWTSK.Algebra.LinearAlgebra.IsPositive.Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.Matrix.isPositive_toEuclideanLin_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa11234-7cae-5b04-04b8-a1b5007f6487",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsPositive.Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.Matrix.isPositive_toEuclideanLin_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-ispositive-variant7c451eca316c4a4b3152--3b815e16fb6581ae2d0cca38",
  "source": {
    "blob": "f37e9c645a3ccad5dc236a779b41cb385e3d9a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b815e16fb6581ae2d0cca389b6c62d3fe4f2a71bcf7139f8b77fbaf9e6ec25d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa11234-7cae-5b04-04b8-a1b5007f6487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem _root_.GRWTSK.Algebra.LinearAlgebra.IsPositive.Variant7c451eca316c4a4b315258bba9090585fffae97589b48a12c3f9df28859eedbb.Matrix.isPositive_toEuclideanLin_iff {n : Type*} [Fintype n] [DecidableEq n]
    {A : Matrix n n 𝕜} : A.toEuclideanLin.IsPositive ↔ A.PosSemidef := by
  simp_rw [LinearMap.IsPositive, Matrix.isSymmetric_toEuclideanLin_iff, inner_re_symm,
    EuclideanSpace.inner_eq_star_dotProduct, Matrix.ofLp_toLpLin, Matrix.toLin'_apply,
    dotProduct_comm (A.mulVec _), Matrix.posSemidef_iff_dotProduct_mulVec, and_congr_right_iff,
    RCLike.nonneg_iff (K := 𝕜)]
  refine fun hA ↦ (EuclideanSpace.equiv n 𝕜).forall_congr' fun x ↦ ?_
  simp [hA.im_star_dotProduct_mulVec_self]

/-- `A.toMatrix` is positive semi-definite if and only if `A` is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f37e9c645a3ccad5dc236a779b41cb385e3d9a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
