# withClassInstDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:516641722f27018c21759060719e134f7ce46948e687a2732b21234000590dbf",
  "kind": "def",
  "lexical_name": "withClassInstDeps",
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
  "slug": "withclassinstdeps--8e4c57c4a83679d6ab169cfc",
  "source": {
    "blob": "f4418b7c720fd82c36fb8ea145ebb88683620284",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e4c57c4a83679d6ab169cfc9f12ffe348d41780d8ca16f53d71046386461108",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:516641722f27018c21759060719e134f7ce46948e687a2732b21234000590dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withClassInstDeps (className : Name) (type : Expr)
    (extraDeps : Expr → TermElabM (Array Expr))
    (mkCmd : Expr → TermElabM Command) :
    CommandElabM Unit := do
  let types ← liftTermElabM <| planDerivation className type extraDeps
  let env ← getEnv
  for type' in types do
    let cmd ← liftTermElabM do
      try
        withFreshMacroScope (mkCmd type')
      catch ex =>
        trace[Elab.ConfigEval] m!"failure deriving instance for `{type'}`: {ex.toMessageData}"
        setEnv env
        throw ex
    elabCommand cmd
    trace[Elab.ConfigEval] m!"added instance of {.ofConstName className} for  `{type'}`"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4418b7c720fd82c36fb8ea145ebb88683620284` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
