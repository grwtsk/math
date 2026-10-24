# AlgebraicIndependent.isTranscendenceBasis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "796bd3316b5908a96295ffcc654473c7cd9e0401",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b43bf3a6a1073ee2c78218695730e3f553217c1688211fe112852b6fc46f6be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73353317-0ef8-500a-42c0-65f78c8bbdbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32ca493f-4aff-dbc0-f902-a570f962ec4c",
  "kind": "theorem",
  "lexical_name": "AlgebraicIndependent.isTranscendenceBasis_iff",
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
  "slug": "algebraicindependent-istranscendencebasis-iff--d992c98d81996feee153c945",
  "source": {
    "blob": "796bd3316b5908a96295ffcc654473c7cd9e0401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 518,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant1b43bf3a6a1073ee2c78218695730e3f553217c1688211fe112852b6fc46f6be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d992c98d81996feee153c945461342afafbc3bdf7aba12226a8dd03b037cc82a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant1b43bf3a6a1073ee2c78218695730e3f553217c1688211fe112852b6fc46f6be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ca493f-4aff-dbc0-f902-a570f962ec4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgebraicIndependent.isTranscendenceBasis_iff {ι : Type w} {R : Type u} [CommRing R]
    [Nontrivial R] {A : Type v} [CommRing A] [Algebra R A] {x : ι → A}
    (i : AlgebraicIndependent R x) :
    IsTranscendenceBasis R x ↔
      ∀ (κ : Type v) (w : κ → A) (_ : AlgebraicIndependent R w) (j : ι → κ) (_ : w ∘ j = x),
        Surjective j := by
  fconstructor
  · rintro p κ w i' j rfl
    have p := p.2 (range w) i'.coe_range (range_comp_subset_range _ _)
    rw [range_comp, ← @image_univ _ _ w] at p
    exact range_iff_surjective.mp (image_injective.mpr i'.injective p)
  · intro p
    use i
    intro w i' h
    specialize p w ((↑) : w → A) i' (fun i => ⟨x i, range_subset_iff.mp h i⟩) (by ext; simp)
    have q := congr_arg (fun s => ((↑) : w → A) '' s) p.range_eq
    dsimp at q
    rw [← image_univ, image_image] at q
    simpa using q
#align algebraic_independent.is_transcendence_basis_iff AlgebraicIndependent.isTranscendenceBasis_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant1b43bf3a6a1073ee2c78218695730e3f553217c1688211fe112852b6fc46f6be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant1b43bf3a6a1073ee2c78218695730e3f553217c1688211fe112852b6fc46f6be.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796bd3316b5908a96295ffcc654473c7cd9e0401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
