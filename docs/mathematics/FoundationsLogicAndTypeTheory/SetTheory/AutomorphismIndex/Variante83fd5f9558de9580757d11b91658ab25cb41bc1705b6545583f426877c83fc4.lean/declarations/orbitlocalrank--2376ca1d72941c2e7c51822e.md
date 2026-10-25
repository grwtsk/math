# OrbitLocalRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a319786f420ea0d4dbd69df343e84205d5ed9df7a323f61dda8a4abc978ba59",
  "kind": "structure",
  "lexical_name": "OrbitLocalRank",
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
  "slug": "orbitlocalrank--2376ca1d72941c2e7c51822e",
  "source": {
    "blob": "271bc17a15cfbf8fd372bf711f4841ba1f135189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variante83fd5f9558de9580757d11b91658ab25cb41bc1705b6545583f426877c83fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2376ca1d72941c2e7c51822e37b4bc30b2ba38931b327e775585de7ed4d5d54a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variante83fd5f9558de9580757d11b91658ab25cb41bc1705b6545583f426877c83fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a319786f420ea0d4dbd69df343e84205d5ed9df7a323f61dda8a4abc978ba59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrbitLocalRank
    (GroupElement Frontier : Type u) where
  orderingSourceRef : String
  act : GroupElement → Frontier → Frontier
  rank : Frontier → Nat
  invariant :
    ∀ groupElement record,
      rank (act groupElement record) = rank record

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variante83fd5f9558de9580757d11b91658ab25cb41bc1705b6545583f426877c83fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AutomorphismIndex/Variante83fd5f9558de9580757d11b91658ab25cb41bc1705b6545583f426877c83fc4.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271bc17a15cfbf8fd372bf711f4841ba1f135189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
