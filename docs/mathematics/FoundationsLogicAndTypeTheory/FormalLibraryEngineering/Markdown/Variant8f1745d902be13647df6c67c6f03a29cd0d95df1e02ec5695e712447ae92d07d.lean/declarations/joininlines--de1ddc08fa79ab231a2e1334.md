# joinInlines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b48c83de14a00c1b516e452682dbd92f5a7ecdc46c58b8dc918d3febc97aedc2",
  "kind": "def",
  "lexical_name": "joinInlines",
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
  "slug": "joininlines--de1ddc08fa79ab231a2e1334",
  "source": {
    "blob": "57f92f0e9159092ddf57c765816558eb59d974c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de1ddc08fa79ab231a2e133490a43ba40d9d50a67c11bef240802b8cb7f1fed7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b48c83de14a00c1b516e452682dbd92f5a7ecdc46c58b8dc918d3febc97aedc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def joinInlines (parts : Array (Array String)) : Array String :=
  parts.foldl (init := #[]) fun acc next =>
    if h : next.size = 0 then acc
    else if h' : acc.size = 0 then next
    else
      let lastIdx := acc.size - 1
      have : 0 < acc.size := Nat.ne_zero_iff_zero_lt.mp h'
      have : 0 < next.size := Nat.ne_zero_iff_zero_lt.mp h
      have : lastIdx < acc.size := Nat.sub_one_lt h'
      let glued := glueInlineBoundary (acc[lastIdx]) next[0]
      acc.set lastIdx glued ++ next.drop 1

/--
A means of transforming values into Markdown lines.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f92f0e9159092ddf57c765816558eb59d974c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
