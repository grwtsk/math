# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29c76fd7193b59509b9c5f582b15353f5bff0187e2bb0096e32d4318894b68df",
  "kind": "syntax",
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
  "slug": "syntax--8134f6b206b07d0cbfc397aa",
  "source": {
    "blob": "695212454088b1e4dfc445eb740154841fdf2c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant1345118155059d354bddf69f94ca0be819474f2e30e08530a7af6d007dd368b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8134f6b206b07d0cbfc397aad9d7f67de818806f7a6fbded3a6c3bd3095edf2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant1345118155059d354bddf69f94ca0be819474f2e30e08530a7af6d007dd368b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29c76fd7193b59509b9c5f582b15353f5bff0187e2bb0096e32d4318894b68df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public syntax depSpec :=
  depName (verClause)? (fromClause)? (withClause)?

/--
Adds a new package dependency to the workspace. The general syntax is:

```
require ["<scope>" /] <pkg-name> [@ [git]? <version>]
  [from <source>] [with <options>]
```

The `from` clause tells Lake where to locate the dependency.
See the `fromClause` syntax documentation (e.g., hover over it) to see
the different forms this clause can take.

Without a `from` clause, Lake will lookup the package in the default
registry (i.e., Reservoir) and use the information there to download the
package at the requested `version`. The `scope` is used to disambiguate between
packages in the registry with the same `pkg-name`. In Reservoir, this scope
is the package owner (e.g., `leanprover` of `@leanprover/doc-gen4`).

The `with` clause specifies a `NameMap String` of Lake options
used to configure the dependency. This is equivalent to passing `-K`
options to the dependency on the command line.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant1345118155059d354bddf69f94ca0be819474f2e30e08530a7af6d007dd368b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant1345118155059d354bddf69f94ca0be819474f2e30e08530a7af6d007dd368b9.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695212454088b1e4dfc445eb740154841fdf2c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
