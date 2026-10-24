# le_iff_Nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2828d42cd89887c7573be17332a6ec18c996def7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2700b34-e1c1-79c2-86df-671e7a152a9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:802f6bf5-e6ed-9824-8b7f-419a4a4fbabe",
  "kind": "theorem",
  "lexical_name": "le_iff_Nonneg",
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
  "slug": "le-iff-nonneg--8192168afcaaa2b9a0c1b7e8",
  "source": {
    "blob": "2828d42cd89887c7573be17332a6ec18c996def7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8192168afcaaa2b9a0c1b7e87ac4ebb40a4caf77d1df3162ec8829fcd2dc3b04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:802f6bf5-e6ed-9824-8b7f-419a4a4fbabe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_iff_Nonneg (a b : ℚ) : a ≤ b ↔ Rat.Nonneg (b - a) :=
  numDenCasesOn'' a fun na da ha hared =>
    numDenCasesOn'' b fun nb db hb hbred => by
      change Rat.blt _ _ = false ↔ _
      unfold Rat.blt
      simp [-divInt_ofNat, mkRat_eq]
      split_ifs with h h'
      · rw [Rat.sub_def]
        simp [Rat.Nonneg]
        simp [normalize_eq]
        apply Int.ediv_neg'
        · rw [sub_neg]
          apply lt_of_lt_of_le
          · apply mul_neg_of_neg_of_pos h.1
            rwa [Nat.cast_pos, pos_iff_ne_zero]
          · apply mul_nonneg h.2 (Nat.cast_nonneg _)
        · simp only [Nat.cast_pos]
          apply Nat.gcd_pos_of_pos_right
          apply mul_pos <;> rwa [pos_iff_ne_zero]
      · simp only [divInt_ofNat, ←zero_iff_num_zero, mkRat_eq_zero hb] at h'
        simp [h', Rat.Nonneg]
      · simp [Rat.Nonneg, Rat.sub_def, normalize_eq]
        refine ⟨fun H => ?_, fun H _ => ?_⟩
        · refine Int.ediv_nonneg ?_ (Nat.cast_nonneg _)
          rw [sub_nonneg]
          push_neg at h
          obtain hb|hb := Ne.lt_or_lt h'
          · apply H
            intro H'
            exact (hb.trans H').false.elim
          · obtain ha|ha := le_or_lt na 0
            · apply le_trans <| mul_nonpos_of_nonpos_of_nonneg ha (Nat.cast_nonneg _)
              exact mul_nonneg hb.le (Nat.cast_nonneg _)
            · exact H (fun _ => ha)
        · rw [←sub_nonneg]
          contrapose! H
          apply Int.ediv_neg' H
          simp only [Nat.cast_pos]
          apply Nat.gcd_pos_of_pos_right
          apply mul_pos <;> rwa [pos_iff_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variante21dcbad1994526bd55b65de2f16b42c2eab489a8046a494fa685bc92ba16f63.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2828d42cd89887c7573be17332a6ec18c996def7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
