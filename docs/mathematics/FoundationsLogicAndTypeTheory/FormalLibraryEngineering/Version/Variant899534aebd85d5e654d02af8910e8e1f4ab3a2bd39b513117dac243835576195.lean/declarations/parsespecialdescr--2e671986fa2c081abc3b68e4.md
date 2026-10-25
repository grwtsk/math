# parseSpecialDescr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21d281aaeef7c5355f91423bbce3b137b420aeb7a08396f87dc5691406a1062d",
  "kind": "def",
  "lexical_name": "parseSpecialDescr?",
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
  "slug": "parsespecialdescr--2e671986fa2c081abc3b68e4",
  "source": {
    "blob": "e67cecd6237592d48aeef030c1f7fe58158646b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e671986fa2c081abc3b68e486ec4d488eef1f5b4e146c61f0e3fca1c3b4343a",
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

Occurrence: `declaration:21d281aaeef7c5355f91423bbce3b137b420aeb7a08396f87dc5691406a1062d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseSpecialDescr? (s : String) : EStateM String s.Pos (Option String) := do
  let p ← get
  if h : p = s.endPos then
    return none
  else
    let c := p.get h
    if c == '-' then
      let p := p.next h
      let p' := nextUntilWhitespace p
      set p'
      let specialDescr := s.extract p p'
      return some specialDescr
    else
      return none
where
  nextUntilWhitespace p :=
    if h : p = s.endPos then
      p
    else if (p.get h).isWhitespace then
      p
    else
      nextUntilWhitespace (p.next h)
  termination_by p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67cecd6237592d48aeef030c1f7fe58158646b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
