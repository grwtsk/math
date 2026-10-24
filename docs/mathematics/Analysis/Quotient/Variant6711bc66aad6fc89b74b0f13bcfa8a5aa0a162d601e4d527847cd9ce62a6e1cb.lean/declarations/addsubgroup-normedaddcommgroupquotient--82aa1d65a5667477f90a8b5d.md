# AddSubgroup.normedAddCommGroupQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89635df8082f2acde955fd705bace194fa5d843ca0d59639ccc89a2745e3cf92",
  "kind": "instance",
  "lexical_name": "AddSubgroup.normedAddCommGroupQuotient",
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
  "slug": "addsubgroup-normedaddcommgroupquotient--82aa1d65a5667477f90a8b5d",
  "source": {
    "blob": "524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 341,
    "path": "GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82aa1d65a5667477f90a8b5d60a961136c49a246ae6148cc32fb4020a3fdd40e",
  "verification": {
    "reference": "docs/verification/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89635df8082f2acde955fd705bace194fa5d843ca0d59639ccc89a2745e3cf92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance AddSubgroup.normedAddCommGroupQuotient (S : AddSubgroup M)
    [IsClosed (S : Set M)] : NormedAddCommGroup (M ⧸ S) := inferInstance

namespace AddSubgroup

open NormedAddGroupHom

/-- The morphism from a seminormed group to the quotient by a subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
