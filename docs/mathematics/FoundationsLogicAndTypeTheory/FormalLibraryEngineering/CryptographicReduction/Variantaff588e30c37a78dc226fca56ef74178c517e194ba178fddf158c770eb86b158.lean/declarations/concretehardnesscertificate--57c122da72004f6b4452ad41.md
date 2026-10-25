# ConcreteHardnessCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f728c9f9eb41e9f3bf6ce687957e54b35742c5815d3ce2a82c60e991582f4371",
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
  "slug": "concretehardnesscertificate--57c122da72004f6b4452ad41",
  "source": {
    "blob": "767bd06ad96652587f892dea12468ce3cfea5644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c122da72004f6b4452ad4192f6b9dc478ec566265cf49e48f7be850c673770",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f728c9f9eb41e9f3bf6ce687957e54b35742c5815d3ce2a82c60e991582f4371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CryptographicReduction/Variantaff588e30c37a78dc226fca56ef74178c517e194ba178fddf158c770eb86b158.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767bd06ad96652587f892dea12468ce3cfea5644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
