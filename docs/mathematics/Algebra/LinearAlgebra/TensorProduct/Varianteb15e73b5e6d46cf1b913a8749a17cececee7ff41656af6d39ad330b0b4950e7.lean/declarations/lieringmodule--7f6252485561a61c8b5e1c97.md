# lieRingModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38c725ff16e6b0446f848963725c10e420d5987b17bf3915c81dec681fefebc4",
  "kind": "instance",
  "lexical_name": "lieRingModule",
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
  "slug": "lieringmodule--7f6252485561a61c8b5e1c97",
  "source": {
    "blob": "74f6cd275182c7cde49e7136c7143fe5f6a42180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6252485561a61c8b5e1c973d602b50287403b334ca7ddc0057dc927b9c6b75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38c725ff16e6b0446f848963725c10e420d5987b17bf3915c81dec681fefebc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieRingModule : LieRingModule L (M ⊗[R] N) where
  bracket x := hasBracketAux x
  add_lie x y t := by
    simp only [hasBracketAux, LinearMap.lTensor_add, LinearMap.rTensor_add, LieHom.map_add,
      LinearMap.add_apply]
    abel
  lie_add x := LinearMap.map_add _
  leibniz_lie x y t := by
    suffices (hasBracketAux x).comp (hasBracketAux y) =
        hasBracketAux ⁅x, y⁆ + (hasBracketAux y).comp (hasBracketAux x) by
      simp only [← LinearMap.add_apply]; rw [← LinearMap.comp_apply, this]; rfl
    ext m n
    simp only [hasBracketAux, LieRing.of_associative_ring_bracket, LinearMap.mul_apply, mk_apply,
      LinearMap.lTensor_sub, LinearMap.compr₂_apply, Function.comp_apply, LinearMap.coe_comp,
      LinearMap.rTensor_tmul, LieHom.map_lie, toEndomorphism_apply_apply, LinearMap.add_apply,
      LinearMap.map_add, LinearMap.rTensor_sub, LinearMap.sub_apply, LinearMap.lTensor_tmul]
    abel
#align tensor_product.lie_module.lie_ring_module TensorProduct.LieModule.lieRingModule

/-- The tensor product of two Lie modules is a Lie module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f6cd275182c7cde49e7136c7143fe5f6a42180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
