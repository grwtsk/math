# sum_Ico_by_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1bea56-e5d8-1d8f-6b01-366bd2d827d8",
  "kind": "theorem",
  "lexical_name": "sum_Ico_by_parts",
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
  "slug": "sum-ico-by-parts--8ae1b16b146c14ecdb894538",
  "source": {
    "blob": "62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae1b16b146c14ecdb8945383eeacdce22c6528baa8b2a12e2485a5d8d648d30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b1bea56-e5d8-1d8f-6b01-366bd2d827d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ico_by_parts (hmn : m < n) :
    ∑ i in Ico m n, f i • g i =
      f (n - 1) • G n - f m • G m - ∑ i in Ico m (n - 1), (f (i + 1) - f i) • G (i + 1) := by
  have h₁ : (∑ i in Ico (m + 1) n, f i • G i) = ∑ i in Ico m (n - 1), f (i + 1) • G (i + 1) := by
    rw [← Nat.sub_add_cancel (Nat.one_le_of_lt hmn), ← sum_Ico_add']
    simp only [ge_iff_le, tsub_le_iff_right, add_le_iff_nonpos_left, nonpos_iff_eq_zero,
      tsub_eq_zero_iff_le, add_tsub_cancel_right]
  have h₂ :
    (∑ i in Ico (m + 1) n, f i • G (i + 1)) =
      (∑ i in Ico m (n - 1), f i • G (i + 1)) + f (n - 1) • G n - f m • G (m + 1) := by
    rw [← sum_Ico_sub_bot _ hmn, ← sum_Ico_succ_sub_top _ (Nat.le_pred_of_lt hmn),
      Nat.sub_add_cancel (pos_of_gt hmn), sub_add_cancel]
  rw [sum_eq_sum_Ico_succ_bot hmn]
  -- porting note: the following used to be done with `conv`
  have h₃: (Finset.sum (Ico (m + 1) n) fun i => f i • g i) =
             (Finset.sum (Ico (m + 1) n) fun i =>
                f i • ((Finset.sum (Finset.range (i + 1)) g) -
                        (Finset.sum (Finset.range i) g))) := by
    congr; funext; rw [← sum_range_succ_sub_sum g]
  rw [h₃]
  simp_rw [smul_sub, sum_sub_distrib, h₂, h₁]
  -- porting note: the following used to be done with `conv`
  have h₄ : ((((Finset.sum (Ico m (n - 1)) fun i => f i • Finset.sum (range (i + 1)) fun i => g i) +
      f (n - 1) • Finset.sum (range n) fun i => g i) -
      f m • Finset.sum (range (m + 1)) fun i => g i) -
      Finset.sum (Ico m (n - 1)) fun i => f (i + 1) • Finset.sum (range (i + 1)) fun i => g i) =
      f (n - 1) • (range n).sum g - f m • (range (m + 1)).sum g +
      Finset.sum (Ico m (n - 1)) (fun i => f i • (range (i + 1)).sum g -
      f (i + 1) • (range (i + 1)).sum g) := by
    rw [← add_sub, add_comm, ←add_sub, ← sum_sub_distrib]
  rw [h₄]
  have : ∀ i, f i • G (i + 1) - f (i + 1) • G (i + 1) = -((f (i + 1) - f i) • G (i + 1)) := by
    intro i
    rw [sub_smul]
    abel
  simp_rw [this, sum_neg_distrib, sum_range_succ, smul_add]
  abel
#align finset.sum_Ico_by_parts Finset.sum_Ico_by_parts

variable (n)

/-- **Summation by parts** for ranges -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
