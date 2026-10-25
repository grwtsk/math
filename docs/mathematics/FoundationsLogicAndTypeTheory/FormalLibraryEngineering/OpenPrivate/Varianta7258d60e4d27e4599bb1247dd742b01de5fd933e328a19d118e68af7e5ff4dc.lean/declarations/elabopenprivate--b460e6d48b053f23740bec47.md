# elabOpenPrivate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:301618d1b4cd1ac5339c447c075292e7bebc176f5198e7170319efa50849cb07",
  "kind": "def",
  "lexical_name": "elabOpenPrivate",
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
  "slug": "elabopenprivate--b460e6d48b053f23740bec47",
  "source": {
    "blob": "cae8e3d2256195c7441271608174bcb5b76d3c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b460e6d48b053f23740bec4796e629c8079a26996a319b6630c51b20ed464bae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:301618d1b4cd1ac5339c447c075292e7bebc176f5198e7170319efa50849cb07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab openPrivate] def elabOpenPrivate : CommandElab
| `(open private $ids* $[in $tgts*]? $[from $mods*]?) =>
  elabOpenPrivateLike ids tgts mods fun c _ _ => pure c
| _ => throwUnsupportedSyntax

/--
The command `export private a b c in foo bar` is similar to `open private`, but instead of opening
them in the current scope it will create public aliases to the private definition. The definition
will exist at exactly the original location and name, as if the `private` keyword was not used
originally.

It will also open the newly created alias definition under the provided short name, like
`open private`.
It is also possible to specify the module instead with
`export private a b c from Other.Module`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae8e3d2256195c7441271608174bcb5b76d3c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
