# relIsoOfIsEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae134ddb086ff37dbadfec6ab35592c3355cc679b724d09339688e15f7cf9928",
  "kind": "def",
  "lexical_name": "relIsoOfIsEmpty",
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
  "slug": "relisoofisempty--3c4259c026890c28a6d6f6db",
  "source": {
    "blob": "33ce1caf8fa4a30a3a5d46659de78567cce23b69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 789,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c4259c026890c28a6d6f6dbe63d6aeefd16c23811f9587471b9a7de0cb691b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae134ddb086ff37dbadfec6ab35592c3355cc679b724d09339688e15f7cf9928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relIsoOfIsEmpty (r : α → α → Prop) (s : β → β → Prop) [IsEmpty α] [IsEmpty β] : r ≃r s :=
  ⟨Equiv.equivOfIsEmpty α β, @fun a => isEmptyElim a⟩

/-- Two irreflexive relations on a unique type are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ce1caf8fa4a30a3a5d46659de78567cce23b69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
