# goursatFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1758c528cf7707a6a93e5e11fdf81454ff6fe66eaf56617467f124a0b0ebebea",
  "kind": "def",
  "lexical_name": "goursatFst",
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
  "slug": "goursatfst--b9ac020f2768b2f5935be970",
  "source": {
    "blob": "5eded4413b4deaae92bd2dc733131bd7ffbca446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9ac020f2768b2f5935be97099287bfca218a6c0100fb5faa49bf03ad3713dbe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1758c528cf7707a6a93e5e11fdf81454ff6fe66eaf56617467f124a0b0ebebea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def goursatFst : Submodule R M :=
  (LinearMap.ker <| (LinearMap.snd R M N).comp L.subtype).map ((LinearMap.fst R M N).comp L.subtype)


variable (L) in
/-- For `L` a subgroup of `M × N`, `L.goursatSnd` is the kernel of the projection map `L → M`,
considered as a subgroup of `N`.

This is the second subgroup appearing in Goursat's lemma. See `Subgroup.goursat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Goursat/Variant3593dc3c17362e752ab2c8402fa94ce60cf593de7c3140479d54ef8c76b9d227.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eded4413b4deaae92bd2dc733131bd7ffbca446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
