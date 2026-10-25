# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d307b19ae35f0c33d852bfa1a7e7ec1e413cf073479d382c3fe32bcee3e697e",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--56a7ef0df1ec384a4c629cf1",
  "source": {
    "blob": "897dc165e21c4f9ccbb731a2d0042e16e883e74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 860,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a7ef0df1ec384a4c629cf1fa5886a5976202b540f2cefb71d1f6a101f32154",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d307b19ae35f0c33d852bfa1a7e7ec1e413cf073479d382c3fe32bcee3e697e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Config where
  /-- Make generated lemmas simp lemmas -/
  isSimp := true
  /-- Other simp-attributes to apply to generated lemmas.
  Attributes that are currently not simp-attributes are not supported. -/
  attrs : List Name := []
  /-- simplify the right-hand side of generated simp-lemmas using `dsimp, simp`. -/
  simpRhs := false
  /-- TransparencyMode used to reduce the type in order to detect whether it is a structure. -/
  typeMd := TransparencyMode.instances
  /-- TransparencyMode used to reduce the right-hand side in order to detect whether it is a
  constructor. Note: was `none` in Lean 3 -/
  rhsMd := TransparencyMode.reducible
  /-- Generated lemmas that are fully applied, i.e. generates equalities between applied functions.
  Set this to `false` to generate equalities between functions. -/
  fullyApplied := true
  /-- List of types in which we are not recursing to generate simplification lemmas.
  E.g. if we write `@[simps] def e : α × β ≃ β × α := ...` we will generate `e_apply` and not
  `e_apply_fst`. -/
  notRecursive := [`Prod, `PProd, `Opposite, `PreOpposite]
  /-- Output debug messages. Not used much, use `set_option simps.debug true` instead. -/
  debug := false
  deriving Inhabited

/-- Function elaborating `Config` -/
declare_command_config_elab elabSimpsConfig Config

/-- A common configuration for `@[simps]`: generate equalities between functions instead equalities
between fully applied Expressions. Replaced by `@[simps -fullyApplied]`. -/
@[deprecated "use `-fullyApplied` instead" (since := "2025-03-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2fe054449ccc83893b0489f5cb6a2908e9aa0c0b8dd270b5a3b6ae90d9db71dc.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `897dc165e21c4f9ccbb731a2d0042e16e883e74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
