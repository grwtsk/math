# elabPostprocessTraces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d8b9606b6bd7f5489dab1e06e0153fae24d1c28417a099cc00d3d476a82dc4c",
  "kind": "def",
  "lexical_name": "elabPostprocessTraces",
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
  "slug": "elabpostprocesstraces--7c8b47c4afe765042c4655d9",
  "source": {
    "blob": "c836af9dfaade68c6408111f2dfed5f834d2081e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c8b47c4afe765042c4655d92b2786fb63a19aad2537612cec597b790421280a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d8b9606b6bd7f5489dab1e06e0153fae24d1c28417a099cc00d3d476a82dc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def elabPostprocessTraces : CommandElab
  | `(command| postprocess_traces $post in $cmd) => do
    -- on errors in `post`, log them and fall back to the identity postprocessor so that `cmd`
    -- still elaborates, e.g. while the postprocessor term is being edited
    let post ← try
      evalPostprocessorTopLevel post
    catch ex =>
      logException ex
      pure fun roots => return roots
    for msg in ← runAndCollectMessages cmd do
      try
        if let some msg ← liftCoreM <| postprocessMessage post msg then
          modify fun st => { st with messages := st.messages.add msg }
      catch ex =>
        -- if the postprocessor fails at runtime, report the message unprocessed
        logException ex
        modify fun st => { st with messages := st.messages.add msg }
  | _ => throwUnsupportedSyntax

end Lean.Elab.PostprocessTraces

namespace Lean.PostprocessTraces

/--
A pattern selects the trace subtrees that an operation acts on (see `filter`, `hoist`, and
`expand`). Patterns are ordinary predicates: the built-in ones (such as `containsString`,
`unsuccessful`, or `minTimeMs`) can be combined with custom conditions in a `fun`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c836af9dfaade68c6408111f2dfed5f834d2081e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
