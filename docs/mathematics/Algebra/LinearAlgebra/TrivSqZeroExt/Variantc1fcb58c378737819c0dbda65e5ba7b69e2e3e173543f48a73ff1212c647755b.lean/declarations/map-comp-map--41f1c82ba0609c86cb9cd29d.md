# map_comp_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86fc58f8-3258-b650-49c3-8167320e06d4",
  "kind": "theorem",
  "lexical_name": "map_comp_map",
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
  "slug": "map-comp-map--41f1c82ba0609c86cb9cd29d",
  "source": {
    "blob": "2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1102,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f1c82ba0609c86cb9cd29db4070b8cdbff247ed8541f376cedd548a91d3208",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86fc58f8-3258-b650-49c3-8167320e06d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1102–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_map (f : M →ₗ[R'] N) (g : N →ₗ[R'] P) :
    map (g.comp f) = (map g).comp (map f) := by
  apply algHom_ext
  simp only [map_inr, LinearMap.coe_comp, Function.comp_apply, AlgHom.coe_comp, forall_const]

end map

end Algebra

end TrivSqZeroExt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean#L1102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
