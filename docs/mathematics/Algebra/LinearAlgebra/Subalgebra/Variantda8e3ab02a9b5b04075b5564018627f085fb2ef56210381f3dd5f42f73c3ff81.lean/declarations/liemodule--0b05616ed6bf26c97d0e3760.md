# lieModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caa379131cc339625b5e9199eae3d00ba37ef2e1a06bb7a64619372bb78e3d4a",
  "kind": "instance",
  "lexical_name": "lieModule",
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
  "slug": "liemodule--0b05616ed6bf26c97d0e3760",
  "source": {
    "blob": "9db86f895e767ed72962553bcf9085e2e68d6b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantda8e3ab02a9b5b04075b5564018627f085fb2ef56210381f3dd5f42f73c3ff81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b05616ed6bf26c97d0e3760802a3110e73f39196fb0c0f7b9171dce8dcc20a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variantda8e3ab02a9b5b04075b5564018627f085fb2ef56210381f3dd5f42f73c3ff81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caa379131cc339625b5e9199eae3d00ba37ef2e1a06bb7a64619372bb78e3d4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lieModule [LieModule R L M] : LieModule R L' M where
  smul_lie t x m := by
    rw [coe_bracket_of_module, Submodule.coe_smul_of_tower, smul_lie, coe_bracket_of_module]
  lie_smul t x m := by simp only [coe_bracket_of_module, lie_smul]

/-- An `L`-equivariant map of Lie modules `M → N` is `L'`-equivariant for any Lie subalgebra
`L' ⊆ L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variantda8e3ab02a9b5b04075b5564018627f085fb2ef56210381f3dd5f42f73c3ff81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantda8e3ab02a9b5b04075b5564018627f085fb2ef56210381f3dd5f42f73c3ff81.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9db86f895e767ed72962553bcf9085e2e68d6b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
