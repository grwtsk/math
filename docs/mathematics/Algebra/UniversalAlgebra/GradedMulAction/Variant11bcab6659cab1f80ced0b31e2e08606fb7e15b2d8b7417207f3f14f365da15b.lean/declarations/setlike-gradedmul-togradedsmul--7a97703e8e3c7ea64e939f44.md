# SetLike.GradedMul.toGradedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dec31ddfb128ea64ca26d6b3d8fcaf82acf98705a9eaf07c663f3a390e439df6",
  "kind": "instance",
  "lexical_name": "SetLike.GradedMul.toGradedSMul",
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
  "slug": "setlike-gradedmul-togradedsmul--7a97703e8e3c7ea64e939f44",
  "source": {
    "blob": "476c35fec6f84dc73779a7d1de93964a1f5a56eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a97703e8e3c7ea64e939f4498beb354964b7d669f976e030c3f20c93618c41e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dec31ddfb128ea64ca26d6b3d8fcaf82acf98705a9eaf07c663f3a390e439df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SetLike.GradedMul.toGradedSMul [AddMonoid ιA] [Monoid R] {S : Type*} [SetLike S R]
    (A : ιA → S) [SetLike.GradedMonoid A] : SetLike.GradedSMul A A where
  smul_mem _ _ _ _ hi hj := SetLike.GradedMonoid.toGradedMul.mul_mem hi hj

end Subobjects

section HomogeneousElements

variable {S R N M : Type*} [SetLike S R] [SetLike N M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GradedMulAction/Variant11bcab6659cab1f80ced0b31e2e08606fb7e15b2d8b7417207f3f14f365da15b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476c35fec6f84dc73779a7d1de93964a1f5a56eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
