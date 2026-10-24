# undocumentedScripts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:532f4259417a2dc6f11002dc9bceb6d6060053123eed520af1a8c23c74b518a6",
  "kind": "def",
  "lexical_name": "undocumentedScripts",
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
  "slug": "undocumentedscripts--c20855267c18cc37a83cd201",
  "source": {
    "blob": "bbebb11ba1907c4f84ceadb3f716161efd21c712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c20855267c18cc37a83cd201fb41880542d07cc7cf719203ed8ea7ba0ab8182f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:532f4259417a2dc6f11002dc9bceb6d6060053123eed520af1a8c23c74b518a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def undocumentedScripts (opts : Lean.Options) : IO Nat := do
  unless getLinterValue linter.allScriptsDocumented opts do return 0

  -- Retrieve all scripts (except for the `bench` directory).
  let allScripts ← (walkDir "scripts" fun p ↦ pure (p.components.getD 1 "" != "bench"))
  let allScripts := allScripts.erase ("scripts" / "bench")|>.erase ("scripts" / "README.md")
  -- Check if the README text contains each file enclosed in backticks.
  let readme : String ← IO.FS.readFile ("scripts" / "README.md")
  -- These are data files for linter exceptions: don't complain about these *for now*.
  let dataFiles := #["noshake.json", "nolints-style.txt"]
  -- For now, there are no scripts in sub-directories that should be documented.
  let fileNames := allScripts.map (·.fileName.get!)
  let undocumented := fileNames.filter fun script ↦
    !readme.containsSubstr s!"`{script}`" && !dataFiles.contains script
  if undocumented.size > 0 then
    IO.println s!"error: found {undocumented.size} undocumented script(s): \
      please describe the script(s) in 'scripts/README.md'\n  \
      {String.intercalate "," undocumented.toList}"
  return undocumented.size

/-- Implementation of the `lint-style` command line program. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variant9026d0730e48d31316535f213d399accf63c772859e52aea9d8568d6250e6218.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbebb11ba1907c4f84ceadb3f716161efd21c712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
