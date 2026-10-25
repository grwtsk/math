# toTacticSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954e68ad5157b4c4edbb014ff7052d559619ed8d017da5e679b50d92fa4a913d",
  "kind": "def",
  "lexical_name": "toTacticSuggestions",
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
  "slug": "totacticsuggestions--c1780d95f692dfce4311c298",
  "source": {
    "blob": "ed8303031cebba863b5883906b9f4e53589c0b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1780d95f692dfce4311c2989feb54f1e31e712696cf9ae1859d0b0d51b70072",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:954e68ad5157b4c4edbb014ff7052d559619ed8d017da5e679b50d92fa4a913d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTacticSuggestions (sr : SearchResult) : Array TryThis.Suggestion :=
  match sr.type? with
  | some type => #[{suggestion := s!"apply {sr.name}"},
        {suggestion := s!"have : {type} := {sr.name}"},
        {suggestion := s!"rw [{sr.name}]"},
        {suggestion := s!"rw [← {sr.name}]" }]
  | none => #[]

end SearchResult


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant46f538b08d849f772f160369b803c85fbb81671867f211b1df4682a81dbc0ef3.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8303031cebba863b5883906b9f4e53589c0b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
