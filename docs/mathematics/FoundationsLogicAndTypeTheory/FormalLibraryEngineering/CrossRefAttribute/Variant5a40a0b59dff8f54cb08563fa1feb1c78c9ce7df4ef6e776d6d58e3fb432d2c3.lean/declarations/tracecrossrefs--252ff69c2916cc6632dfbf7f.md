# traceCrossRefs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f43dccba258e602afb5d52db83fef0f90efdbbbeadb4dfa337780b66419b6f9f",
  "kind": "def",
  "lexical_name": "traceCrossRefs",
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
  "slug": "tracecrossrefs--252ff69c2916cc6632dfbf7f",
  "source": {
    "blob": "d0d3824e33ba434ed33cc7d6f7e5ff91baa799f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 577,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:252ff69c2916cc6632dfbf7f74a7f0c73a4de4abd1c31407393104e065486384",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f43dccba258e602afb5d52db83fef0f90efdbbbeadb4dfa337780b66419b6f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def traceCrossRefs (db : Database) (verbose : Bool := false) :
    Command.CommandElabM Unit := do
  let env ← getEnv
  let entries := env.getSortedCrossRefs |>.filter (·.database == db)
  if entries.isEmpty then logInfo "No tags found." else
  let mut msgs := #[m!""]
  for d in entries do
    let (parL, parR) := if d.comment.isEmpty then ("", "") else (" (", ")")
    let cmt := parL ++ d.comment ++ parR
    msgs := msgs.push
      m!"[{db.label} {d.tag}]({db.url d.tag}) \
        corresponds to declaration '{.ofConstName d.declName}'.{cmt}"
    if verbose then
      let dType := ((env.find? d.declName).getD default).type
      msgs := (msgs.push m!"{dType}").push ""
  let msg := MessageData.joinSep msgs.toList "\n"
  logInfo msg

/--
`#stacks_tags` retrieves all declarations that have the `stacks` attribute.

For each found declaration, it prints a line
```
'declaration_name' corresponds to tag 'declaration_tag'.
```
The variant `#stacks_tags!` also adds the theorem statement (for theorems)
or declaration type (for definitions, structures, instances, etc.) after each summary line.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d3824e33ba434ed33cc7d6f7e5ff91baa799f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
