# BoundedLatticeHomClass.toBiheytingHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35dd0fd4d2872c9a528da5db9d98a86fdad37ab52b2848fde38d036ab25e24fe",
  "kind": "instance",
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
  "slug": "boundedlatticehomclass-tobiheytinghomclass--3c0d986a438bf7ef3597a0db",
  "source": {
    "blob": "f6260ec97f87060c17dde8c9b357722645611959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 187,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a6275fa8106d8b63db664616bd38d7ded4cd5cbbd8bd32729bb3006413a30c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c0d986a438bf7ef3597a0db450f60a950204be8523d576b92dfb1dc56a20a65",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a6275fa8106d8b63db664616bd38d7ded4cd5cbbd8bd32729bb3006413a30c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35dd0fd4d2872c9a528da5db9d98a86fdad37ab52b2848fde38d036ab25e24fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance BoundedLatticeHomClass.toBiheytingHomClass [BooleanAlgebra α] [BooleanAlgebra β]
    [BoundedLatticeHomClass F α β] : BiheytingHomClass F α β :=
  { ‹BoundedLatticeHomClass F α β› with
    map_himp := fun f a b => by rw [himp_eq, himp_eq, map_sup, (isCompl_compl.map _).compl_eq]
    map_sdiff := fun f a b => by rw [sdiff_eq, sdiff_eq, map_inf, (isCompl_compl.map _).compl_eq] }

section HeytingAlgebra

open scoped symmDiff

variable [HeytingAlgebra α] [HeytingAlgebra β] [HeytingHomClass F α β] (f : F)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a6275fa8106d8b63db664616bd38d7ded4cd5cbbd8bd32729bb3006413a30c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a6275fa8106d8b63db664616bd38d7ded4cd5cbbd8bd32729bb3006413a30c7.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6260ec97f87060c17dde8c9b357722645611959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
