# ResidueFunctionalTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11452df9f887392d4fbdb09c1791ec7273f664722f5554a8f7e112fd7f6cf62d",
  "kind": "structure",
  "lexical_name": "ResidueFunctionalTrace",
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
  "slug": "residuefunctionaltrace--c712bc7e2c271ea5aaa53a8c",
  "source": {
    "blob": "0eeacd91085b184dab9cffcb354df2a121244d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c712bc7e2c271ea5aaa53a8cd396cc32975ac1bee0c0ee1d5e68ec9dfdc8da16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11452df9f887392d4fbdb09c1791ec7273f664722f5554a8f7e112fd7f6cf62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResidueFunctionalTrace where
  residueFunctionalId : String
  finiteResidueEnergyBefore : Nat
  finiteResidueEnergyAfter : Nat
  analyticResidueBefore : Nat
  analyticResidueAfter : Nat
  analyticResidueCountBefore : Nat
  analyticResidueCountAfter : Nat
  finiteResidueCountBefore : Nat
  finiteResidueCountAfter : Nat
  alignedCountBefore : Nat
  alignedCountAfter : Nat
  energyMonotone : finiteResidueEnergyAfter ≤ finiteResidueEnergyBefore
  analyticResidueMonotone : analyticResidueAfter ≤ analyticResidueBefore
  analyticCountMonotone : analyticResidueCountAfter ≤ analyticResidueCountBefore

/-- Reducer map interpreted as a projected finite transition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticResidueReduction/Variantc097b5ab5094dba0da4e5d5987eed9824ea715d6d6e9c9e46a9cf25d2daf81cb.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eeacd91085b184dab9cffcb354df2a121244d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
