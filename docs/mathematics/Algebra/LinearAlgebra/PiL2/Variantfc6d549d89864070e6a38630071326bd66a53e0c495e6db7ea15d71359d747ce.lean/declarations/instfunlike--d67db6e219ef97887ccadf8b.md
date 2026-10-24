# instFunLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:634ccbbd035638fa4b8837236b125c4ad25d8a4b98c263d796c2f68e4558c4bd",
  "kind": "instance",
  "lexical_name": "instFunLike",
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
  "slug": "instfunlike--d67db6e219ef97887ccadf8b",
  "source": {
    "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d67db6e219ef97887ccadf8b9c54af6c13cf5cb36560b34f5ba66f8b1cf454ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:634ccbbd035638fa4b8837236b125c4ad25d8a4b98c263d796c2f68e4558c4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFunLike : FunLike (OrthonormalBasis ι 𝕜 E) ι fun _ => E where
  coe b i := by classical exact b.repr.symm (EuclideanSpace.single i (1 : 𝕜))
  coe_injective' b b' h := repr_injective <| LinearIsometryEquiv.toLinearEquiv_injective <|
    LinearEquiv.symm_bijective.injective <| LinearEquiv.toLinearMap_injective <| by
      classical
        rw [← LinearMap.cancel_right (WithLp.linearEquiv 2 𝕜 (_ → 𝕜)).symm.surjective]
        simp only [LinearIsometryEquiv.toLinearEquiv_symm]
        refine LinearMap.pi_ext fun i k => ?_
        have : k = k • (1 : 𝕜) := by rw [smul_eq_mul, mul_one]
        rw [this, Pi.single_smul]
        replace h := congr_fun h i
        simp only [LinearEquiv.comp_coe, SMulHomClass.map_smul, LinearEquiv.coe_coe,
          LinearEquiv.trans_apply, WithLp.linearEquiv_symm_apply, WithLp.equiv_symm_single,
          LinearIsometryEquiv.coe_toLinearEquiv] at h ⊢
        rw [h]

#noalign orthonormal_basis.has_coe_to_fun

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e30bb74bd904ca644d790d4a578a68b89065c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
