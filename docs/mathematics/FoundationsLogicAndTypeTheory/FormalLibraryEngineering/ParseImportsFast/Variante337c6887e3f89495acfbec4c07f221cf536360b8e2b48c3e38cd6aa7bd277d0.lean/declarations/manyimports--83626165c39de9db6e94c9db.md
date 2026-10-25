# manyImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:171aa68c0b710d9bcbec73023caef12a2222340efe7face5448490bf41102c28",
  "kind": "def",
  "lexical_name": "manyImports",
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
  "slug": "manyimports--83626165c39de9db6e94c9db",
  "source": {
    "blob": "0d3209370b98042e145daeaa0ca8887c2b6b344e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83626165c39de9db6e94c9db51da6509ab4834e2783d40b39838ebada8f75d2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:171aa68c0b710d9bcbec73023caef12a2222340efe7face5448490bf41102c28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] partial def manyImports (p : Parser) : Parser := fun input s =>
  let pos := s.pos
  let s := p input s
  if s.error? matches some .. then
    if s.pos == pos then s.clearError else s
  else if s.badModifier then
    let err := "cannot use 'public', 'meta', or 'all' without 'module'"
    {s with pos, badModifier := false, error? := some err}
  else
    manyImports p input s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3209370b98042e145daeaa0ca8887c2b6b344e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
