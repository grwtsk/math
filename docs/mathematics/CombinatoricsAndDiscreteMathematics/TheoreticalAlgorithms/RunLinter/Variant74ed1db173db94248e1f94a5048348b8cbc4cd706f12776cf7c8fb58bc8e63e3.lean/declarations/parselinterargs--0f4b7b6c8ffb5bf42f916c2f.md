# parseLinterArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc78a06c91c7ba81a248ffd7f508c3aae693150940a9f9de1d1aeca3f53c04b8",
  "kind": "def",
  "lexical_name": "parseLinterArgs",
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
  "slug": "parselinterargs--0f4b7b6c8ffb5bf42f916c2f",
  "source": {
    "blob": "3e4797c2b75cfb35012f654cddb50ecaac15ffbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f4b7b6c8ffb5bf42f916c2fc2bc72f8b5172aca21115277dd2cc78a0d6d9fc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc78a06c91c7ba81a248ffd7f508c3aae693150940a9f9de1d1aeca3f53c04b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseLinterArgs (args : List String) :
    Except (List String) (LinterConfig × List Name) :=
  go {} [] args
where
  /-- Traverses the list, handling the non-flag elements as modules and erroring if parsing fails. -/
  go (parsed : LinterConfig) (mods: List Name) : List String → Except (List String) (LinterConfig × List Name)
    | arg :: rest =>
      if let some parsed := parseArg parsed arg then
        go parsed mods rest
      else
        match arg.toName with
        | .anonymous => Except.error [s!"could not parse argument '{arg}'"]
        | mod => go parsed (mod :: mods) rest
    | [] => Except.ok (parsed, mods.reverse)

  /-- Parses a single config argument. -/
  parseArg (parsed : LinterConfig) : String → Option LinterConfig
    | "--update"   => some { parsed with updateNoLints := true }
    | "--no-build" => some { parsed with noBuild := true }
    | "--trace"
    | "-v"         => some { parsed with trace := true }
    | _ => none

/--
Return an array of the modules to lint.

If `specifiedModules` is not empty, return an array containing only `specifiedModule`.
Otherwise, resolve the default root modules from the Lake workspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant74ed1db173db94248e1f94a5048348b8cbc4cd706f12776cf7c8fb58bc8e63e3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4797c2b75cfb35012f654cddb50ecaac15ffbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
