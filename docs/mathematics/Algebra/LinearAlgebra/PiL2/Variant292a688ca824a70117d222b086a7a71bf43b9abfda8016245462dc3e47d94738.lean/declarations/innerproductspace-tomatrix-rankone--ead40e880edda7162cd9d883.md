# InnerProductSpace.toMatrix_rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03ae1f91-d0d0-edd1-3af6-5ffef30f2b8d",
  "kind": "theorem",
  "lexical_name": "InnerProductSpace.toMatrix_rankOne",
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
  "slug": "innerproductspace-tomatrix-rankone--ead40e880edda7162cd9d883",
  "source": {
    "blob": "1053a8ff6500a09b1a90b04cb76759d379fbffa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1294,
    "line": 1282,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variant292a688ca824a70117d222b086a7a71bf43b9abfda8016245462dc3e47d94738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead40e880edda7162cd9d883782397f41384774bfedc8b4a2ba6a459d78856b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variant292a688ca824a70117d222b086a7a71bf43b9abfda8016245462dc3e47d94738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03ae1f91-d0d0-edd1-3af6-5ffef30f2b8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1282–1294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InnerProductSpace.toMatrix_rankOne {𝕜 E F ι ι' : Type*} [RCLike 𝕜]
    [SeminormedAddCommGroup E] [NormedSpace 𝕜 E] [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [Finite ι] [Fintype ι'] [DecidableEq ι'] (x : E) (y : F) (b : Module.Basis ι 𝕜 E)
    (b' : OrthonormalBasis ι' 𝕜 F) :
    (rankOne 𝕜 x y).toMatrix b'.toBasis b = .vecMulVec (b.repr x) (star (b'.repr y)) := by
  have := Fintype.ofFinite ι
  rw [rankOne_def', ContinuousLinearMap.toLinearMap_comp, toLinearMap_toSpanSingleton,
    toMatrix_comp _ (OrthonormalBasis.singleton Unit 𝕜).toBasis, toMatrix_toSpanSingleton,
    toLinearMap_innerSL_apply, toMatrix_innerₛₗ_apply, OrthonormalBasis.toBasis_singleton,
    Basis.coe_singleton, Matrix.vecMulVec_one, OrthonormalBasis.coe_singleton, star_one,
    Matrix.one_vecMulVec, Matrix.vecMulVec_eq Unit]

open Matrix LinearMap EuclideanSpace in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variant292a688ca824a70117d222b086a7a71bf43b9abfda8016245462dc3e47d94738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variant292a688ca824a70117d222b086a7a71bf43b9abfda8016245462dc3e47d94738.lean#L1282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1053a8ff6500a09b1a90b04cb76759d379fbffa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
