# canonicallyOrderedAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b67f454ac911953dee1df9fd0b89f459b6a5aee69931893aab314c8996aad93c",
  "kind": "instance",
  "lexical_name": "canonicallyOrderedAdd",
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
  "slug": "canonicallyorderedadd--150f844a2de674b6c4da5770",
  "source": {
    "blob": "238d86c6b5d94c309f0c33385fb6cba9aa18f351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:150f844a2de674b6c4da5770506a253e41dd8c7b8ad6f6724287bee86e2a9962",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b67f454ac911953dee1df9fd0b89f459b6a5aee69931893aab314c8996aad93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance canonicallyOrderedAdd [Add α] [Preorder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedAdd (WithTop α) where
  le_self_add
  | ⊤, _ => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_self_add
  le_add_self
  | ⊤, ⊤ | ⊤, (b : α) => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_add_self

end WithTop

namespace WithBot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d86c6b5d94c309f0c33385fb6cba9aa18f351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
