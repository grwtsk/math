# BoundedLatticeHomClass.toBiheytingHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9918d7e81187a4504114d17ebb9e23cbe78b6903dad8529d85bf6a1704a5b937",
  "kind": "def",
  "lexical_name": "BoundedLatticeHomClass.toBiheytingHomClass",
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
  "slug": "boundedlatticehomclass-tobiheytinghomclass--138b443ff58ba6df24f61372",
  "source": {
    "blob": "6e6de8f6e8b65499f44e7e9833f9a980e3473fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant7e20a2bc1e322abc45aa513593ddf3739a7039b4c5dadca16c00ae8ae3f16936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:138b443ff58ba6df24f61372987cfc9dca92fa3f76e3407c5988903706422f63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant7e20a2bc1e322abc45aa513593ddf3739a7039b4c5dadca16c00ae8ae3f16936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9918d7e81187a4504114d17ebb9e23cbe78b6903dad8529d85bf6a1704a5b937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BoundedLatticeHomClass.toBiheytingHomClass [BooleanAlgebra α] [BooleanAlgebra β]
    [BoundedLatticeHomClass F α β] : BiheytingHomClass F α β :=
  { ‹BoundedLatticeHomClass F α β› with
    map_himp := fun f a b => by rw [himp_eq, himp_eq, map_sup, (isCompl_compl.map _).compl_eq]
    map_sdiff := fun f a b => by rw [sdiff_eq, sdiff_eq, map_inf, (isCompl_compl.map _).compl_eq] }
#align bounded_lattice_hom_class.to_biheyting_hom_class BoundedLatticeHomClass.toBiheytingHomClass

section HeytingAlgebra

variable [HeytingAlgebra α] [HeytingAlgebra β] [HeytingHomClass F α β] (f : F)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant7e20a2bc1e322abc45aa513593ddf3739a7039b4c5dadca16c00ae8ae3f16936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant7e20a2bc1e322abc45aa513593ddf3739a7039b4c5dadca16c00ae8ae3f16936.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6de8f6e8b65499f44e7e9833f9a980e3473fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
