# addPreDefAttributes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eb57650ae6f61324d2e4a699cd4743b8dd1dabd5e63a7d20a58b101a69313a2",
  "kind": "def",
  "lexical_name": "addPreDefAttributes",
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
  "slug": "addpredefattributes--f8636a81f4196fcfcb263728",
  "source": {
    "blob": "2517dc67f3cb6d028184e02e81f540ad2dca275b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutual/Variant1fef0b86956dd05f6a5c9c46366c29a1f3b763566bc3a0afbbf7f33a0822554a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8636a81f4196fcfcb2637281a8a4312dd41f7aef7cccda2a4d7be4c3c4fa1ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutual/Variant1fef0b86956dd05f6a5c9c46366c29a1f3b763566bc3a0afbbf7f33a0822554a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eb57650ae6f61324d2e4a699cd4743b8dd1dabd5e63a7d20a58b101a69313a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addPreDefAttributes (preDefs : Array PreDefinition) : TermElabM Unit := do
  /-
  Set irreducibility attribute, unless the user has requested a different setting.
  Must appen before `enableRealizationsForConst`, else the equation generation sees
  a wrong setting and creates bad `defEq` equations.
  -/
  for preDef in preDefs do
    unless preDef.kind.isTheorem do
      unless preDef.modifiers.attrs.any fun a =>
          a.name = `reducible || a.name = `semireducible ||
          a.name = `instance_reducible || a.name = `implicit_reducible do
        setIrreducibleAttribute preDef.declName

  for preDef in preDefs do
    saveEqnAffectingOptions preDef.declName

  /-
  It must happen in reverse order so that constants realized as part of the first decl
  have realizations for the other ones enabled
  -/
  for preDef in preDefs.reverse do
    enableRealizationsForConst preDef.declName

  for preDef in preDefs do
    applyAttributesOf #[preDef] AttributeApplicationTime.afterCompilation

end Lean.Elab.Mutual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutual/Variant1fef0b86956dd05f6a5c9c46366c29a1f3b763566bc3a0afbbf7f33a0822554a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutual/Variant1fef0b86956dd05f6a5c9c46366c29a1f3b763566bc3a0afbbf7f33a0822554a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2517dc67f3cb6d028184e02e81f540ad2dca275b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
