# testSeed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc95a54ec8ff173af725cb1e80ab2bf1b90657374747ac2ed8318956a1265314",
  "kind": "def",
  "lexical_name": "testSeed",
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
  "slug": "testseed--b6dbbec4e7b15c9ed015003f",
  "source": {
    "blob": "da51ab6bb5b6455d3670a376fe11628d52011135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6dbbec4e7b15c9ed015003fe716a86fa48ecef36360bae9c404e250c000b8d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc95a54ec8ff173af725cb1e80ab2bf1b90657374747ac2ed8318956a1265314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testSeed : StdGen := mkStdGen 373737

-- Note how each row ends with `Needs.reflOf _`, and the `Needs` are linearized.
/--
info:

│⠇│
│⠘│⠇│
│⠃│⠀│⠇│
│⠟│⠚│⠛│⠇│
│⠿│⠷│⠶│⠲│⠇│
-/
#guard_msgs in
run_cmd
  let transDeps : ArrayHierarchy := Std.RandM.run' testSeed <| ArrayHierarchy.randM 5
  logInfo m!"\n\n{transDeps.toString}"

/-- A `Needs` which exhibits every set of `NeedsKind`s in one of its columns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant2401c3c2feac0d070cd3c2e1b87e13a7bb03c9f375c3776e4e478c9af12a2f67.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da51ab6bb5b6455d3670a376fe11628d52011135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
