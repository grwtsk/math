# LinearMap.extendScalarsOfIsLocalization_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3cdb6b5-e46a-43d1-aa21-b4cb919a799f",
  "kind": "lemma",
  "lexical_name": "LinearMap.extendScalarsOfIsLocalization_apply'",
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
  "slug": "linearmap-extendscalarsofislocalization-apply--2b1b95c817f217c1f7480b8f",
  "source": {
    "blob": "09b5e8cab30508fdf264751d9cfa712277645a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 231,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b1b95c817f217c1f7480b8f4ef371d5a74620eab52ac62615488c4f61161f09",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cdb6b5-e46a-43d1-aa21-b4cb919a799f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma LinearMap.extendScalarsOfIsLocalization_apply' (f : M →ₗ[R] N) (x : M) :
    (f.extendScalarsOfIsLocalization S A) x = f x := rfl

/-- The `S⁻¹R`-linear maps between two `S⁻¹R`-modules are exactly the `R`-linear maps. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb44dde516db84ab6e24f4cf7b022d2351e138cc310300ac04b2a6e01dbb707f4.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b5e8cab30508fdf264751d9cfa712277645a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
