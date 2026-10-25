# inspectCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8c024a0fd80f908825575ceeb7b9bc9b49ad629da8a0ba2aed490f7c78dfa64",
  "kind": "def",
  "lexical_name": "inspectCore",
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
  "slug": "inspectcore--d0936dd4a604d121421c45c5",
  "source": {
    "blob": "a73a7fda7574bd542833e2d85c13c135a523432b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0936dd4a604d121421c45c505a4853eb9d9f560a8a5b88a2f418cb827831ce5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8c024a0fd80f908825575ceeb7b9bc9b49ad629da8a0ba2aed490f7c78dfa64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inspectCore
    (env : Environment)
    (name : Name)
    (info : ConstantInfo) : IO (String × Array Name × Option DeclarationRanges) := do
  let action : CoreM (String × Array Name × Option DeclarationRanges) := do
    let normalizedType ← (do return toString (← Meta.ppExpr info.type)).run'
    let axioms ← Lean.collectAxioms name
    let ranges ← Lean.findDeclarationRanges? name
    pure (normalizedType, axioms, ranges)
  action.toIO'
    { fileName := "<surface_refactor_protocol>", fileMap := default }
    { env := env }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceRefactorProtocolMain/Variantbbaff8932dabc7304480ce706c3b81f948c1ef6117473654a903e8b3dbb22cd3.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a73a7fda7574bd542833e2d85c13c135a523432b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
