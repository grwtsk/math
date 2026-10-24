# mk_of_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14d1d76dcf525658315604fc992ec6514de694d1d3243b82b4b412bda63c0c52",
  "kind": "def",
  "lexical_name": "mk_of_isPullback",
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
  "slug": "mk-of-ispullback--d4a195d7c468964f3dc10c81",
  "source": {
    "blob": "943b7af0295d7d090cae223dc2c9935af7c8d1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a195d7c468964f3dc10c8153a44d92df8c5ef024cff53f329b901f9bf00ab9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14d1d76dcf525658315604fc992ec6514de694d1d3243b82b4b412bda63c0c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mk_of_isPullback (sq : Square C) [Mono sq.f₂₄] [Mono sq.f₃₄]
    (h₁ : sq.IsPullback) (h₂ : Sieve.ofTwoArrows sq.f₂₄ sq.f₃₄ ∈ J sq.X₄) :
    J.MayerVietorisSquare :=
  have : Mono sq.f₁₃ := h₁.mono_f₁₃
  mk' sq (fun F ↦ by
    apply Square.IsPullback.mk
    refine PullbackCone.IsLimit.mk _
      (fun s ↦ F.2.amalgamateOfArrows _ h₂
        (fun j ↦ WalkingPair.casesOn j s.fst s.snd)
        (fun W ↦ by
          rintro (_|_) (_|_) a b fac
          · obtain rfl : a = b := by simpa only [← cancel_mono sq.f₂₄] using fac
            rfl
          · obtain ⟨φ, rfl, rfl⟩ := PullbackCone.IsLimit.lift' h₁.isLimit _ _ fac
            simpa using s.condition =≫ F.val.map φ.op
          · obtain ⟨φ, rfl, rfl⟩ := PullbackCone.IsLimit.lift' h₁.isLimit _ _ fac.symm
            simpa using s.condition.symm =≫ F.val.map φ.op
          · obtain rfl : a = b := by simpa only [← cancel_mono sq.f₃₄] using fac
            rfl)) (fun _ ↦ ?_) (fun _ ↦ ?_) (fun s m hm₁ hm₂ ↦ ?_)
    · exact F.2.amalgamateOfArrows_map _ _ _ _ WalkingPair.left
    · exact F.2.amalgamateOfArrows_map _ _ _ _ WalkingPair.right
    · apply F.2.hom_ext_ofArrows _ h₂
      rintro (_|_)
      · rw [F.2.amalgamateOfArrows_map _ _ _ _ WalkingPair.left]
        exact hm₁
      · rw [F.2.amalgamateOfArrows_map _ _ _ _ WalkingPair.right]
        exact hm₂)

variable (S : J.MayerVietorisSquare)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943b7af0295d7d090cae223dc2c9935af7c8d1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
