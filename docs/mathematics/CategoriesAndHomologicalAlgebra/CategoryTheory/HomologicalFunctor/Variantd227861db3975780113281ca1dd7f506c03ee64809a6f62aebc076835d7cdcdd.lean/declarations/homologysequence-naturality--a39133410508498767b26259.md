# homologySequenceδ_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb65f9d2-24f8-83a3-2673-91414fb175fd",
  "kind": "lemma",
  "lexical_name": "homologySequenceδ_naturality",
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
  "slug": "homologysequence-naturality--a39133410508498767b26259",
  "source": {
    "blob": "3dbc67a8b1a4bc4ef9928fe78e75720c5b32df5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39133410508498767b2625973a0581523686534ac879fae4e3fc7d27c628ebd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb65f9d2-24f8-83a3-2673-91414fb175fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologySequenceδ_naturality
    [F.ShiftSequence ℤ] (T T' : Triangle C) (φ : T ⟶ T') (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) :
    (F.shift n₀).map φ.hom₃ ≫ F.homologySequenceδ T' n₀ n₁ h =
      F.homologySequenceδ T n₀ n₁ h ≫ (F.shift n₁).map φ.hom₁ := by
  dsimp only [homologySequenceδ]
  rw [← shiftMap_comp', ← φ.comm₃, shiftMap_comp]

variable (T)
variable [HasZeroObject C] [Preadditive C] [∀ (n : ℤ), (CategoryTheory.shiftFunctor C n).Additive]
  [Pretriangulated C] [Abelian A] [F.IsHomological]
variable [F.ShiftSequence ℤ] (T T' : Triangle C) (hT : T ∈ distTriang C)
  (hT' : T' ∈ distTriang C) (φ : T ⟶ T') (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁)

section
include hT
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dbc67a8b1a4bc4ef9928fe78e75720c5b32df5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
