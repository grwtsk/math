# FamilyOfElements.Compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f86bc21e1c8dbe9b2664471eab65429f8192040d26e5bf454ba4f35e7da22a35",
  "kind": "def",
  "lexical_name": "FamilyOfElements.Compatible",
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
  "slug": "familyofelements-compatible--7a093222a49700c8c83f98c3",
  "source": {
    "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a093222a49700c8c83f98c3b0fe58cd27a14a01d7d5a100e4c9e9d05729229d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f86bc21e1c8dbe9b2664471eab65429f8192040d26e5bf454ba4f35e7da22a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FamilyOfElements.Compatible (x : FamilyOfElements P R) : Prop :=
  ∀ ⦃Y₁ Y₂ Z⦄ (g₁ : Z ⟶ Y₁) (g₂ : Z ⟶ Y₂) ⦃f₁ : Y₁ ⟶ X⦄ ⦃f₂ : Y₂ ⟶ X⦄ (h₁ : R f₁) (h₂ : R f₂),
    g₁ ≫ f₁ = g₂ ≫ f₂ → P.map g₁.op (x f₁ h₁) = P.map g₂.op (x f₂ h₂)

/--
If the category `C` has pullbacks, this is an alternative condition for a family of elements to be
compatible: For any `f : Y ⟶ X` and `g : Z ⟶ X` in the presieve `R`, the restriction of the
given elements for `f` and `g` to the pullback agree.
This is equivalent to being compatible (provided `C` has pullbacks), shown in
`pullbackCompatible_iff`.

This is the definition for a "matching" family given in [MM92], Chapter III, Section 4,
Equation (5). Viewing the type `FamilyOfElements` as the middle object of the fork in
https://stacks.math.columbia.edu/tag/00VM, this condition expresses that `pr₀* (x) = pr₁* (x)`,
using the notation defined there.

For a more explicit version in the case where `R` is of the form `Presieve.ofArrows`, see
`CategoryTheory.Presieve.Arrows.PullbackCompatible`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
