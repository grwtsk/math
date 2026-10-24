# orderIsoRangeOfLinearSuccPredArch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c02242f46b4372583db850ee6c6cca09b602236296957228df1341274e7f6766",
  "kind": "def",
  "lexical_name": "orderIsoRangeOfLinearSuccPredArch",
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
  "slug": "orderisorangeoflinearsuccpredarch--b9461e5629d5a5a9b97b4a05",
  "source": {
    "blob": "9e8100fdb58f703d1b1ba2feb76e29892752e498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 424,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9461e5629d5a5a9b97b4a05c9db6ea0cef63baf24028e9d9ce994edc2937756",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c02242f46b4372583db850ee6c6cca09b602236296957228df1341274e7f6766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoRangeOfLinearSuccPredArch [OrderBot ι] [OrderTop ι] :
    ι ≃o Finset.range ((toZ ⊥ (⊤ : ι)).toNat + 1) where
  toFun i :=
    ⟨(toZ ⊥ i).toNat,
      Finset.mem_range_succ_iff.mpr (Int.toNat_le_toNat ((toZ_le_iff _ _).mpr le_top))⟩
  invFun n := succ^[n] ⊥
  left_inv i := iterate_succ_toZ i bot_le
  right_inv n := by
    ext1
    simp only [Subtype.coe_mk]
    refine le_antisymm ?_ ?_
    · rw [Int.toNat_le]
      exact toZ_iterate_succ_le _
    by_cases hn_max : IsMax (succ^[↑n] (⊥ : ι))
    · rw [← isTop_iff_isMax, isTop_iff_eq_top] at hn_max
      rw [hn_max]
      exact Nat.lt_succ_iff.mp (Finset.mem_range.mp n.prop)
    · rw [toZ_iterate_succ_of_not_isMax _ hn_max]
      simp only [Int.toNat_natCast, le_refl]
  map_rel_iff' := by
    intro i j
    simp only [Equiv.coe_fn_mk, Subtype.mk_le_mk, Int.toNat_le]
    rw [← @toZ_le_iff ι _ _ _ _ ⊥, Int.toNat_of_nonneg (toZ_nonneg bot_le)]

end OrderIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8100fdb58f703d1b1ba2feb76e29892752e498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
