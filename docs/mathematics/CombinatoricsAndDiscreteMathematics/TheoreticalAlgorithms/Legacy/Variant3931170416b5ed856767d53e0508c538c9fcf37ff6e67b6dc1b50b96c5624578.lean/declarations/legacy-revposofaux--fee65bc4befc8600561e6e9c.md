# Legacy.revPosOfAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:904744670b1ae94a77e5ab30c8b49573b80b388d4973552ed1c1db8f78a8b85c",
  "kind": "def",
  "lexical_name": "Legacy.revPosOfAux",
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
  "slug": "legacy-revposofaux--fee65bc4befc8600561e6e9c",
  "source": {
    "blob": "07241117e21f517ee652003bb0949a4cabc10774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fee65bc4befc8600561e6e9cc473ef47c7854eb7566e16a20f2d7c9b60b604da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:904744670b1ae94a77e5ab30c8b49573b80b388d4973552ed1c1db8f78a8b85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Legacy.revPosOfAux (s : String) (c : Char) (pos : Pos.Raw) : Option Pos.Raw :=
  if h : pos = 0 then none
  else
    have := Pos.Raw.prev_lt_of_pos s pos h
    let pos := pos.prev s
    if pos.get s == c then some pos
    else revPosOfAux s c pos
termination_by pos.1

/--
Returns the position of the last occurrence of a character, `c`, in a string `s`. If `s` does not
contain `c`, returns `none`.

This is an old implementation, preserved here for users of the lemmas in
`Batteries.Data.String.Lemmas`.

Examples:
* `"abcabc".revPosOf 'a' = some ⟨3⟩`
* `"abcabc".revPosOf 'z' = none`
* `"L∃∀N".revPosOf '∀' = some ⟨4⟩`
-/
@[deprecated "Use the new `String` API." (since := "2026-03-26"), inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant3931170416b5ed856767d53e0508c538c9fcf37ff6e67b6dc1b50b96c5624578.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07241117e21f517ee652003bb0949a4cabc10774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
