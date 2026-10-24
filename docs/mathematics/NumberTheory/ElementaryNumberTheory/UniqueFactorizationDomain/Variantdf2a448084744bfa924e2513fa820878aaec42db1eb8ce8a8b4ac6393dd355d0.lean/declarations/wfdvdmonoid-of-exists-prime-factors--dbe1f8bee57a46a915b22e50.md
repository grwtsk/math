# WfDvdMonoid.of_exists_prime_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b24edc5a-1f44-a8c3-c066-875b2a805ab3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca9237ce-a704-5b1b-73c8-4532a86e5865",
  "kind": "theorem",
  "lexical_name": "WfDvdMonoid.of_exists_prime_factors",
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
  "slug": "wfdvdmonoid-of-exists-prime-factors--dbe1f8bee57a46a915b22e50",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 284,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbe1f8bee57a46a915b22e5013d5fb493bd9cdbc323e5d2d3be72ec473e6d760",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca9237ce-a704-5b1b-73c8-4532a86e5865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WfDvdMonoid.of_exists_prime_factors : WfDvdMonoid α :=
  ⟨by
    classical
      refine'
        RelHomClass.wellFounded
          (RelHom.mk _ _ : (DvdNotUnit : α → α → Prop) →r ((· < ·) : ℕ∞ → ℕ∞ → Prop))
          (WithTop.wellFounded_lt Nat.lt_wfRel.wf)
      · intro a
        by_cases h : a = 0
        · exact ⊤
        exact ↑(Multiset.card (Classical.choose (pf a h)))
      rintro a b ⟨ane0, ⟨c, hc, b_eq⟩⟩
      rw [dif_neg ane0]
      by_cases h : b = 0
      · simp [h, lt_top_iff_ne_top]
      · rw [dif_neg h]
        erw [WithTop.coe_lt_coe]
        have cne0 : c ≠ 0 := by
          refine' mt (fun con => _) h
          rw [b_eq, con, mul_zero]
        calc
          Multiset.card (Classical.choose (pf a ane0)) <
              _ + Multiset.card (Classical.choose (pf c cne0)) :=
            lt_add_of_pos_right _
              (Multiset.card_pos.mpr fun con => hc (associated_one_iff_isUnit.mp ?_))
          _ = Multiset.card (Classical.choose (pf a ane0) + Classical.choose (pf c cne0)) :=
            (Multiset.card_add _ _).symm
          _ = Multiset.card (Classical.choose (pf b h)) :=
            Multiset.card_eq_card_of_rel
            (prime_factors_unique ?_ (Classical.choose_spec (pf _ h)).1 ?_)

        · convert (Classical.choose_spec (pf c cne0)).2.symm
          rw [con, Multiset.prod_zero]
        · intro x hadd
          rw [Multiset.mem_add] at hadd
          cases' hadd with h h <;> apply (Classical.choose_spec (pf _ _)).1 _ h <;> assumption
        · rw [Multiset.prod_add]
          trans a * c
          · apply Associated.mul_mul <;> apply (Classical.choose_spec (pf _ _)).2 <;> assumption
          · rw [← b_eq]
            apply (Classical.choose_spec (pf _ _)).2.symm; assumption⟩
#align wf_dvd_monoid.of_exists_prime_factors WfDvdMonoid.of_exists_prime_factors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
