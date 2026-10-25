# AttributeImplCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe1f93b543b85672c72b0ceab6d26936f7e6feba395e11f8ed79c0fc6ebc971c",
  "kind": "structure",
  "lexical_name": "AttributeImplCore",
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
  "slug": "attributeimplcore--89b39223efff77e03a370fbc",
  "source": {
    "blob": "a0dedc7f44f57f9d8b74d6705b30ebae22a11f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89b39223efff77e03a370fbcb35d60d230e7b9694dba17a4c462ed8ab559ccdb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe1f93b543b85672c72b0ceab6d26936f7e6feba395e11f8ed79c0fc6ebc971c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AttributeImplCore where
  /-- This is used as the target for go-to-definition queries for simple attributes -/
  ref : Name := by exact decl_name%
  name : Name
  descr : String
  applicationTime := AttributeApplicationTime.afterTypeChecking
  deriving Inhabited

/-- You can tag attributes with the 'local' or 'scoped' kind.
For example: `attribute [local myattr, scoped yourattr, theirattr]`.

This is used to indicate how an attribute should be scoped.
- local means that the attribute should only be applied in the current scope and forgotten once the current section, namespace, or file is closed.
- scoped means that the attribute should only be applied while the namespace is open.
- global means that the attribute should always be applied.

Note that the attribute handler (`AttributeImpl.add`) is responsible for interpreting the kind and
making sure that these kinds are respected.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0dedc7f44f57f9d8b74d6705b30ebae22a11f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
