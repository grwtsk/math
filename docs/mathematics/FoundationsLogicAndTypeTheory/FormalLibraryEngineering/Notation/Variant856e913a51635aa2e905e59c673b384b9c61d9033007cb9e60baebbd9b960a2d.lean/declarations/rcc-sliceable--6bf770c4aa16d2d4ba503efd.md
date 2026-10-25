# Rcc.Sliceable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58e306c084c3ccf388cdb61ae94363d42ab2fef690760ac86b7ce7a1e3c835ac",
  "kind": "class",
  "lexical_name": "Rcc.Sliceable",
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
  "slug": "rcc-sliceable--6bf770c4aa16d2d4ba503efd",
  "source": {
    "blob": "5a35563d5c329ee799783d4f8bae4cee19e797a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf770c4aa16d2d4ba503efde3cb6bd0a6e049084455e1c00b87a6162011933f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58e306c084c3ccf388cdb61ae94363d42ab2fef690760ac86b7ce7a1e3c835ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Rcc.Sliceable (α : Type u) (β : outParam (Type v)) (γ : outParam (Type w)) where
  /--
  Slices {name}`carrier` from {lean}`range.lower` to {lean}`range.upper`, both inclusive.
  -/
  mkSlice (carrier : α) (range : Rcc β) : γ

/--
This typeclass indicates how to obtain slices of elements of {lit}`α` over ranges in the index type
{lit}`β`, the ranges being left-closed right-open.

The type of the resulting slices is {lit}`γ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant856e913a51635aa2e905e59c673b384b9c61d9033007cb9e60baebbd9b960a2d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a35563d5c329ee799783d4f8bae4cee19e797a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
