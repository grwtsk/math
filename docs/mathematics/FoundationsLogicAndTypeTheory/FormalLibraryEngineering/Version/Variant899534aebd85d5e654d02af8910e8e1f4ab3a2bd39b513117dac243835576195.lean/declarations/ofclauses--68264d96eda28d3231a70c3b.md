# ofClauses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76862ac184e71f04ee1ae61b05db1fbb7a58cbf6c304ee88e010eb94e4e4cdfe",
  "kind": "def",
  "lexical_name": "ofClauses",
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
  "slug": "ofclauses--68264d96eda28d3231a70c3b",
  "source": {
    "blob": "e67cecd6237592d48aeef030c1f7fe58158646b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 495,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68264d96eda28d3231a70c3ba48ad43dbed2a8c623f6067a15ea79bff028f069",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76862ac184e71f04ee1ae61b05db1fbb7a58cbf6c304ee88e010eb94e4e4cdfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def ofClauses (clauses : Array (Array VerComparator)) : VerRange :=
  {toString := fmtOrs clauses, clauses}
where
  fmtOrs ors :=
    if h : ors.size = 0 then
      ""
    else
      ors.foldl (init := fmtAnds ors[0]) (start := 1) fun s ands =>
        s!"{s} || {fmtAnds ands}"
  fmtAnds ands :=
    if h : ands.size = 0 then
      "<empty>"
    else
      ands.foldl (init := ands[0].toString) (start := 1) fun s v =>
        s!"{s}, {v}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67cecd6237592d48aeef030c1f7fe58158646b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
