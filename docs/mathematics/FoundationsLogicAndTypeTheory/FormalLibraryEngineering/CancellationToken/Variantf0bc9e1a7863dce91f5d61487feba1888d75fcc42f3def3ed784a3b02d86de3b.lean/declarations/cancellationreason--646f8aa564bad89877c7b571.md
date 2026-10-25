# CancellationReason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17fa9dbd6b7240c7e57f5ee2a55cbf5ae68ce180f3a80b87149423a896dafd85",
  "kind": "inductive",
  "lexical_name": "CancellationReason",
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
  "slug": "cancellationreason--646f8aa564bad89877c7b571",
  "source": {
    "blob": "91952b697561a1a8080ec6e11124dab03980fbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:646f8aa564bad89877c7b57177cd4d1c045e832cb4d8b2c67ff3af60eb931685",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17fa9dbd6b7240c7e57f5ee2a55cbf5ae68ce180f3a80b87149423a896dafd85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CancellationReason where
  /--
  Cancelled due to a deadline or timeout
  -/
  | deadline

  /--
  Cancelled due to shutdown
  -/
  | shutdown

  /--
  Explicitly cancelled
  -/
  | cancel

  /--
  Custom cancellation reason
  -/
  | custom (msg : String)
  deriving Repr, BEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91952b697561a1a8080ec6e11124dab03980fbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
