# NoopConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44e72f9fb60f40cba8bcce6a0e9f2fe8b83b02e8a1dbfa2ff6700c1ea5f0cd22",
  "kind": "structure",
  "lexical_name": "NoopConfig",
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
  "slug": "noopconfig--ec7ae2bdde95117cd9885ef6",
  "source": {
    "blob": "39c9ee5b08594f1bed4fdeea09cb995f3187d2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantc7a2827cafdcfd98ce9dbb24cc4a24df2905d927f599dbeeb0db23af972fe21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec7ae2bdde95117cd9885ef642e4820fe4158e5381921f333e08d9818b4abbaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantc7a2827cafdcfd98ce9dbb24cc4a24df2905d927f599dbeeb0db23af972fe21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44e72f9fb60f40cba8bcce6a0e9f2fe8b83b02e8a1dbfa2ff6700c1ea5f0cd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NoopConfig extends Config where
  -- Disable splitting
  splits := 0
  -- We don't override the various `splitMatch` / `splitIte` settings separately.

  -- Disable e-matching
  ematch := 0
  -- We don't override `matchEqs` separately.

  -- Disable extensionality
  ext       := false
  extAll    := false
  etaStruct := false
  funext    := false
  funCC     := false

  -- Disable all solver modules
  ring      := false
  linarith  := false
  lia       := false
  ac        := false
  order     := false

  -- Disable model-based theory combination
  mbtc      := false

/--
A `grind` configuration that only uses `cutsat`, splitting, and the `@[lia]` lemma set.

Note: `cutsat` benefits from some amount of instantiation, e.g. `Nat.max_def`.
Lemmas tagged with the `@[lia]` attribute are instantiated via E-matching when running
`lia`, while the much larger `@[grind]` lemma set is left disabled. Tag lemmas with
`@[lia =] theorem ...` (or `attribute [lia =] ...`) to add them to this set.
-/
-- This is a `structure` rather than `def` so we can use `declare_config_elab`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantc7a2827cafdcfd98ce9dbb24cc4a24df2905d927f599dbeeb0db23af972fe21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variantc7a2827cafdcfd98ce9dbb24cc4a24df2905d927f599dbeeb0db23af972fe21f.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c9ee5b08594f1bed4fdeea09cb995f3187d2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
