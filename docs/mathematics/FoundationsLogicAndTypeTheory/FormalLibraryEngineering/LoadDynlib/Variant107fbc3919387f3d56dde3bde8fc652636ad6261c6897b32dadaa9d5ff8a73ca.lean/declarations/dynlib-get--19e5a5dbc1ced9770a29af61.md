# Dynlib.get?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4367ffbb6a4388ef48e37000e32ef2430ea735fb63cedc76d0a9bebcb619f50",
  "kind": "opaque",
  "lexical_name": "Dynlib.get?",
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
  "slug": "dynlib-get--19e5a5dbc1ced9770a29af61",
  "source": {
    "blob": "ab372bed6ba2526fd9670bcc5bec69ec2a00d24e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19e5a5dbc1ced9770a29af61d85e6cf5f6093e00fb154eff6162cc30706012b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4367ffbb6a4388ef48e37000e32ef2430ea735fb63cedc76d0a9bebcb619f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque Dynlib.get? (dynlib : @& Dynlib) (sym : @& String) : Option dynlib.Symbol

/--
Runs a module initializer function.
The symbol should have the signature `(builtin : Bool) → IO Unit`
(e.g., `initialize_Foo(uint8_t builtin)`).

This function is unsafe because there is no guarantee the symbol has the
expected signature. An invalid symbol can thus produce undefined behavior.
Furthermore, if the initializer introduces pointers (e.g., function closures)
from the dynamic library into the global state, future garbage collection of
the library will produce undefined behavior. In such cases, garbage collection
of the dynamic library can be prevented via `Runtime.markPersistent` or
`Runtime.forget`.
-/
@[extern "lean_dynlib_symbol_run_as_init"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab372bed6ba2526fd9670bcc5bec69ec2a00d24e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
