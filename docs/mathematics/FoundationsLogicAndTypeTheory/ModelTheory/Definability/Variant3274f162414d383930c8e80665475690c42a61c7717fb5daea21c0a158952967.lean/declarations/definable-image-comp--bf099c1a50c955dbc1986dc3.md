# Definable.image_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3f5e88c02ea0f3c8ca0a96b2e468267f7fd025c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d403a65c-3244-f7a6-4400-8f92458c957c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:399be3f0-0906-a911-cce9-fa49b6e3103a",
  "kind": "theorem",
  "lexical_name": "Definable.image_comp",
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
  "slug": "definable-image-comp--bf099c1a50c955dbc1986dc3",
  "source": {
    "blob": "d3f5e88c02ea0f3c8ca0a96b2e468267f7fd025c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf099c1a50c955dbc1986dc308fc62a6b10a1b18ec0e8580501a1a4d4fa77a9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399be3f0-0906-a911-cce9-fa49b6e3103a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Definable.image_comp {s : Set (β → M)} (h : A.Definable L s) (f : α → β) [Finite α]
    [Finite β] : A.Definable L ((fun g : β → M => g ∘ f) '' s) := by
  classical
    cases nonempty_fintype α
    cases nonempty_fintype β
    have h :=
      (((h.image_comp_equiv (Equiv.Set.sumCompl (range f))).image_comp_equiv
                (Equiv.sumCongr (_root_.Equiv.refl _)
                  (Fintype.equivFin _).symm)).image_comp_sumInl_fin
            _).preimage_comp
        (rangeSplitting f)
    have h' :
      A.Definable L { x : α → M | ∀ a, x a = x (rangeSplitting f (rangeFactorization f a)) } := by
      have h' : ∀ a,
        A.Definable L { x : α → M | x a = x (rangeSplitting f (rangeFactorization f a)) } := by
          refine fun a => ⟨(var a).equal (var (rangeSplitting f (rangeFactorization f a))), ext ?_⟩
          simp
      refine (congr rfl (ext ?_)).mp (definable_finset_biInter h' Finset.univ)
      simp
    refine (congr rfl (ext fun x => ?_)).mp (h.inter h')
    simp only [Equiv.coe_trans, mem_inter_iff, mem_preimage, mem_image, exists_exists_and_eq_and,
      mem_setOf_eq]
    constructor
    · rintro ⟨⟨y, ys, hy⟩, hx⟩
      refine ⟨y, ys, ?_⟩
      ext a
      rw [hx a, ← Function.comp_apply (f := x), ← hy]
      simp
    · rintro ⟨y, ys, rfl⟩
      refine ⟨⟨y, ys, ?_⟩, fun a => ?_⟩
      · ext
        simp [Set.apply_rangeSplitting f]
      · rw [Function.comp_apply, Function.comp_apply, apply_rangeSplitting f,
          rangeFactorization_coe]

variable (L A)

/-- A 1-dimensional version of `Definable`, for `Set M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f5e88c02ea0f3c8ca0a96b2e468267f7fd025c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
