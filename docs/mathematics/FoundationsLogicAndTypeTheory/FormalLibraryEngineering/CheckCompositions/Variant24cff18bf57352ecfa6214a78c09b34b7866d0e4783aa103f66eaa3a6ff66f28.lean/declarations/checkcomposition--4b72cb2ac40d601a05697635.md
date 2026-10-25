# checkComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:645a1192d36f68b73cd6f7cddddc395691d9a949dc64a8b5a77e1b440ffa2580",
  "kind": "def",
  "lexical_name": "checkComposition",
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
  "slug": "checkcomposition--4b72cb2ac40d601a05697635",
  "source": {
    "blob": "49573382548bdca1fec0c1e981af033f13d10edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b72cb2ac40d601a05697635f1372c523de0e4e6d35acbe0f5a40e7f2a03c97f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:645a1192d36f68b73cd6f7cddddc395691d9a949dc64a8b5a77e1b440ffa2580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkComposition (e : Expr) : MetaM Unit := do
  match_expr e with
  | CategoryStruct.comp _ _ X Y Z f g =>
    match_expr ← inferType f with
    | Quiver.Hom _ _ X' Y' =>
      withReducibleAndInstances do
        if !(← isDefEq X' X) then
          logInfo m!"In composition\n  {e}\nthe source of\n  {f}\nis\n  {X'}\nbut should be\n  {X}"
        if !(← isDefEq Y' Y) then
          logInfo m!"In composition\n  {e}\nthe target of\n  {f}\nis\n  {Y'}\nbut should be\n  {Y}"
    | _ => throwError "In composition\n  {e}\nthe type of\n  {f}\nis not a morphism."
    match_expr ← inferType g with
    | Quiver.Hom _ _ Y' Z' =>
      withReducibleAndInstances do
        if !(← isDefEq Y' Y) then
          logInfo m!"In composition\n  {e}\nthe source of\n  {g}\nis\n  {Y'}\nbut should be\n  {Y}"
        if !(← isDefEq Z' Z) then
          logInfo m!"In composition\n  {e}\nthe target of\n  {g}\nis\n  {Z'}\nbut should be\n  {Z}"
    | _ => throwError "In composition\n  {e}\nthe type of\n  {g}\nis not a morphism."
  | _ => throwError "{e} is not a composition."

/-- Check the typing of categorical compositions in an expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variant24cff18bf57352ecfa6214a78c09b34b7866d0e4783aa103f66eaa3a6ff66f28.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49573382548bdca1fec0c1e981af033f13d10edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
