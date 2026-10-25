# etaStructReduce

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2edb3a4140fe8649d5b404a8b6989dd980dff648c917bff7a5e8d69e43bcb228",
  "kind": "def",
  "lexical_name": "etaStructReduce",
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
  "slug": "etastructreduce--28c7a54c2965012868ba9f24",
  "source": {
    "blob": "131b774c312459c025a2c4021f69ec6cb0b02045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28c7a54c2965012868ba9f245081587b08ee6de32f0a9623625433301c59c392",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2edb3a4140fe8649d5b404a8b6989dd980dff648c917bff7a5e8d69e43bcb228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaStructReduce (e : Expr) (p : Name → Bool) : MetaM Expr := do
  let e ← instantiateMVars e
  Meta.transform e (post := fun e => do
    if let some e ← etaStruct? e p then
      return .done e
    else
      return .continue)

/--
Instantiates the default value given by the default value function `defaultFn`.
- `defaultFn` is the default value function returned by `Lean.getEffectiveDefaultFnForField?` or `Lean.getDefaultFnForField?`.
- `levels?` is the list of levels to use, and otherwise the levels are inferred.
- `params` is the list of structure parameters. These are assumed to be correct for the given levels.
- `fieldVal?` is a function for getting fields for values, if they exist.

If successful, returns a set of fields used and the resulting default value.
Success is expected. Callers should do metacontext backtracking themselves if needed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131b774c312459c025a2c4021f69ec6cb0b02045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
