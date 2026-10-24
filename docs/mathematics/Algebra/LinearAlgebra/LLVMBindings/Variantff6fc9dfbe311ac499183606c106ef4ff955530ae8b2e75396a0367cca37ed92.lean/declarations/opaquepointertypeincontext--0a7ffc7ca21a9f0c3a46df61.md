# opaquePointerTypeInContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d35590a80726950c01a39d6cfece4038af9710420ee0383cd17bf0d528c2d57f",
  "kind": "opaque",
  "lexical_name": "opaquePointerTypeInContext",
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
  "slug": "opaquepointertypeincontext--0a7ffc7ca21a9f0c3a46df61",
  "source": {
    "blob": "2fa12815ca56e9b076cf2bc6ba5b0c4a9c1d0206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a7ffc7ca21a9f0c3a46df61c5b45d40866f8bcf3ef95a75e79fcee6d8abe2b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d35590a80726950c01a39d6cfece4038af9710420ee0383cd17bf0d528c2d57f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque opaquePointerTypeInContext (ctx : Context) (addrspace: UInt64 := 0) : BaseIO (LLVMType ctx)

@[extern "lean_llvm_float_type_in_context"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fa12815ca56e9b076cf2bc6ba5b0c4a9c1d0206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
