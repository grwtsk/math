# ω₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6afcdc84675dead9145dd453c8fe937a0ad5e5d5d5aa96631f999a9b7a0e5c0e",
  "kind": "def",
  "lexical_name": "ω₁",
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
  "slug": "anonymous--49e1b9da6e5a54cb9e253769",
  "source": {
    "blob": "b513913c7d8f2853f1e63e26d86989204273082f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49e1b9da6e5a54cb9e2537692dd370ddaed4f24e34925a113bcdfde197e338a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6afcdc84675dead9145dd453c8fe937a0ad5e5d5d5aa96631f999a9b7a0e5c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ω₁ : ComposableArrows EInt 1 ⥤ C ⥤ C where
  obj D := t.eTruncLT.obj (D.obj 1) ⋙ t.eTruncGE.obj (D.obj 0)
  map φ := t.eTruncLT.map (φ.app 1) ◫ t.eTruncGE.map (φ.app 0)

variable [IsTriangulated C]

section

variable (a b c : EInt) (hab : a ≤ b) (hbc : b ≤ c)

open CategoryTheory.Functor in
/-- The connecting homomorphism (as a natural transformation) for the spectral
objects attached to the objects of a triangulated equipped with a t-structure. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant7d9a04b2e3a433e522b2f84763c2cfe6665cf05011e36e97a4bbbee54fd34fe7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b513913c7d8f2853f1e63e26d86989204273082f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
