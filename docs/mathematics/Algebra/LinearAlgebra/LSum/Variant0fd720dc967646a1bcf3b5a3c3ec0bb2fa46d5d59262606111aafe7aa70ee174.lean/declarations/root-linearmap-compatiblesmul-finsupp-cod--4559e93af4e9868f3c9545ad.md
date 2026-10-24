# _root_.LinearMap.CompatibleSMul.finsupp_cod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b952bf843226ede72314696101c1496aabb9d93365fbb4616f0b4d845448da90",
  "kind": "instance",
  "lexical_name": "_root_.LinearMap.CompatibleSMul.finsupp_cod",
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
  "slug": "root-linearmap-compatiblesmul-finsupp-cod--4559e93af4e9868f3c9545ad",
  "source": {
    "blob": "beb82444d8a8496bb4a538a7415ba09b1f7037e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4559e93af4e9868f3c9545ad11280775b4d9f06a7e8c494d316161a83a999be3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b952bf843226ede72314696101c1496aabb9d93365fbb4616f0b4d845448da90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.LinearMap.CompatibleSMul.finsupp_cod [SMul R M] [SMulZeroClass R N]
    [LinearMap.CompatibleSMul M N R S] : LinearMap.CompatibleSMul M (ι →₀ N) R S where
  map_smul f r m := by ext i; apply ((lapply i).comp f).map_smul_of_tower

end CompatibleSMul

section LSum

variable (S)
variable [Module S N] [SMulCommClass R₂ S N]

/-- Lift a family of linear maps `M →ₗ[R] N` indexed by `x : α` to a linear map from `α →₀ M` to
`N` using `Finsupp.sum`. This is an upgraded version of `Finsupp.liftAddHom`.

See note [bundled maps over different rings] for why separate `R` and `S` semirings are used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb82444d8a8496bb4a538a7415ba09b1f7037e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
