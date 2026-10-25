# finiteFrontierIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38dca456d1679aba03868bce2079eb8020397d1fe4ea3044ea6a1bd1fb9e2b52",
  "kind": "def",
  "lexical_name": "finiteFrontierIndex",
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
  "slug": "finitefrontierindex--1c87c8564ec042d95aad8d68",
  "source": {
    "blob": "7b8dd0b1ba291f1e25fbb5048b171272e41ff156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c87c8564ec042d95aad8d68167778b3a31e0bbea8622effce268ec62a8cda91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38dca456d1679aba03868bce2079eb8020397d1fe4ea3044ea6a1bd1fb9e2b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteFrontierIndex
    {Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : FiniteLocalRank Frontier)
    (record : Frontier) : StratifiedFrontierIndex where
  profileId := profileId
  stratum := stratum
  localRank := ranker.rank record

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8dd0b1ba291f1e25fbb5048b171272e41ff156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
