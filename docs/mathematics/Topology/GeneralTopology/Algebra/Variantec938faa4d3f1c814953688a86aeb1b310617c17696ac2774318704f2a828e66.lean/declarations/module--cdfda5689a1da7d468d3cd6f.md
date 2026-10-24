# module'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bf54e1e75d5a12e5d0a4732a5ea8bf13605fbdadded4c8cc705d6fd94e34f6e",
  "kind": "instance",
  "lexical_name": "module'",
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
  "slug": "module--cdfda5689a1da7d468d3cd6f",
  "source": {
    "blob": "ff3d01f255b2b565cb660cba3b140618c2d1d1c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 825,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdfda5689a1da7d468d3cd6f91e70bd856e7568350e218087bba5d6d39a848f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bf54e1e75d5a12e5d0a4732a5ea8bf13605fbdadded4c8cc705d6fd94e34f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module' [IsTopologicalSemiring R] [ContinuousAdd M] :
    Module C(α, R) C(α, M) where
  smul_add c f g := by ext x; exact smul_add (c x) (f x) (g x)
  add_smul c₁ c₂ f := by ext x; exact add_smul (c₁ x) (c₂ x) (f x)
  mul_smul c₁ c₂ f := by ext x; exact mul_smul (c₁ x) (c₂ x) (f x)
  one_smul f := by ext x; exact one_smul R (f x)
  zero_smul f := by ext x; exact zero_smul _ _
  smul_zero r := by ext x; exact smul_zero _

end ContinuousMap

end ModuleOverContinuousFunctions

/-! ### Evaluation as a bundled map -/

variable {X : Type*} (S R : Type*) [TopologicalSpace X] [CommSemiring S] [CommSemiring R]
variable [Algebra S R] [TopologicalSpace R] [IsTopologicalSemiring R]

/-- Evaluation of continuous maps at a point, bundled as an algebra homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3d01f255b2b565cb660cba3b140618c2d1d1c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
