# ConcreteHardnessCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a828e6b9023a58b11905812b20fc6b0d0168dc4fb69440ed363e72053964807b",
  "kind": "structure",
  "lexical_name": "ConcreteHardnessCertificate",
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
  "slug": "concretehardnesscertificate--115d9d1b357f97b83f889a6b",
  "source": {
    "blob": "a4c1284184d45fcfecc5de5d520977dd55f102bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:115d9d1b357f97b83f889a6bdd25bae497efa61fe8985955c9eed16e8102cf56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a828e6b9023a58b11905812b20fc6b0d0168dc4fb69440ed363e72053964807b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConcreteHardnessCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate)
    (OracleAlgorithm : Type x) (ConcreteAttack : Type y) where
  oracle :
    AdversaryQueryLowerBound problem OracleAlgorithm
  reduction :
    OracleToConcreteReduction ConcreteAttack OracleAlgorithm
  sameQueryCount :
    reduction.oracleQueries = oracle.queryCount
  sameOracleSuccess :
    reduction.oracleSuccess = oracle.boundedError
  workTranslation :
    QueryToWorkTranslation reduction

namespace ConcreteHardnessCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {OracleAlgorithm : Type x} {ConcreteAttack : Type y}

/--
The adversary lower bound reaches concrete work only through both declared
translations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variant9ee9cf7c255bcd6baf655b9ee050ebe80a05f0da12e612046f9349ab1ffd473e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c1284184d45fcfecc5de5d520977dd55f102bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
