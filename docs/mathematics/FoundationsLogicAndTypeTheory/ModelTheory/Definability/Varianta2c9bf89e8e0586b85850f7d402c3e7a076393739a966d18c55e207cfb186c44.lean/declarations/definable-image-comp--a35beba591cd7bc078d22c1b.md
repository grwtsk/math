# Definable.image_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de18ffceeeb8a10b77296d3637bf698f6222ad66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77830aa5-c442-fbb0-4715-99f6e678ac1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4df54e82-9f71-68c5-b442-ea59379d5cfc",
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
  "slug": "definable-image-comp--a35beba591cd7bc078d22c1b",
  "source": {
    "blob": "de18ffceeeb8a10b77296d3637bf698f6222ad66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a35beba591cd7bc078d22c1bedc01ec8eb24e0c6d5eeb1abbc3c29b9fc8bcd49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4df54e82-9f71-68c5-b442-ea59379d5cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–277.

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
      refine (congr rfl (ext ?_)).mp (definable_biInter_finset h' Finset.univ)
      simp
    refine (congr rfl (ext fun x => ?_)).mp (h.inter h')
    simp only [mem_inter_iff, mem_preimage, mem_image, exists_exists_and_eq_and,
      mem_ofPred_eq]
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

/-- Finite existential quantifiers preserve definablity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de18ffceeeb8a10b77296d3637bf698f6222ad66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
