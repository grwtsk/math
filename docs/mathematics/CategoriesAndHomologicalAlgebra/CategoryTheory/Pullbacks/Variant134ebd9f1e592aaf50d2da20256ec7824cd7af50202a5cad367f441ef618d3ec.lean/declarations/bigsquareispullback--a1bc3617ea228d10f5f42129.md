# bigSquareIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15c42a29dc3cb1612209b1a784317b4312f8a1752b622aa4cb495bc3a5e9bb41",
  "kind": "def",
  "lexical_name": "bigSquareIsPullback",
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
  "slug": "bigsquareispullback--a1bc3617ea228d10f5f42129",
  "source": {
    "blob": "491c5ad64b6bb8914918c2875cb764857511420e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2039,
    "line": 2004,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1bc3617ea228d10f5f42129f21ccaaf346dc48776531b5571efabc2a861f9a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15c42a29dc3cb1612209b1a784317b4312f8a1752b622aa4cb495bc3a5e9bb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2004–2039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bigSquareIsPullback (H : IsLimit (PullbackCone.mk _ _ h₂))
    (H' : IsLimit (PullbackCone.mk _ _ h₁)) :
    IsLimit
      (PullbackCone.mk _ _
        (show i₁ ≫ g₁ ≫ g₂ = (f₁ ≫ f₂) ≫ i₃ by
          rw [← Category.assoc, h₁, Category.assoc, h₂, Category.assoc])) := by
  fapply PullbackCone.isLimitAux'
  intro s
  have : (s.fst ≫ g₁) ≫ g₂ = s.snd ≫ i₃ := by rw [← s.condition, Category.assoc]
  rcases PullbackCone.IsLimit.lift' H (s.fst ≫ g₁) s.snd this with ⟨l₁, hl₁, hl₁'⟩
  rcases PullbackCone.IsLimit.lift' H' s.fst l₁ hl₁.symm with ⟨l₂, hl₂, hl₂'⟩
  use l₂
  use hl₂
  use
    show l₂ ≫ f₁ ≫ f₂ = s.snd by
      rw [← hl₁', ← hl₂', Category.assoc]
      rfl
  intro m hm₁ hm₂
  apply PullbackCone.IsLimit.hom_ext H'
  · erw [hm₁, hl₂]
  · apply PullbackCone.IsLimit.hom_ext H
    · erw [Category.assoc, ← h₁, ← Category.assoc, hm₁, ← hl₂, Category.assoc, Category.assoc, h₁]
      rfl
    · erw [Category.assoc, hm₂, ← hl₁', ← hl₂']
#align category_theory.limits.big_square_is_pullback CategoryTheory.Limits.bigSquareIsPullback

/-- Given

X₁ - f₁ -> X₂ - f₂ -> X₃
|          |          |
i₁         i₂         i₃
∨          ∨          ∨
Y₁ - g₁ -> Y₂ - g₂ -> Y₃

Then the big square is a pushout if both the small squares are.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean#L2004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491c5ad64b6bb8914918c2875cb764857511420e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
