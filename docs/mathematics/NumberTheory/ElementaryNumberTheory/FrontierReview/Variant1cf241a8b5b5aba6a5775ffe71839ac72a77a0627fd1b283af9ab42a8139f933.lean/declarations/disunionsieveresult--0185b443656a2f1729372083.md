# DisunionSieveResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9924450b2f4943cb41a21df8a5a785c1dd3568d4167b30aa09561117d04c9d35",
  "kind": "structure",
  "lexical_name": "DisunionSieveResult",
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
  "slug": "disunionsieveresult--0185b443656a2f1729372083",
  "source": {
    "blob": "0196f93bf93378f61414cbef9d1a299c927d4bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 549,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Variant1cf241a8b5b5aba6a5775ffe71839ac72a77a0627fd1b283af9ab42a8139f933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0185b443656a2f1729372083598c011d4fc7f7f7b5c2ea7e9151300ef01b4d79",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FrontierReview/Variant1cf241a8b5b5aba6a5775ffe71839ac72a77a0627fd1b283af9ab42a8139f933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9924450b2f4943cb41a21df8a5a785c1dd3568d4167b30aa09561117d04c9d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DisunionSieveResult where
  input : Finset DisunionCandidate
  blocks : List DisunionBlock
  quarantine : Finset DisunionCandidate
  quarantineWithinInput :
    quarantine ⊆ input
  blocksWithinInput :
    ∀ block,
      block ∈ blocks →
      block.members ⊆ input
  pairwiseDisjoint :
    blocks.Pairwise
      (fun left right => Disjoint left.members right.members)
  acceptedExactlyOnce :
    ∀ candidate,
      candidate ∈ input →
      candidate ∉ quarantine →
      ∃! block,
        block ∈ blocks ∧ candidate ∈ block.members
  quarantineExcluded :
    ∀ block,
      block ∈ blocks →
      Disjoint block.members quarantine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FrontierReview/Variant1cf241a8b5b5aba6a5775ffe71839ac72a77a0627fd1b283af9ab42a8139f933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Variant1cf241a8b5b5aba6a5775ffe71839ac72a77a0627fd1b283af9ab42a8139f933.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0196f93bf93378f61414cbef9d1a299c927d4bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
