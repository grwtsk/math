# Legacy.mapAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5dc91a19cf9e0e01de1bc9e19fc886e87a21b89464eb4497517c40269e55ead",
  "kind": "def",
  "lexical_name": "Legacy.mapAux",
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
  "slug": "legacy-mapaux--81ff6cb71e944149bbb4ccea",
  "source": {
    "blob": "d607ef1e6584b8d956976e8a61fc31d58ab3fe9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ff6cb71e944149bbb4ccea0a9f3cb21279f4af911d5b44063124b57530207e",
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

Occurrence: `declaration:f5dc91a19cf9e0e01de1bc9e19fc886e87a21b89464eb4497517c40269e55ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Legacy.mapAux (f : Char → Char) (i : Pos.Raw) (s : String) : String :=
  if h : i.atEnd s then s
  else
    let c := f (i.get s)
    have := mapAux_lemma s i c h
    let s := i.set s c
    mapAux f (i.next s) s
termination_by s.rawEndPos.1 - i.1

/--
Applies the function `f` to every character in a string, returning a string that contains the
resulting characters.

This is an old implementation, preserved here for users of the lemmas in
`Batteries.Data.String.Lemmas`. Its runtime behavior is equivalent to that of `String.map`.

Examples:
 * `"abc123".map Char.toUpper = "ABC123"`
 * `"".map Char.toUpper = ""`
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607ef1e6584b8d956976e8a61fc31d58ab3fe9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
