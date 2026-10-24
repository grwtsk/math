# findLeadingSpacesSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49c874d53e643e07c4ea000dc0253d8ccf698ddd63dfc2e89851df70d59a1db8",
  "kind": "def",
  "lexical_name": "findLeadingSpacesSize",
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
  "slug": "findleadingspacessize--6b38c5b427a5390047c6d427",
  "source": {
    "blob": "42c62ec2d86fab60c5331ae08361cf90d50cf4b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b38c5b427a5390047c6d427f0b07de1fdf86f24d83ff42ba41e307e75dd2db9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49c874d53e643e07c4ea000dc0253d8ccf698ddd63dfc2e89851df70d59a1db8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findLeadingSpacesSize (s : String) : Nat :=
  let it := s.startPos
  let it := it.find? (· == '\n') |>.bind String.Pos.next?
  match it with
  | some it => consumeSpaces it 0 s.utf8ByteSize
  | none => 0
where
  consumeSpaces {s : String} (it : s.Pos) (curr min : Nat) : Nat :=
    if h : it.IsAtEnd then min
    else if it.get h == ' ' || it.get h == '\t' then consumeSpaces (it.next h) (curr + 1) min
    else if it.get h == '\n' then findNextLine (it.next h) min
    else findNextLine (it.next h) (Nat.min curr min)
  termination_by it
  findNextLine {s : String} (it : s.Pos) (min : Nat) : Nat :=
    if h : it.IsAtEnd then min
    else if it.get h == '\n' then consumeSpaces (it.next h) 0 min
    else findNextLine (it.next h) min
  termination_by it

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extra/Variantbc3013e310fe4f3481fc5c07f2a9367253e4d2ada2a8299636fcc4400c77eed3.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c62ec2d86fab60c5331ae08361cf90d50cf4b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
