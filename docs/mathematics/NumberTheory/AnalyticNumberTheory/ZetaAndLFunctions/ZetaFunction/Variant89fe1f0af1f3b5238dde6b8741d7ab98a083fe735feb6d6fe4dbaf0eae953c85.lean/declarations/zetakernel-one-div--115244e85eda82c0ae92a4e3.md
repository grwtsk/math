# zetaKernel₂_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97638739-6834-dd98-cb16-a98ee4297973",
  "kind": "theorem",
  "lexical_name": "zetaKernel₂_one_div",
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
  "slug": "zetakernel-one-div--115244e85eda82c0ae92a4e3",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115244e85eda82c0ae92a4e3fff836b27ba897c507bfee1182a242e869e2d8ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97638739-6834-dd98-cb16-a98ee4297973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaKernel₂_one_div {t : ℝ} (ht : 0 < t) :
    zetaKernel₂ (1 / t) = sqrt t * zetaKernel₂ t := by
  have aux : ∀ {u : ℝ} (_ : 1 < u), zetaKernel₂ (1 / u) = sqrt u * zetaKernel₂ u := by
    intro u hu
    simp_rw [zetaKernel₂, Pi.add_apply]
    rw [indicator_of_mem, indicator_of_not_mem (not_mem_Ioc_of_gt hu), add_zero]
    swap; · exact ⟨one_div_pos.mpr (zero_lt_one.trans hu), (one_div u).symm ▸ inv_le_one hu.le⟩
    rw [zetaKernel₁_eq_jacobiTheta (one_div_pos.mpr <| zero_lt_one.trans hu),
      zetaKernel₁_eq_jacobiTheta (zero_lt_one.trans hu), ← add_div, ← mul_div_assoc, add_sub,
      sub_add_cancel, sqrt_div zero_le_one, sqrt_one, one_div (sqrt _), ofReal_inv, ← one_div,
      one_div_one_div, mul_sub, mul_one]
    congr 2
    let τ : UpperHalfPlane := .mk (u * I) ((mul_I_im u).symm ▸ zero_lt_one.trans hu)
    convert jacobiTheta_S_smul τ using 2
    · rw [UpperHalfPlane.modular_S_smul, UpperHalfPlane.coe_mk, UpperHalfPlane.coe_mk, ← neg_inv,
        mul_inv, inv_I, mul_neg, neg_neg, one_div, ofReal_inv]
    · rw [UpperHalfPlane.coe_mk, mul_comm, mul_assoc, mul_neg, I_mul_I, neg_neg, mul_one,
        sqrt_eq_rpow, ofReal_cpow (zero_lt_one.trans hu).le]
      push_cast
      rfl
  rcases lt_trichotomy 1 t with (h | h | h)
  · exact aux h
  · simp only [← h, div_self, Ne.def, one_ne_zero, not_false_iff, sqrt_one, ofReal_one, one_mul]
  · have := aux (show 1 < 1 / t by rwa [lt_one_div (zero_lt_one' ℝ) ht, div_one])
    rw [one_div_one_div] at this
    rw [this, ← mul_assoc, ← ofReal_mul, ← sqrt_mul ht.le, mul_one_div_cancel ht.ne', sqrt_one,
      ofReal_one, one_mul]
#align zeta_kernel₂_one_div zetaKernel₂_one_div

/-!
## Bounds for zeta kernels

We now establish asymptotic bounds for the zeta kernels as `t → ∞` and `t → 0`, and use these to
show holomorphy of their Mellin transforms (for `1 / 2 < re s` for `zetaKernel₁`, and all `s` for
`zetaKernel₂`). -/

/-- Bound for `zetaKernel₁` for large `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
