# compileHeatEventLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9977fd5399ba8b3dc0fa19d18e6fc68f92910af06058d8ac50bc0a9b5032b3ae",
  "kind": "def",
  "lexical_name": "compileHeatEventLine",
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
  "slug": "compileheateventline--89019dd2267caed5a6379fb6",
  "source": {
    "blob": "c7eeb0fa8f0d51ec340c56553e722d14e56948db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89019dd2267caed5a6379fb634c40c62f02232512b755ffe28bacb393f67d9e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9977fd5399ba8b3dc0fa19d18e6fc68f92910af06058d8ac50bc0a9b5032b3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compileHeatEventLine
    (snapshot : FileSnapshot)
    (lineNo occurrence : Nat) : String :=
  let identity := snapshot.path ++ ":" ++ toString lineNo ++ ":" ++ toString occurrence
  "{" ++
    "\"module\":" ++ stringJson snapshot.path ++ "," ++
    "\"declaration\":" ++ stringJson ("presentation-use-line-" ++ toString lineNo) ++ "," ++
    "\"presentation_hash\":" ++ toString (finiteHash ("Presentation:" ++ identity)) ++ "," ++
    "\"heat_delta\":1," ++
    "\"reason\":" ++ stringJson "Presentation syntax or certificate reference" ++ "," ++
    "\"reducer_witness_hash\":" ++
      stringJson ("compile-heat-witness-" ++ toString (finiteHash identity)) ++ "," ++
    "\"authority_boundary\":" ++ stringJson "metadata-only" ++
  "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationSelfAnnealMain/Varianta269be5a93d64cb8d3fd03e116c8adf0cca37fbc873ab86eec31a6e418216e1d.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7eeb0fa8f0d51ec340c56553e722d14e56948db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
