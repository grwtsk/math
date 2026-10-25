# transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5334d2e2663f4f63ec1bb430041fdaf10223250dea9be21104ea0a33a02f7a8b",
  "kind": "def",
  "lexical_name": "transport",
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
  "slug": "transport--a91083b7ed2cb893497cdd7e",
  "source": {
    "blob": "02b70c19a4b706ef1649ced48fcd97f8f8f63b8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a7056447bb767e7/Variantc5546bf407fde452746768d26f8d24fd0f318978b7e8f5fbde511a353abcea87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a91083b7ed2cb893497cdd7ed836692756a68b08f2f785d140065b4e0554719b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a7056447bb767e7/Variantc5546bf407fde452746768d26f8d24fd0f318978b7e8f5fbde511a353abcea87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5334d2e2663f4f63ec1bb430041fdaf10223250dea9be21104ea0a33a02f7a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transport
    (equivalence : Element ≃ Other)
    (projection : MonoHierarchy Element) :
    MonoHierarchy Other where
  root := equivalence projection.root
  parent := fun element ↦
    (projection.parent (equivalence.symm element)).map equivalence
  siblingBefore := fun left right ↦
    projection.siblingBefore
      (equivalence.symm left) (equivalence.symm right)
  crossingResolution := fun left right ↦
    projection.crossingResolution
      (equivalence.symm left) (equivalence.symm right)
  contractionRepresentative := fun element ↦
    (projection.contractionRepresentative
      (equivalence.symm element)).map equivalence

end MonoHierarchy

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a7056447bb767e7/Variantc5546bf407fde452746768d26f8d24fd0f318978b7e8f5fbde511a353abcea87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A8a7056447bb767e7/Variantc5546bf407fde452746768d26f8d24fd0f318978b7e8f5fbde511a353abcea87.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b70c19a4b706ef1649ced48fcd97f8f8f63b8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
