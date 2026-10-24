# fwdDiff_iter_le_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce411798-506c-18c1-6c7d-0fdf1c972a89",
  "kind": "lemma",
  "lexical_name": "fwdDiff_iter_le_of_forall_le",
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
  "slug": "fwddiff-iter-le-of-forall-le--c02fc6ea41edf70fcd993934",
  "source": {
    "blob": "cd62cb6ad733b398334edb67ac5a6a553488532e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c02fc6ea41edf70fcd99393487f1eda484e720b08aea0538db9e81474606837b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce411798-506c-18c1-6c7d-0fdf1c972a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fwdDiff_iter_le_of_forall_le {f : C(ℤ_[p], E)} {s t : ℕ}
    (hst : ∀ x y : ℤ_[p], ‖x - y‖ ≤ p ^ (-t : ℤ) → ‖f x - f y‖ ≤ ‖f‖ / p ^ s) (n : ℕ) :
    ‖Δ_[1]^[n + s * p ^ t] f 0‖ ≤ ‖f‖ / p ^ s := by
  -- We show the following more general statement by induction on `k`:
  suffices ∀ {k : ℕ}, k ≤ s → ‖Δ_[1]^[n + k * p ^ t] f 0‖ ≤ ‖f‖ / p ^ k from this le_rfl
  intro k hk
  induction k generalizing n with
  | zero => -- base case just says that `‖Δ^[·] (⇑f) 0‖` is bounded by `‖f‖`
    simpa only [zero_mul, pow_zero, add_zero, div_one] using norm_fwdDiff_iter_apply_le 1 f 0 n
  | succ k IH => -- induction is the "step 2" lemma above
    rw [add_mul, one_mul, ← add_assoc]
    refine (bojanic_mahler_step2 hst (n + k * p ^ t)).trans (max_le ?_ ?_)
    · rw [← coe_nnnorm, ← NNReal.coe_natCast, ← NNReal.coe_pow, ← NNReal.coe_div, NNReal.coe_le_coe]
      refine Finset.sup_le fun j _ ↦ ?_
      rw [pow_succ, ← div_div, div_le_div_iff_of_pos_right (mod_cast hp.out.pos), add_right_comm]
      exact_mod_cast IH (n + (j + 1)) (by lia)
    · exact div_le_div_of_nonneg_left (norm_nonneg _)
        (mod_cast pow_pos hp.out.pos _) (mod_cast pow_le_pow_right₀ hp.out.one_le hk)

/-- Key lemma for Mahler's theorem: for `f` a continuous function on `ℤ_[p]`, the sequence
`n ↦ Δ^[n] f 0` tends to 0. See `PadicInt.fwdDiff_iter_le_of_forall_le` for an explicit
estimate of the decay rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd62cb6ad733b398334edb67ac5a6a553488532e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
