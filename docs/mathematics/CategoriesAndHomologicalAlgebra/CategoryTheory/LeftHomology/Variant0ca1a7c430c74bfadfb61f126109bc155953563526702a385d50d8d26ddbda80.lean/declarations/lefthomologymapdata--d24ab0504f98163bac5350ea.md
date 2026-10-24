# LeftHomologyMapData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45fbdf9d05b931f9d0c08afcaecdee9017d9a728a2158ddc8d6db8d9d4520bf2",
  "kind": "structure",
  "lexical_name": "LeftHomologyMapData",
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
  "slug": "lefthomologymapdata--d24ab0504f98163bac5350ea",
  "source": {
    "blob": "09103be0097f0884291ab0600425a78927802c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d24ab0504f98163bac5350ea010bcd123b259bcf7455a0012ee8afc51d873509",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45fbdf9d05b931f9d0c08afcaecdee9017d9a728a2158ddc8d6db8d9d4520bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LeftHomologyMapData where
  /-- the induced map on cycles -/
  φK : h₁.K ⟶ h₂.K
  /-- the induced map on left homology -/
  φH : h₁.H ⟶ h₂.H
  /-- commutation with `i` -/
  commi : φK ≫ h₂.i = h₁.i ≫ φ.τ₂ := by cat_disch
  /-- commutation with `f'` -/
  commf' : h₁.f' ≫ φK = φ.τ₁ ≫ h₂.f' := by cat_disch
  /-- commutation with `π` -/
  commπ : h₁.π ≫ φH = φK ≫ h₂.π := by cat_disch

namespace LeftHomologyMapData

attribute [reassoc (attr := simp)] commi commf' commπ

/-- The left homology map data associated to the zero morphism between two short complexes. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant0ca1a7c430c74bfadfb61f126109bc155953563526702a385d50d8d26ddbda80.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09103be0097f0884291ab0600425a78927802c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
