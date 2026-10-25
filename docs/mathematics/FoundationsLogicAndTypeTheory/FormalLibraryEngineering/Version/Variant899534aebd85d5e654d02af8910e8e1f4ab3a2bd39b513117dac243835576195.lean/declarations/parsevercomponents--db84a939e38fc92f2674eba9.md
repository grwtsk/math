# parseVerComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1777d8c3c853fca6ad5d38e7ebb01715cb6db82dab57621a9d57afc0d08780c",
  "kind": "def",
  "lexical_name": "parseVerComponents",
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
  "slug": "parsevercomponents--db84a939e38fc92f2674eba9",
  "source": {
    "blob": "e67cecd6237592d48aeef030c1f7fe58158646b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db84a939e38fc92f2674eba9e15360f227b5a31b6e5f0edc3f109f192e7b2514",
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

Occurrence: `declaration:d1777d8c3c853fca6ad5d38e7ebb01715cb6db82dab57621a9d57afc0d08780c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def parseVerComponents
  (s : String)
: EStateM String s.Pos (Array String.Slice) :=
  fun p => go #[] p p (String.Pos.le_refl _)
where
  go cs iniPos p (iniPos_le : iniPos ≤ p) :=
    if h : p = s.endPos then
      let c := String.Slice.mk s iniPos p iniPos_le
      .ok (cs.push c) p
    else
      let c := p.get h
      if c == '.' then
        let c := String.Slice.mk s iniPos p iniPos_le
        go (cs.push c) (p.next h) (p.next h) (Nat.le_refl _)
      else if c.isAlphanum || c == '*' then
        go cs iniPos (p.next h)
          (String.Pos.le_trans iniPos_le (String.Pos.le_of_lt p.lt_next))
      else
        let c := String.Slice.mk s iniPos p iniPos_le
        .ok (cs.push c) p
  termination_by p

/-- Returns whether a version component is a wildcard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variant899534aebd85d5e654d02af8910e8e1f4ab3a2bd39b513117dac243835576195.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67cecd6237592d48aeef030c1f7fe58158646b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
