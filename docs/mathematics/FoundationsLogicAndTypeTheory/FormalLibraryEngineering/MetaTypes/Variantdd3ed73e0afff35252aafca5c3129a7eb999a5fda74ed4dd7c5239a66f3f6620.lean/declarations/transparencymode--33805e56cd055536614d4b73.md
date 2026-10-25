# TransparencyMode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd8f49e6e30e65af734fc746931f76471da421af8f7e4a921d776ded280be3ac",
  "kind": "inductive",
  "lexical_name": "TransparencyMode",
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
  "slug": "transparencymode--33805e56cd055536614d4b73",
  "source": {
    "blob": "ee6e90f302d63518c81c9ce10a29ee698533c31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33805e56cd055536614d4b7311dfa169c1f59eec8e2c254dc3408fef83d5f652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd8f49e6e30e65af734fc746931f76471da421af8f7e4a921d776ded280be3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TransparencyMode where
  /-- Unfolds all constants, even those tagged as `@[irreducible]`. -/
  | all
  /-- Unfolds all constants except those tagged as `@[irreducible]`. Used for type checking
  user-written terms where we expect the input to be correct and want to try hard. -/
  | default
  /-- Unfolds only constants tagged with the `@[reducible]` attribute. Used for speculative
  `isDefEq` in proof automation (`simp`, `rw`, type class resolution) where most checks fail
  and we must not try too hard. -/
  | reducible
  /-- Unfolds reducible constants and constants tagged with `@[instance_reducible]` (e.g. type
  class instances). Does *not* unfold `[implicit_reducible]`. -/
  | instances
  /-- Do not unfold anything. -/
  | none
  /--
  Unfolds reducible, `[instance_reducible]`, and `[implicit_reducible]` constants.
  Used for checking definitional equality of implicit and instance-implicit arguments.
  -/
  | implicit
  deriving Inhabited, BEq

/-- Which structure types should eta be used with? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6e90f302d63518c81c9ce10a29ee698533c31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
