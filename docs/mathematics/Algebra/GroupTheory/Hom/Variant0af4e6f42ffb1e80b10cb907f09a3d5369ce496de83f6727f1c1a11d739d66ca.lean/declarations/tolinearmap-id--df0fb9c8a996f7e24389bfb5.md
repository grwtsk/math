# toLinearMap_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fa46b0-d8c1-6670-947e-0801b47234f4",
  "kind": "theorem",
  "lexical_name": "toLinearMap_id",
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
  "slug": "tolinearmap-id--df0fb9c8a996f7e24389bfb5",
  "source": {
    "blob": "9425caa04e9fdcb026cb0a9fcfc946b20388b018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 393,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df0fb9c8a996f7e24389bfb54b3cb109acedba536b34e56c354fa9c8d4f30ef5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fa46b0-d8c1-6670-947e-0801b47234f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearMap_id : toLinearMap (AlgHom.id R A) = LinearMap.id :=
  LinearMap.ext fun _ => rfl
#align alg_hom.to_linear_map_id AlgHom.toLinearMap_id

/-- Promote a `LinearMap` to an `AlgHom` by supplying proofs about the behavior on `1` and `*`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9425caa04e9fdcb026cb0a9fcfc946b20388b018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
