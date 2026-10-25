# initializeEnvExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:113f6f53fb4919f28e6f38f3dd4220a30e475e1778b4fff4f6e5ad93e6d37f61",
  "kind": "def",
  "lexical_name": "initializeEnvExt",
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
  "slug": "initializeenvext--7f8b8a5ded0d0fe3894ebc84",
  "source": {
    "blob": "e34f5f072bd6dfc548abe2cbac7afab579385a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f8b8a5ded0d0fe3894ebc84e31feb1060b948e7ced6afda499749859a7de340",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:113f6f53fb4919f28e6f38f3dd4220a30e475e1778b4fff4f6e5ad93e6d37f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initializeEnvExt (typeName : Name)
    (envExtName : Name := by exact decl_name%) : IO (EnvExt α) := do
  -- we prevent any deduplication in the DiscrTree
  have : BEq α := ⟨fun _ _ ↦ false⟩
  let insert kss v dt := kss.foldl (fun dt ks ↦ dt.insertKeyValue ks v) dt
  registerScopedEnvExtension {
    name := envExtName
    mkInitial := pure {}
    ofOLeanEntry := fun _ e@(_, n) ↦ return (e, ← evalDecl α typeName n)
    toOLeanEntry := (·.1)
    addEntry := fun state ((kss, _), ext) ↦
      { tree := insert kss ext state.tree }
  }

/-- Elaborate expression patterns into `DiscrTree` paths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variant8ba33929a29b8a090f5c050baae174874a44e2e43ebbc3903ef13129f0bfeb5a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e34f5f072bd6dfc548abe2cbac7afab579385a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
