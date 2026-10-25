# TypeIIBlockCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:401c921c54dccad03bb133facf90e2185d4a06a910a07a4514514e8623c28aa4",
  "kind": "structure",
  "lexical_name": "TypeIIBlockCut",
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
  "slug": "typeiiblockcut--355d9bba306240e98ae0fb17",
  "source": {
    "blob": "bdf7f8629a17b30cf3b6fec22ba58382b1ed5c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:355d9bba306240e98ae0fb17469eb752e52218b0e878b477db8be4bca6fab36c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:401c921c54dccad03bb133facf90e2185d4a06a910a07a4514514e8623c28aa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIIBlockCut
    (Left Right : Type*) [Fintype Left] [Fintype Right] where
  Child : Type
  childFintype : Fintype Child
  childDecidableEq : DecidableEq Child
  leftChild : Left → Child
  rightChild : Right → Child
  parentComplexity : ℕ
  childComplexity : Child → ℕ
  complexityDecrease : ∀ child, childComplexity child < parentComplexity

attribute [instance] TypeIIBlockCut.childFintype
attribute [instance] TypeIIBlockCut.childDecidableEq

/-- Matrix contribution whose two indices belong to the same named child. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variantd7bcc1a13f682756aa943cfbc48954b87567aa875be9e6251e5fce3289f70034.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdf7f8629a17b30cf3b6fec22ba58382b1ed5c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
