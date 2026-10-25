# DeferredCheckSite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a1bc12ce25f4d03b525af7d92e3468a7ec5e6eb85cc9ed814345a9d5fe06565",
  "kind": "inductive",
  "lexical_name": "DeferredCheckSite",
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
  "slug": "deferredchecksite--c96f3d8a6b5fc1b023b64f75",
  "source": {
    "blob": "03ff7225b14521c0596572614695f0b464ce3128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c96f3d8a6b5fc1b023b64f7595402de1cd2bef4b106f0854fcb7e15311b0b9b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a1bc12ce25f4d03b525af7d92e3468a7ec5e6eb85cc9ed814345a9d5fe06565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DeferredCheckSite where
  /-- The check was deferred in docstring of a declaration. -/
  | decl (name : Name)
  /-- The check was deferred from the `n`th module docstring of the module (0-indexed). -/
  | moduleDoc (n : Nat)
deriving Inhabited, Repr, BEq

/--
A recording of the fact that some kind of check could not be carried out when a docstring was
elaborated, due to some missing information that is expected to be available in the future. This is
used for forward references.

The type of the value in `check` selects the handler that carries out the check.

Source positions are not stored because they would shift with edits. Because deferred checks are
part of the public information of a module, this would lead to needless rebuilds. The docstring is
identified by `site`, the reference within it by `index`, and `sourceString` (the reference's source
text) gives readable error messages even without an accurate location.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeferredCheck/Variantb540c1e687ad51a8c6338f0d221fcded2aa41872927e3b023dcfdc648fddb170.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ff7225b14521c0596572614695f0b464ce3128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
