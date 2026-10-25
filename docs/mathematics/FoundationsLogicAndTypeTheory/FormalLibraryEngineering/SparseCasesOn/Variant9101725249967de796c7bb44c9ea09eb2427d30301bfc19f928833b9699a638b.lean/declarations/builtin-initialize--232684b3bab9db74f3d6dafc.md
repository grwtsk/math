# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88dbda2a49fa3e36bb33c72f0ec81b4a5a888548ea55011612c5d2d345d5173",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--232684b3bab9db74f3d6dafc",
  "source": {
    "blob": "83d5455a68d67cf311eb70ab2a007b459c7c00df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:232684b3bab9db74f3d6dafc5985673597af8cfd74e6cce52c2267cf3aaa769c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88dbda2a49fa3e36bb33c72f0ec81b4a5a888548ea55011612c5d2d345d5173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize sparseCasesOnInfoExt : MapDeclarationExtension SparseCasesOnInfo ←
  mkMapDeclarationExtension (exportEntriesFn := fun env s =>
    let all := s.toArray
    -- Do not export for non-exposed defs at exported/server levels
    let exported := s.filter (fun n _ => env.hasExposedBody n) |>.toArray
    { exported, server := exported, «private» := all })

/--
This module creates sparse variants of `casesOn` that have arms only for some of the constructors,
offering a catch-all.

The minor arguments come in the order of the given `ctors` array.

The catch-all provides a `Nat.hasNotBit mask x.ctorIdx` hypothesis to express that these constructors
were not matched. Using a single hypothesis like this, rather than many hypotheses of the form
`x.ctorIdx ≠ i`, is important to avoid quadratic overhead in code like match splitter generation.

This function is implemented with a simple call to `.rec`, i.e. no clever branching on the constructor
index. The compiler has native support for these sparse matches anyways, and kernel reduction would
not benefit from a more sophisticated implementation unless it has itself native support for
`.ctorIdx` and constructor elimination functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83d5455a68d67cf311eb70ab2a007b459c7c00df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
