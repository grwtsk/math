# Legacy.posOfAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceed9c60646b4b94eebef8367763b5b64b1452d0cc138189fa6ced959a6143ef",
  "kind": "def",
  "lexical_name": "Legacy.posOfAux",
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
  "slug": "legacy-posofaux--33cf036dfc269fd294522170",
  "source": {
    "blob": "d607ef1e6584b8d956976e8a61fc31d58ab3fe9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33cf036dfc269fd294522170b274a0a4821d4a5e9636f89a2aebb6c8161fb20b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceed9c60646b4b94eebef8367763b5b64b1452d0cc138189fa6ced959a6143ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Legacy.posOfAux (s : String) (c : Char) (stopPos : Pos.Raw) (pos : Pos.Raw) : Pos.Raw :=
  if h : pos < stopPos then
    if pos.get s == c then pos
    else
      have := Nat.sub_lt_sub_left h (Pos.Raw.lt_next s pos)
      posOfAux s c stopPos (pos.next s)
  else pos
termination_by stopPos.1 - pos.1

/--
Returns the position of the first occurrence of a character, `c`, in a string `s`. If `s` does not
contain `c`, returns `s.rawEndPos`.

This is an old implementation, preserved here for users of the lemmas in
`Batteries.Data.String.Lemmas`.

Examples:
* `"abcba".posOf 'a' = ⟨0⟩`
* `"abcba".posOf 'z' = ⟨5⟩`
* `"L∃∀N".posOf '∀' = ⟨4⟩`
-/
@[deprecated "Use the new `String` API." (since := "2026-03-26"), inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607ef1e6584b8d956976e8a61fc31d58ab3fe9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
