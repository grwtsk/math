# IsReduced.nodup_rightInvSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d780959-6565-448f-0e26-83c9cd0a6046",
  "kind": "theorem",
  "lexical_name": "IsReduced.nodup_rightInvSeq",
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
  "slug": "isreduced-nodup-rightinvseq--ea60cecf355a6812919223da",
  "source": {
    "blob": "7d25d1d0f45fa08887ddef328899f9559f62993c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 414,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea60cecf355a6812919223dac1397d7b2a10f0473afb2a987d749ab0c388d4ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d780959-6565-448f-0e26-83c9cd0a6046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsReduced.nodup_rightInvSeq {ω : List B} (rω : cs.IsReduced ω) : List.Nodup (ris ω) := by
  apply List.nodup_iff_getElem?_ne_getElem?.mpr
  intro j j' j_lt_j' j'_lt_length (dup : (rightInvSeq cs ω)[j]? = (rightInvSeq cs ω)[j']?)
  show False
  replace j'_lt_length : j' < List.length ω := by simpa using j'_lt_length
  rw [getElem?_eq_getElem (by simp; omega), getElem?_eq_getElem (by simp; omega)] at dup
  apply Option.some_injective at dup
  rw [← getD_eq_getElem _ 1, ← getD_eq_getElem _ 1] at dup
  set! t := (ris ω).getD j 1 with h₁
  set! t' := (ris (ω.eraseIdx j)).getD (j' - 1) 1 with h₂
  have h₃ : t' = (ris ω).getD j' 1                    := by
    rw [h₂, cs.getD_rightInvSeq, cs.getD_rightInvSeq,
      (Nat.sub_add_cancel (by omega) : j' - 1 + 1 = j'), eraseIdx_eq_take_drop_succ,
      drop_append_eq_append_drop, drop_of_length_le (by simp [j_lt_j'.le]), length_take,
      drop_drop, nil_append, min_eq_left_of_lt (j_lt_j'.trans j'_lt_length), Nat.add_comm,
      ← add_assoc, Nat.sub_add_cancel (by omega), mul_left_inj, mul_right_inj]
    congr 2
    show (List.take j ω ++ List.drop (j + 1) ω)[j' - 1]? = ω[j']?
    rw [getElem?_append_right (by simp [Nat.le_sub_one_of_lt j_lt_j']), getElem?_drop]
    congr
    show j + 1 + (j' - 1 - List.length (List.take j ω)) = j'
    rw [length_take]
    omega
  have h₄ : t * t' = 1                                := by
    rw [h₁, h₃, dup]
    exact cs.getD_rightInvSeq_mul_self _ _
  have h₅ := calc
    π ω   = π ω * t * t'                              := by rw [mul_assoc, h₄]; group
    _     = (π (ω.eraseIdx j)) * t'                   :=
        congrArg (· * t') (cs.wordProd_mul_getD_rightInvSeq _ _)
    _     = π ((ω.eraseIdx j).eraseIdx (j' - 1))      :=
        cs.wordProd_mul_getD_rightInvSeq _ _
  have h₆ := calc
    ω.length = ℓ (π ω)                                    := rω.symm
    _        = ℓ (π ((ω.eraseIdx j).eraseIdx (j' - 1)))   := congrArg cs.length h₅
    _        ≤ ((ω.eraseIdx j).eraseIdx (j' - 1)).length  := cs.length_wordProd_le _
  have h₇ := add_le_add_right (add_le_add_right h₆ 1) 1
  have h₈ : j' - 1 < List.length (eraseIdx ω j)           := by
    apply (@Nat.add_lt_add_iff_right 1).mp
    rw [Nat.sub_add_cancel (by omega)]
    rw [length_eraseIdx_add_one (by omega)]
    omega
  rw [length_eraseIdx_add_one h₈] at h₇
  rw [length_eraseIdx_add_one (by omega)] at h₇
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d25d1d0f45fa08887ddef328899f9559f62993c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
