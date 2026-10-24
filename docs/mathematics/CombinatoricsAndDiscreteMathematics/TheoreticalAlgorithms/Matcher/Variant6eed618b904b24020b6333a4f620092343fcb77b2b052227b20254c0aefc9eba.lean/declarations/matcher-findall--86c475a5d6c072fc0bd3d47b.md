# Matcher.findAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28fcb74f57c61fabc348a48069b2f50d2674ce77ed8e04934ab4f6eec54ef8f1",
  "kind": "def",
  "lexical_name": "Matcher.findAll",
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
  "slug": "matcher-findall--86c475a5d6c072fc0bd3d47b",
  "source": {
    "blob": "e0358f0997cefad2f684555e75690b4dfa47b19e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86c475a5d6c072fc0bd3d47bc6af11ecf9d419077f8ada98bab8376648812532",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28fcb74f57c61fabc348a48069b2f50d2674ce77ed8e04934ab4f6eec54ef8f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Matcher.findAll [BEq α] (m : Matcher α) (l : List α) : Array (Nat × Nat) :=
  loop (l, 0) m.toMatcher #[]
where
  /-- Accumulator loop for `List.Matcher.findAll` -/
  loop (l : List α × Nat) (am : Array.Matcher α) (occs : Array (Nat × Nat)) : Array (Nat × Nat) :=
    match am.next? l with
    | none => occs
    | some (l, am) => loop l am (occs.push (l.snd - m.table.size, l.snd))

/--
Find the start and end positions of the first infix sublist of `l` matching `m.pattern`,
or `none` if there is no such sublist.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant6eed618b904b24020b6333a4f620092343fcb77b2b052227b20254c0aefc9eba.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0358f0997cefad2f684555e75690b4dfa47b19e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
