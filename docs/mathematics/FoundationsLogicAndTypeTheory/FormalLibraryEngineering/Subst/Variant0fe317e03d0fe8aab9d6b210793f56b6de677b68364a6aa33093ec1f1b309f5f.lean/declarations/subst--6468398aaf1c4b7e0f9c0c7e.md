# subst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:345612ab8f88412c21b3cd7d64c8d0e80aaf5ce44c0c47d8bf852d6ba4ede7e1",
  "kind": "def",
  "lexical_name": "subst?",
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
  "slug": "subst--6468398aaf1c4b7e0f9c0c7e",
  "source": {
    "blob": "6eb1bd574770be48d16b06b0e3048e9c0d3a6f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6468398aaf1c4b7e0f9c0c7e2f58f5ad0920b76ae72fc3c302f6e7c0a2a847da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:345612ab8f88412c21b3cd7d64c8d0e80aaf5ce44c0c47d8bf852d6ba4ede7e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subst? (mvarId : MVarId) (hFVarId : FVarId) : MetaM (Option MVarId) :=
  observing? (subst mvarId hFVarId)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0fe317e03d0fe8aab9d6b210793f56b6de677b68364a6aa33093ec1f1b309f5f.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1bd574770be48d16b06b0e3048e9c0d3a6f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
