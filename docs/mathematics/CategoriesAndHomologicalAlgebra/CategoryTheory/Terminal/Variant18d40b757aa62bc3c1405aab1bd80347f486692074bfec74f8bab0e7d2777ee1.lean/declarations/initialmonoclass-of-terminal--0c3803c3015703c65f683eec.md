# InitialMonoClass.of_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc3983c-73c5-5cb6-4095-f8974e6e2efb",
  "kind": "theorem",
  "lexical_name": "InitialMonoClass.of_terminal",
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
  "slug": "initialmonoclass-of-terminal--0c3803c3015703c65f683eec",
  "source": {
    "blob": "ca1f3a67eaf5a1f469b8d945257e5662966c03ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant18d40b757aa62bc3c1405aab1bd80347f486692074bfec74f8bab0e7d2777ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c3803c3015703c65f683eec4104e999b7ca8c6308d41e479f62b227cd9a4be4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant18d40b757aa62bc3c1405aab1bd80347f486692074bfec74f8bab0e7d2777ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc3983c-73c5-5cb6-4095-f8974e6e2efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem InitialMonoClass.of_terminal [HasInitial C] [HasTerminal C] (h : Mono (initial.to (⊤_ C))) :
    InitialMonoClass C :=
  InitialMonoClass.of_isTerminal initialIsInitial terminalIsTerminal h

section Comparison

variable {D : Type u₂} [Category.{v₂} D] (G : C ⥤ D)

/-- The comparison morphism from the image of a terminal object to the terminal object in the target
category.
This is an isomorphism iff `G` preserves terminal objects, see
`CategoryTheory.Limits.PreservesTerminal.ofIsoComparison`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant18d40b757aa62bc3c1405aab1bd80347f486692074bfec74f8bab0e7d2777ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant18d40b757aa62bc3c1405aab1bd80347f486692074bfec74f8bab0e7d2777ee1.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca1f3a67eaf5a1f469b8d945257e5662966c03ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
