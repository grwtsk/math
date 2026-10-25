# withAllTransparencySyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:292ea74717a4badf4cfd4c236daaeee545cbc23d2702e53241a5446d3ef33d0a",
  "kind": "def",
  "lexical_name": "withAllTransparencySyntax",
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
  "slug": "withalltransparencysyntax--76ddc9de0868f665d2c15bbb",
  "source": {
    "blob": "4281b6146c35363d6674c987e20347ed25e5c5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta26bd5d4c47366f73bf812b30470f53e4fa5cb3bde13ef2f563d5117aae8dce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76ddc9de0868f665d2c15bbb7cff6c5bccfcb2d053005201fc505dafd087d61c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta26bd5d4c47366f73bf812b30470f53e4fa5cb3bde13ef2f563d5117aae8dce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:292ea74717a4badf4cfd4c236daaeee545cbc23d2702e53241a5446d3ef33d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def withAllTransparencySyntax (md : TransparencyMode) (k : TSyntax `tactic) :
    TSyntax `tactic :=
  match md with
  | .all  => Unhygienic.run `(tactic| with_unfolding_all $k:tactic)
  | _     => k

end TransparencySyntax

/--
Register a "Try this" suggestion for a tactic sequence.

It works when the tactic to replace appears on its own line:

```lean
by
  aesop?
```

It doesn't work (i.e., the suggestion will appear but in the wrong place) when
the tactic to replace is preceded by other text on the same line:

```lean
have x := by aesop?
```

The `Try this:` suggestion in the infoview is not correctly formatted, but
there's nothing we can do about this at the moment.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta26bd5d4c47366f73bf812b30470f53e4fa5cb3bde13ef2f563d5117aae8dce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta26bd5d4c47366f73bf812b30470f53e4fa5cb3bde13ef2f563d5117aae8dce7.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4281b6146c35363d6674c987e20347ed25e5c5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
