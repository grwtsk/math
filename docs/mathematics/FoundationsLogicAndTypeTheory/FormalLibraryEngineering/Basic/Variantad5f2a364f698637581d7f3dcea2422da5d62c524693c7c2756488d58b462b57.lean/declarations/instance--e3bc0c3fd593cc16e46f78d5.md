# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a322cbd0e8687ba974189ea4b3d0074f9b7224009b7791fc851458ce916360",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e3bc0c3fd593cc16e46f78d5",
  "source": {
    "blob": "8d66d28a07acca798415d7647d96223c00662948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3bc0c3fd593cc16e46f78d5f0869a8fbb53ffa77ce5d97cc8f05e5d45e6a388",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1a322cbd0e8687ba974189ea4b3d0074f9b7224009b7791fc851458ce916360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (α) [BEq α] [LawfulBEq α] : LawfulBEq (Option α) where
  eq_of_beq {x y h} := by
    match x, y with
    | some x, some y => rw [LawfulBEq.eq_of_beq (α := α) h]
    | none, none => rfl

/--
The minimum of two optional values, with `none` treated as the least element. This function is
usually accessed through the `Min (Option α)` instance, rather than directly.

Prior to `nightly-2025-02-27`, `none` was treated as the greatest element, so
`min none (some x) = min (some x) none = some x`.

Examples:
 * `Option.min (some 2) (some 5) = some 2`
 * `Option.min (some 5) (some 2) = some 2`
 * `Option.min (some 2) none = none`
 * `Option.min none (some 5) = none`
 * `Option.min none none = none`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d66d28a07acca798415d7647d96223c00662948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
