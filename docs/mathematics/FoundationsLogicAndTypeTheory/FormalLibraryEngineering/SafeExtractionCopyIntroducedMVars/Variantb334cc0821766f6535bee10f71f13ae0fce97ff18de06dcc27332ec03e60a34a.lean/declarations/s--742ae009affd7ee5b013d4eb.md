# s

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58a801afe4583278e4e11a2618c8f7c00c107a908e3ca0139de00e575c84aa8c",
  "kind": "axiom",
  "lexical_name": "s",
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
  "slug": "s--742ae009affd7ee5b013d4eb",
  "source": {
    "blob": "8139c83110316dc6944033e10fde9b36c67cdb22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExtractionCopyIntroducedMVars/Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:742ae009affd7ee5b013d4ebdddd562ffb3d5fe710a2a450bd77b93e58fd54ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExtractionCopyIntroducedMVars/Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `axiom` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58a801afe4583278e4e11a2618c8f7c00c107a908e3ca0139de00e575c84aa8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
axiom s : S 0

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat

case a.a
⊢ S ?a.y✝

case a.a
⊢ S ?a.y✝

case x
⊢ Nat
---
error: (kernel) declaration has metavariables '_example'
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExtractionCopyIntroducedMVars/Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafeExtractionCopyIntroducedMVars/Variantb334cc0821766f6535bee10f71f13ae0fce97ff18de06dcc27332ec03e60a34a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8139c83110316dc6944033e10fde9b36c67cdb22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
