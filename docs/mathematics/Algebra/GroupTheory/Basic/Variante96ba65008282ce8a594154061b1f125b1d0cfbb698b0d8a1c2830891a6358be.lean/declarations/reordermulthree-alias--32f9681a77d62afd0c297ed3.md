# reorderMulThree_alias''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e48e16eba73cf37fb960311a889574c7a23f0753d0f79fbc1699fc16d528c9b",
  "kind": "def",
  "lexical_name": "reorderMulThree_alias''",
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
  "slug": "reordermulthree-alias--32f9681a77d62afd0c297ed3",
  "source": {
    "blob": "6a2256143ce84337c4916271e2fb9f9a423a59b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 415,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32f9681a77d62afd0c297ed3fa382c91d95aaf8341563fb8a47c7c413c8fa27b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e48e16eba73cf37fb960311a889574c7a23f0753d0f79fbc1699fc16d528c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reorderMulThree_alias'' {α : Type _} [Mul α] (x y : α) : α → α := reorderMulThree x y

/--
error: Invalid cycle `04`, a cycle must have at least 2 elements.
See the docstring of `reorder` for how to specify reorders.
-/
#guard_msgs in
@[to_additive (reorder := 04)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante96ba65008282ce8a594154061b1f125b1d0cfbb698b0d8a1c2830891a6358be.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a2256143ce84337c4916271e2fb9f9a423a59b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
