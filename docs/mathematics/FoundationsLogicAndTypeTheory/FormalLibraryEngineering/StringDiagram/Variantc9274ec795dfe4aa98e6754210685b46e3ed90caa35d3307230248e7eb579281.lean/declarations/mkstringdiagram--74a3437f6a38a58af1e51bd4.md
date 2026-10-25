# mkStringDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7b95040ea5222178e0b5f083ac5d709060cf973c84756de8782fffd5b41a6bb",
  "kind": "def",
  "lexical_name": "mkStringDiagram",
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
  "slug": "mkstringdiagram--74a3437f6a38a58af1e51bd4",
  "source": {
    "blob": "9d30be8e22f17eabecd45f9158b593aa56147ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74a3437f6a38a58af1e51bd4d564cd876999f92055dedfdc1c3ca4e2c6bde7a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7b95040ea5222178e0b5f083ac5d709060cf973c84756de8782fffd5b41a6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkStringDiagram (nodes : List (List Node)) (strands : List (List Strand)) :
    DiagramBuilderM PUnit := do
  /- Add 2-morphisms. -/
  for x in nodes.flatten do
    match x with
    | .atom _ => do addPenroseVar "Atom" x.toPenroseVar
    | .id _ => do addPenroseVar "Id" x.toPenroseVar
  /- Add constraints. -/
  for l in nodes do
    for (x₁, x₂) in pairs l do
      addInstruction s!"Left({x₁.toPenroseVar}, {x₂.toPenroseVar})"
  /- Add constraints. -/
  for (l₁, l₂) in pairs nodes do
    if let .some x₁ := l₁.head? then
      if let .some x₂ := l₂.head? then
        addInstruction s!"Above({x₁.toPenroseVar}, {x₂.toPenroseVar})"
  /- Add 1-morphisms as strings. -/
  for l in strands do
    for s in l do
      addConstructor "Mor1" s.toPenroseVar
        "MakeString" [s.startPoint.toPenroseVar, s.endPoint.toPenroseVar]

/-- Penrose dsl file for string diagrams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d30be8e22f17eabecd45f9158b593aa56147ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
