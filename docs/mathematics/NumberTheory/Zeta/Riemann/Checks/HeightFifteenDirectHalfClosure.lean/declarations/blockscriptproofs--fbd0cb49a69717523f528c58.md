# BlockScriptProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dcf3951c4d3cd18bbcba87d172956e70a3e0b9f5a2e3dea79cb9502cf7739e2",
  "kind": "def",
  "lexical_name": "BlockScriptProofs",
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
  "slug": "blockscriptproofs--fbd0cb49a69717523f528c58",
  "source": {
    "blob": "5ab497ece5b8f3040761d53719de019192f8357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 262,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbd0cb49a69717523f528c585a4b385da796e69d7e517ba9bdd97eafb6bd7318",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dcf3951c4d3cd18bbcba87d172956e70a3e0b9f5a2e3dea79cb9502cf7739e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BlockScriptProofs : Prop :=
    chunk directTest directTerm 0 64 = some 0 ∧
    chunk directTest directTerm 64 64 = some 0 ∧
    chunk directTest directTerm 128 64 = some 0 ∧
    chunk directTest directTerm 192 64 = some 0 ∧
    chunk directTest directTerm 256 64 = some 1 ∧
    chunk directTest directTerm 320 64 = some 0 ∧
    chunk directTest directTerm 384 64 = some 0 ∧
    chunk directTest directTerm 448 64 = some 0 ∧
    chunk directTest directTerm 512 64 = some 0 ∧
    chunk directTest directTerm 576 64 = some 0 ∧
    chunk directTest directTerm 640 64 = some 0 ∧
    chunk directTest directTerm 704 64 = some 0 ∧
    chunk directTest directTerm 768 64 = some 0 ∧
    chunk directTest directTerm 832 64 = some 0 ∧
    chunk directTest directTerm 896 64 = some 0 ∧
    chunk directTest directTerm 960 64 = some 0 ∧
    chunk directTest directTerm 1024 64 = some 0 ∧
    chunk directTest directTerm 1088 64 = some 0 ∧
    chunk directTest directTerm 1152 64 = some 0 ∧
    chunk directTest directTerm 1216 64 = some 0 ∧
    chunk directTest directTerm 1280 64 = some 0 ∧
    chunk directTest directTerm 1344 64 = some 0 ∧
    chunk directTest directTerm 1408 64 = some 0 ∧
    chunk directTest directTerm 1472 64 = some 0 ∧
    chunk directTest directTerm 1536 64 = some 0 ∧
    chunk directTest directTerm 1600 64 = some 0 ∧
    chunk directTest directTerm 1664 64 = some 0 ∧
    chunk directTest directTerm 1728 64 = some 0 ∧
    chunk directTest directTerm 1792 64 = some 0 ∧
    chunk directTest directTerm 1856 64 = some 0 ∧
    chunk directTest directTerm 1920 64 = some 0 ∧
    chunk directTest directTerm 1984 64 = some 0 ∧
    chunk directTest directTerm 2048 64 = some 0 ∧
    chunk directTest directTerm 2112 64 = some 0 ∧
    chunk directTest directTerm 2176 64 = some 0 ∧
    chunk directTest directTerm 2240 64 = some 0 ∧
    chunk directTest directTerm 2304 64 = some 0 ∧
    chunk directTest directTerm 2368 11 = some 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ab497ece5b8f3040761d53719de019192f8357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
