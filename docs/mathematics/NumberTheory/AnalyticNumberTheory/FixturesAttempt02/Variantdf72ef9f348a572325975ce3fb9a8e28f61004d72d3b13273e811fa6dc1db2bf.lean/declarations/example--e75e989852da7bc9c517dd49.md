# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:906f907615dfe75056e15efec1ff0358a76fe8a9d827255124780b5e8ae2d32a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--e75e989852da7bc9c517dd49",
  "source": {
    "blob": "61035f313dc975fe1d330455686ea1cabdb07f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8,
    "line": 6,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/FixturesAttempt02/Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e75e989852da7bc9c517dd490d0c29454d85467fd1748e3f67ec190a5a3e92b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/FixturesAttempt02/Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:906f907615dfe75056e15efec1ff0358a76fe8a9d827255124780b5e8ae2d32a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–8.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (c : ℝ) : mangoldtDirichletTerm c 1 = 0 := mangoldtDirichletTerm_one c

-- The first cell includes both touching endpoints.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/FixturesAttempt02/Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/FixturesAttempt02/Variantdf72ef9f348a572325975ce3fb9a8e28f61004d72d3b13273e811fa6dc1db2bf.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61035f313dc975fe1d330455686ea1cabdb07f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
