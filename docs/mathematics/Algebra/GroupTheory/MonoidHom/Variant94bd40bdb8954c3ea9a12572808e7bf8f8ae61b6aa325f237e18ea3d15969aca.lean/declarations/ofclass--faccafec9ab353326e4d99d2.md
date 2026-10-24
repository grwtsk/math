# ofClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:475b6fc5f651db0b02a027287ee6789e45fa4f0565945a2f3e33c73e9b1653e3",
  "kind": "def",
  "lexical_name": "ofClass",
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
  "slug": "ofclass--faccafec9ab353326e4d99d2",
  "source": {
    "blob": "3c632a217369f01d9da880bd5a481d16617286c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faccafec9ab353326e4d99d2e58712b7a47423d467b22e3ce98f58d43108c5be",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:475b6fc5f651db0b02a027287ee6789e45fa4f0565945a2f3e33c73e9b1653e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofClass [FunLike F A B] [MonoidHomClass F A B] [StarHomClass F A B] (f : F) :
    A →⋆* B where
  toFun := f
  map_one' := map_one f
  map_mul' := map_mul f
  map_star' := map_star f

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidHom/Variant94bd40bdb8954c3ea9a12572808e7bf8f8ae61b6aa325f237e18ea3d15969aca.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c632a217369f01d9da880bd5a481d16617286c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
