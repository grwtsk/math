# rec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3860e406d0e46d02fc17fcff5b71ef65763f408a6490f219db27aec58dc1274",
  "kind": "def",
  "lexical_name": "rec'",
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
  "slug": "rec--fc7afb1c1a1e2c0c81c4a6da",
  "source": {
    "blob": "980f661d1a19d0c7ea3764186de7422efe3762e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant848c2ff30326d6cc865fa2d2aaaa210c1bb266dfd7a748e24a012dc1271177fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc7afb1c1a1e2c0c81c4a6daff41b5d5022a5909ad0fb8f4c684b7167681ddcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant848c2ff30326d6cc865fa2d2aaaa210c1bb266dfd7a748e24a012dc1271177fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3860e406d0e46d02fc17fcff5b71ef65763f408a6490f219db27aec58dc1274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def rec' {F : αᵐᵒᵖ → Sort*} (h : ∀ X, F (op X)) : ∀ X, F X := fun X ↦ h (unop X)

/-- The canonical bijection between `α` and `αᵐᵒᵖ`. -/
@[to_additive (attr := simps -fullyApplied apply symm_apply)
  /-- The canonical bijection between `α` and `αᵃᵒᵖ`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant848c2ff30326d6cc865fa2d2aaaa210c1bb266dfd7a748e24a012dc1271177fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant848c2ff30326d6cc865fa2d2aaaa210c1bb266dfd7a748e24a012dc1271177fc.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `980f661d1a19d0c7ea3764186de7422efe3762e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
