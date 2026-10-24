# HasGoodTrifunctor₁₂Obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:694ceb85534f67d176996a65a51de1d9f101b4632aa6ea2c06a2d5ebc4bfa62d",
  "kind": "abbrev",
  "lexical_name": "HasGoodTrifunctor₁₂Obj",
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
  "slug": "hasgoodtrifunctor-obj--2160cb0f766b66af87381a95",
  "source": {
    "blob": "12aac480ca3bddf76d84604c890db4a12739265e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2160cb0f766b66af87381a957b99af525faf6fa3e6ebf33d6f0e2a3153a58613",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:694ceb85534f67d176996a65a51de1d9f101b4632aa6ea2c06a2d5ebc4bfa62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HasGoodTrifunctor₁₂Obj :=
  GradedObject.HasGoodTrifunctor₁₂Obj F₁₂ G
    (ComplexShape.ρ₁₂ c₁ c₂ c₃ c₁₂ c₄) K₁.X K₂.X K₃.X

variable (F G₂₃) in
/-- Given bifunctors `F : C₁ ⥤ C₂₃ ⥤ C₄`, `G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃`, homological complexes
`K₁ : HomologicalComplex C₁ c₁`, `K₂ : HomologicalComplex C₂ c₂` and
`K₃ : HomologicalComplex C₃ c₃`, and complexes shapes `c₁₂`, `c₂₃`, `c₄`
with `ComplexShape.Associative c₁ c₂ c₃ c₁₂ c₂₃ c₄`, this asserts that for
all `i₁ : ι₁` and `i₂₃ : ι₂₃`, the functor `F(K₁.X i₁, _)` commutes with
the coproducts of the `G₂₃(K₂.X i₂, K₃.X i₃)`
such that `π c₂ c₃ c₂₃ ⟨i₂, i₃⟩ = i₂₃`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12aac480ca3bddf76d84604c890db4a12739265e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
