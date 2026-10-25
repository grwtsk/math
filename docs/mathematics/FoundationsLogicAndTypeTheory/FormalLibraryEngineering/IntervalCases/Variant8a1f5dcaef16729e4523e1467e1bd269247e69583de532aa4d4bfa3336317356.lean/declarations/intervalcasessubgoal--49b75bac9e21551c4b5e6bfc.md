# IntervalCasesSubgoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5da89c335c66f4943b525c3a39538568996e4257d653676bcbc65a750eabd5a0",
  "kind": "structure",
  "lexical_name": "IntervalCasesSubgoal",
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
  "slug": "intervalcasessubgoal--49b75bac9e21551c4b5e6bfc",
  "source": {
    "blob": "d72d6abb19fb2523e4b5bef8a61e3cb91a221b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49b75bac9e21551c4b5e6bfcb5e9f15f3e348b15af0dac91540308ab8a9072a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5da89c335c66f4943b525c3a39538568996e4257d653676bcbc65a750eabd5a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntervalCasesSubgoal where
  /-- The target expression, a numeral in the input type -/
  rhs : Expr
  /-- The numeric value of the target expression -/
  value : Int
  /-- The new subgoal, of the form `⊢ x = rhs → tgt` -/
  goal : MVarId

/--
A `Bound` represents the result of analyzing a lower or upper bound expression.
If `e` is the scrutinee expression, then a lower bound expression like `3 < e`
is normalized to `¬e ≤ 3` and represented as `.lt 3`, and an upper bound expression
like `e ≤ 5` is represented as `.le 5`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant8a1f5dcaef16729e4523e1467e1bd269247e69583de532aa4d4bfa3336317356.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d72d6abb19fb2523e4b5bef8a61e3cb91a221b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
