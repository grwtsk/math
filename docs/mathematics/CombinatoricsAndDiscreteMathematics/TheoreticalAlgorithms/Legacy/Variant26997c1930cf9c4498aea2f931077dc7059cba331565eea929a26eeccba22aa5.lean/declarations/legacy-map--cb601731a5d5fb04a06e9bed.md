# Legacy.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9291424a2b5087047ebb05c9accd096371df8ce0537012d44bc144e0ecfd673f",
  "kind": "def",
  "lexical_name": "Legacy.map",
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
  "slug": "legacy-map--cb601731a5d5fb04a06e9bed",
  "source": {
    "blob": "d607ef1e6584b8d956976e8a61fc31d58ab3fe9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb601731a5d5fb04a06e9bed69d4a6adcb958cbaca263a8eee15e08fb020e34f",
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

Occurrence: `declaration:9291424a2b5087047ebb05c9accd096371df8ce0537012d44bc144e0ecfd673f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Legacy.map (f : Char → Char) (s : String) : String :=
  mapAux f 0 s

/--
Removes the specified number of characters (Unicode code points) from the start of the string.

If `n` is greater than `s.length`, returns `""`.

This is an old implementation, preserved here for users of the lemmas in
`Batteries.Data.String.Lemmas`. Its runtime behavior is equivalent to that of `String.drop`.

Examples:
 * `"red green blue".drop 4 = "green blue"`
 * `"red green blue".drop 10 = "blue"`
 * `"red green blue".drop 50 = ""`
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant26997c1930cf9c4498aea2f931077dc7059cba331565eea929a26eeccba22aa5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607ef1e6584b8d956976e8a61fc31d58ab3fe9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
