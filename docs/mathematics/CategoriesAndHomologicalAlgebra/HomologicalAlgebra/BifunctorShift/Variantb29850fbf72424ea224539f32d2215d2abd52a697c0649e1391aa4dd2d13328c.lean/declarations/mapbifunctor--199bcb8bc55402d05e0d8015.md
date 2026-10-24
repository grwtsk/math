# mapBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1514e092205ebf274b058b9186aaea0a026ba6078741f008478f54a0b4f85b26",
  "kind": "abbrev",
  "lexical_name": "mapBifunctor",
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
  "slug": "mapbifunctor--199bcb8bc55402d05e0d8015",
  "source": {
    "blob": "c465a0ba0e1a83dca27359dc1087c3ddfc1051d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:199bcb8bc55402d05e0d801580a75f3f00fbf34f290b153a713903d1a8b50a66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1514e092205ebf274b058b9186aaea0a026ba6078741f008478f54a0b4f85b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev mapBifunctor [HasMapBifunctor K₁ K₂ F] : CochainComplex D ℤ :=
  HomologicalComplex.mapBifunctor K₁ K₂ F (ComplexShape.up ℤ)

/-- The inclusion of a summand `(F.obj (K₁.X n₁)).obj (K₂.X n₂) ⟶ (mapBifunctor K₁ K₂ F).X n`
of the total cochain complex when `n₁ + n₂ = n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c465a0ba0e1a83dca27359dc1087c3ddfc1051d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
