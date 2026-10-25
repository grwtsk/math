# CrystallineCharacteristicFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a41ca3101677512cd9baa3640b56f53012151e963630fc19c77640b71c9acc6e",
  "kind": "structure",
  "lexical_name": "CrystallineCharacteristicFormula",
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
  "slug": "crystallinecharacteristicformula--e6c360ce38fce79bbea2605c",
  "source": {
    "blob": "490c61b1bbc47be754c4ef6e789ccfc6ba2ace71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6c360ce38fce79bbea2605c302c0eac0224619895fddae92ceb8c71359a25dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a41ca3101677512cd9baa3640b56f53012151e963630fc19c77640b71c9acc6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrystallineCharacteristicFormula
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory)
    (I : CrystallineIndexClass D H) where
  chern : CrystallineChernCharacter H
  ahat? : Option (CrystallineAhatGenus H)
  witten? : Option (WittenGenusIndexBoundary H)
  characteristicClass : CohomologyClass H
  formula :
    ClassEquality I.indexCohomologyClass characteristicClass
  formulaIsAtiyahSingerStyle : Prop
  formulaIsAtiyahSingerStyle_certified : formulaIsAtiyahSingerStyle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490c61b1bbc47be754c4ef6e789ccfc6ba2ace71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
