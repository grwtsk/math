# max_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac8e66f4-b4c2-a6f0-eeaf-055d6ec63018",
  "kind": "theorem",
  "lexical_name": "max_apply",
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
  "slug": "max-apply--859aae1ea87527bb05f5a540",
  "source": {
    "blob": "07e8b425bc4f4da5fe440585fe36ada95785d862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859aae1ea87527bb05f5a54054f8a1fb95d8d0c020a5258957121e49651d9077",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac8e66f4-b4c2-a6f0-eeaf-055d6ec63018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem max_apply [LE β] [DecidableLE β] [Max β] [LawfulOrderLeftLeaningMax β]
    {f : α → β} {x y : α} : max (f x) (f y) = f (maxOn f x y) := by
  letI : LE β := (inferInstance : LE β).opposite
  letI : Min β := (inferInstance : Max β).oppositeMin
  simpa [Max.min_oppositeMin] using! min_apply (f := f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant4eca2b086936cb2ef8f270254f5278499f6780f81d6540969371c3af3cef6a34.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07e8b425bc4f4da5fe440585fe36ada95785d862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
