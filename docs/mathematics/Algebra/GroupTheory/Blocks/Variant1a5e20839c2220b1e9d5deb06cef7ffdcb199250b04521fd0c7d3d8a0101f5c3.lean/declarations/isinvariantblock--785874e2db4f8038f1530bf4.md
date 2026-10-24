# IsInvariantBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82345cccae2b6eb2f222651d2d2b99b4cdfc40781f335ef8ae544154f0482cc8",
  "kind": "def",
  "lexical_name": "IsInvariantBlock",
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
  "slug": "isinvariantblock--785874e2db4f8038f1530bf4",
  "source": {
    "blob": "c39b201027103f3b37fd0e0f10338e7832e93933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:785874e2db4f8038f1530bf46f6ee5e857149714877ed3f6261189e1c82cea3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82345cccae2b6eb2f222651d2d2b99b4cdfc40781f335ef8ae544154f0482cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInvariantBlock (B : Set X) := ∀ g : G, g • B ⊆ B

section IsTrivialBlock

/-- A trivial block is a `Set X` which is either a subsingleton or `univ`.

Note: It is not necessarily a block when the action is not by a group. -/
@[to_additive
"A trivial block is a `Set X` which is either a subsingleton or `univ`.

Note: It is not necessarily a block when the action is not by a group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39b201027103f3b37fd0e0f10338e7832e93933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
