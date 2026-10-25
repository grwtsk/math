# expandOptLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e34780c4abb16d8253b2b746675d73443e3940978cba09491f25d384c60189f",
  "kind": "def",
  "lexical_name": "expandOptLocation",
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
  "slug": "expandoptlocation--8645c1732def81019e42a630",
  "source": {
    "blob": "a419897036d1435dd39900549c05342f4ef98a3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant9c591becb297d431f37ccbfced26239568b41290c726343206820303e5b18910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8645c1732def81019e42a630e874adf69821ab15228e1dcc6d0aa990a0715582",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant9c591becb297d431f37ccbfced26239568b41290c726343206820303e5b18910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e34780c4abb16d8253b2b746675d73443e3940978cba09491f25d384c60189f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandOptLocation (stx : Syntax) : Location :=
  if stx.isNone then
    Location.targets #[] true
  else
    expandLocation stx[0]

open Meta

/--
Runs the given `atLocal` and `atTarget` methods on each of the locations selected by the given `loc`.
* If `loc` is a list of locations, runs at each specified hypothesis (and finally the goal if `⊢` is included),
  and fails if any of the tactic applications fail.
* If `loc` is `*`, runs at the target first and then the hypotheses in reverse order.
  If `atTarget` closes the main goal, `withLocation` does not run `atLocal`.
  If all tactic applications fail, `withLocation` with call `failed` with the main goal mvar.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant9c591becb297d431f37ccbfced26239568b41290c726343206820303e5b18910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant9c591becb297d431f37ccbfced26239568b41290c726343206820303e5b18910.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a419897036d1435dd39900549c05342f4ef98a3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
