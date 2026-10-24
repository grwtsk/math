# parseLinterArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25feffca94b03a4c98eb78ae8738483b68a494fb1ac6ec2562008c55a3ff3b3",
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
  "slug": "parselinterargs--fc4c9e269b049de3b356818c",
  "source": {
    "blob": "dbed3a7b1bdccc7b345c6c5a9e030c24eca70c40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc4c9e269b049de3b356818c46af8af2c2e25ac310fcb3a68cf65e76355ff593",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a25feffca94b03a4c98eb78ae8738483b68a494fb1ac6ec2562008c55a3ff3b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–88.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RunLinter/Variant24ee54cb7f38734970b970406ad75baf7aae7a8889b939d13f7b5a8c5f20556a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbed3a7b1bdccc7b345c6c5a9e030c24eca70c40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
