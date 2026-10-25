# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b33d476e5552e8f5dc64d54fb587980e50b6f513b2151aa70eb81da3271e9915",
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
  "slug": "instance--ce414ceb2fa395e298e6463e",
  "source": {
    "blob": "e758d6506c9cec68257393cdc16f79dc2dc4a86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce414ceb2fa395e298e6463e00de2ddb6186ad63edd486f8740cca99559ab776",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b33d476e5552e8f5dc64d54fb587980e50b6f513b2151aa70eb81da3271e9915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance [FamilyOut FacetOut facet α] : CoeDep Name facet (ModuleFacet α) :=
  ⟨facet, FamilyOut.fam_eq⟩

/-- The module's Lean source file. -/
builtin_facet lean : Module => FilePath

/-- The parsed module header of the module's source file. -/
builtin_facet header : Module => ModuleHeader

/--
The computed configuration of a module for Lean.

In the process, this facet will build all of a module's dependencies,
including transitive imports, plugins, and those specified by `needs`.
-/
builtin_facet setup : Module => ModuleSetup

/-- The complete dependency trace of a module (as used by a module build). -/
builtin_facet depTrace : Module => BuildTrace

/-- The complete hash of a module's build dependencies (e.g., imports, source, plugins). -/
builtin_facet depHash : Module => Hash

/--
This facet builds all of a module's dependencies,
including transitive imports, plugins, and those specified by `needs`.
-/
builtin_facet deps : Module => Opaque

/-- Information about the imports of a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Facets/Variant0cdc8ba9ac30fe5a51dec9d086b85e3803544dfa8c63ed8deee52efa3e7c9cd1.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e758d6506c9cec68257393cdc16f79dc2dc4a86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
