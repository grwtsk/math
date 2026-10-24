# refines_toDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e85b588-d4f0-ed8c-1112-d9e4244e8d77",
  "kind": "theorem",
  "lexical_name": "refines_toDecl",
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
  "slug": "refines-todecl--22817b96931be71fd8fc5624",
  "source": {
    "blob": "14f7a5c588fc075abff3274bbbb006c5020563ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 416,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22817b96931be71fd8fc5624e5df70be7d2bc82fd5d3a382f5e8e111e651a0a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e85b588-d4f0-ed8c-1112-d9e4244e8d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refines_toDecl
    (M : BinMatMut m n) :
    Refines M M.toDecl :=
  rfl

/--
Unary operations preserve the refinement relation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f7a5c588fc075abff3274bbbb006c5020563ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
