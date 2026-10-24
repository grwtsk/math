# mapTriangleIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3b8d1a9dbf71a67e7c671725da8a11e09c1750a7b7d69cd6f1d28f3ed48a905",
  "kind": "def",
  "lexical_name": "mapTriangleIso",
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
  "slug": "maptriangleiso--d6695fcd190eb7516cbd1da9",
  "source": {
    "blob": "72a7dcbb4019c0cebe55d7f39308ad02735b86f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6695fcd190eb7516cbd1da9477bbc0a68a88f7db443cab9fab7bb0d33164fc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3b8d1a9dbf71a67e7c671725da8a11e09c1750a7b7d69cd6f1d28f3ed48a905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTriangleIso {F₁ F₂ : C ⥤ D} (e : F₁ ≅ F₂) [F₁.CommShift ℤ] [F₂.CommShift ℤ]
    [NatTrans.CommShift e.hom ℤ] : F₁.mapTriangle ≅ F₂.mapTriangle :=
  NatIso.ofComponents (fun T =>
    Triangle.isoMk _ _ (e.app _) (e.app _) (e.app _) (by simp) (by simp) (by
      dsimp
      simp only [assoc, NatTrans.shift_app_comm e.hom (1 : ℤ) T.obj₁,
        NatTrans.naturality_assoc])) (by aesop_cat)

end Additive

variable [HasZeroObject C] [HasZeroObject D] [HasZeroObject E]
  [Preadditive C] [Preadditive D] [Preadditive E]
  [∀ (n : ℤ), (shiftFunctor C n).Additive] [∀ (n : ℤ), (shiftFunctor D n).Additive]
  [∀ (n : ℤ), (shiftFunctor E n).Additive]
  [Pretriangulated C] [Pretriangulated D] [Pretriangulated E]

/-- A functor which commutes with the shift by `ℤ` is triangulated if
it sends distinguished triangles to distinguished triangles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a7dcbb4019c0cebe55d7f39308ad02735b86f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
