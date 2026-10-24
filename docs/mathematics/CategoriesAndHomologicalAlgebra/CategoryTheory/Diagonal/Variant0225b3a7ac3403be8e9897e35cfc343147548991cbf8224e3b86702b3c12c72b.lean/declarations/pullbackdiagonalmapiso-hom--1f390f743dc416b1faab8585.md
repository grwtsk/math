# pullbackDiagonalMapIso.hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:154b8ddc9bf367b34ca3d1e301466ff82e31a0b7220f5a14de561911581fd412",
  "kind": "abbrev",
  "lexical_name": "pullbackDiagonalMapIso.hom",
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
  "slug": "pullbackdiagonalmapiso-hom--1f390f743dc416b1faab8585",
  "source": {
    "blob": "243bc397d4264f483462c84b7c2cd3174f6fc42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f390f743dc416b1faab8585a3b830d0adf587e6ad7276ef00e68f8e53fcf32f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:154b8ddc9bf367b34ca3d1e301466ff82e31a0b7220f5a14de561911581fd412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev pullbackDiagonalMapIso.hom :
    pullback (diagonal f)
        (map (i₁ ≫ snd _ _) (i₂ ≫ snd _ _) f f (i₁ ≫ fst _ _) (i₂ ≫ fst _ _) i
          (by simp only [Category.assoc, condition])
          (by simp only [Category.assoc, condition])) ⟶
      pullback i₁ i₂ :=
  pullback.lift (pullback.snd _ _ ≫ pullback.fst _ _) (pullback.snd _ _ ≫ pullback.snd _ _) (by
  ext
  · simp only [Category.assoc, pullback_diagonal_map_snd_fst_fst,
      pullback_diagonal_map_snd_snd_fst]
  · simp only [Category.assoc, condition])

/-- The underlying inverse of `pullbackDiagonalIso` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant0225b3a7ac3403be8e9897e35cfc343147548991cbf8224e3b86702b3c12c72b.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243bc397d4264f483462c84b7c2cd3174f6fc42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
