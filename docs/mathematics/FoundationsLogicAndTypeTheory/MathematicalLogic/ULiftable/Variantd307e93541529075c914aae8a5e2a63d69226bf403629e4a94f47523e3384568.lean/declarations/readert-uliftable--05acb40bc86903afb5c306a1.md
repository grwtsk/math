# ReaderT.uliftable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:721771d2c07c4b5f7dccffa099225b2b7d75974259e8accdf1f8e2831d6f76aa",
  "kind": "def",
  "lexical_name": "ReaderT.uliftable'",
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
  "slug": "readert-uliftable--05acb40bc86903afb5c306a1",
  "source": {
    "blob": "4d040c11c6a91de15edab3e1d278be12ffaa2801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05acb40bc86903afb5c306a163b19eaa5095d942c7a07fbfa4ae106bbcba718b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:721771d2c07c4b5f7dccffa099225b2b7d75974259e8accdf1f8e2831d6f76aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ReaderT.uliftable' {m m'} [ULiftable m m'] (F : s ≃ s') :
    ULiftable (ReaderT s m) (ReaderT s' m') where
  congr G := ReaderT.equiv <| Equiv.piCongr F fun _ => ULiftable.congr G

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULiftable/Variantd307e93541529075c914aae8a5e2a63d69226bf403629e4a94f47523e3384568.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d040c11c6a91de15edab3e1d278be12ffaa2801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
