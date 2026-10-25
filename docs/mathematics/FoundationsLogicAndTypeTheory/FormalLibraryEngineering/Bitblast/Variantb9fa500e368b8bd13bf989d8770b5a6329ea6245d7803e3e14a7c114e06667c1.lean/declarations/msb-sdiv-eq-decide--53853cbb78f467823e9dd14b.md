# msb_sdiv_eq_decide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb15026d-d4ee-ce0f-37b7-2be2ad853e9c",
  "kind": "theorem",
  "lexical_name": "msb_sdiv_eq_decide",
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
  "slug": "msb-sdiv-eq-decide--53853cbb78f467823e9dd14b",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1790,
    "line": 1741,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53853cbb78f467823e9dd14be361fa3449d6a3410ce5bc781fdbece08e21aca4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb15026d-d4ee-ce0f-37b7-2be2ad853e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1741–1790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem msb_sdiv_eq_decide {x y : BitVec w} :
    (x.sdiv y).msb = (decide (0 < w) &&
      (!x.msb && y.msb && decide (-y ≤ x)) ||
      (x.msb && !y.msb && decide (y ≤ -x) && !decide (y = 0#w)) ||
      (x.msb && y.msb && decide (x = intMin w) && decide (y = -1#w)))
     := by
  rcases w; decide +revert
  case succ w =>
    simp only [sdiv_eq, udiv_eq]
    rcases hxmsb : x.msb <;> rcases hymsb : y.msb
    · simp [hxmsb, msb_udiv_eq_false_of, Bool.not_false, Bool.and_false, Bool.false_and,
        Bool.and_true, Bool.or_self, Bool.and_self]
    · simp only [hxmsb, hymsb, msb_neg, msb_udiv_eq_false_of, bne_false, Bool.not_false,
        Bool.and_self, ne_zero_of_msb_true, decide_false, Bool.and_true, Bool.true_and, Bool.not_true,
        Bool.false_and, Bool.or_false, bool_to_prop]
      have : x / -y ≠ intMin (w + 1) := by
        intro h
        have : (x / -y).msb = (intMin (w + 1)).msb := by simp only [h]
        simp only [msb_udiv, msb_intMin, show 0 < w + 1 by omega, decide_true, and_eq_true, beq_iff_eq] at this
        obtain ⟨hcontra, _⟩ := this
        simp only [hcontra, true_eq_false] at hxmsb
      simp [this, hymsb, udiv_ne_zero_iff_ne_zero_and_le]
    · simp only [Bool.not_true, Bool.and_self, Bool.false_and, Bool.not_false,
        Bool.true_and, Bool.false_or, Bool.and_false, Bool.or_false]
      by_cases hx₁ : x = 0#(w + 1)
      · simp [hx₁, neg_zero, zero_udiv, msb_zero, le_zero_iff, Bool.and_not_self]
      · by_cases hy₁ : y = 0#(w + 1)
        · simp [hy₁, udiv_zero, neg_zero, msb_zero, decide_true, Bool.not_true, Bool.and_false]
        · simp only [hy₁, decide_false, Bool.not_false, Bool.and_true]
          by_cases hxy₁ : (- x / y) = 0#(w + 1)
          · simp only [hxy₁, neg_zero, msb_zero, false_eq_decide_iff, BitVec.not_le,
              BitVec.not_le]
            simp only [udiv_eq_zero_iff_eq_zero_or_lt, hy₁, _root_.false_or] at hxy₁
            bv_omega
          · simp only [udiv_eq_zero_iff_eq_zero_or_lt, _root_.not_or, BitVec.not_lt,
              hy₁, not_false_eq_true, _root_.true_and] at hxy₁
            simp only [decide_true, msb_neg, bne_iff_ne, ne_eq,
              bool_to_prop,
              bne_iff_ne, ne_eq, udiv_eq_zero_iff_eq_zero_or_lt, hy₁, _root_.false_or,
              BitVec.not_lt, hxy₁, _root_.true_and, decide_not, not_eq_eq_eq_not, not_eq_not,
              msb_udiv, msb_neg]
            simp only [hx₁, not_false_eq_true, _root_.true_and, decide_not, hxmsb, not_eq_eq_eq_not,
              Bool.not_true, decide_eq_false_iff_not, Decidable.not_not, beq_iff_eq]
            rw [neg_udiv_eq_intMin_iff_eq_intMin_eq_one_of_msb_eq_true hxmsb hymsb]
    · simp only [msb_udiv, msb_neg, hxmsb, bne_true, Bool.not_and, Bool.not_true, Bool.and_true,
        Bool.false_and, Bool.and_false, hymsb, ne_zero_of_msb_true, decide_false, Bool.not_false,
        Bool.or_self, Bool.and_self, Bool.true_and, Bool.false_or]
      simp only [bool_to_prop]
      simp [BitVec.ne_zero_of_msb_true (x := x) hxmsb, neg_eq_iff_eq_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L1741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
