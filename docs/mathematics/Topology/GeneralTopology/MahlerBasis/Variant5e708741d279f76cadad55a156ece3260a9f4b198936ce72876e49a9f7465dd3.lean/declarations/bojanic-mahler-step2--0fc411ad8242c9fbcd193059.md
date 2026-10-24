# bojanic_mahler_step2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f1e4666-8467-aa67-d397-268ffeb9e342",
  "kind": "lemma",
  "lexical_name": "bojanic_mahler_step2",
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
  "slug": "bojanic-mahler-step2--0fc411ad8242c9fbcd193059",
  "source": {
    "blob": "cd62cb6ad733b398334edb67ac5a6a553488532e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc411ad8242c9fbcd193059aa9720585333c8154918c21b8aa1d32c76a946a4",
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

Occurrence: `result:3f1e4666-8467-aa67-d397-268ffeb9e342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bojanic_mahler_step2 {f : C(ℤ_[p], E)} {s t : ℕ}
    (hst : ∀ x y : ℤ_[p], ‖x - y‖ ≤ p ^ (-t : ℤ) → ‖f x - f y‖ ≤ ‖f‖ / p ^ s) (n : ℕ) :
    ‖Δ_[1]^[n + p ^ t] f 0‖ ≤ max ↑((Finset.range (p ^ t - 1)).sup
      fun j ↦ ‖Δ_[1]^[n + (j + 1)] f 0‖₊ / p) (‖f‖ / p ^ s) := by
  -- Use previous lemma to rewrite in a convenient form.
  rw [bojanic_mahler_step1 _ _ (one_le_pow₀ hp.out.one_le)]
  -- Now use ultrametric property and bound each term separately.
  refine (norm_add_le_max _ _).trans (max_le_max ?_ ?_)
  · -- Bounding the sum over `range (p ^ t - 1)`: every term involves a value `Δ_[1]^[·] f 0` and
    -- a binomial coefficient which is divisible by `p`
    rw [norm_neg, ← coe_nnnorm, coe_le_coe]
    refine nnnorm_sum_le_of_forall_le (fun i hi ↦ Finset.le_sup_of_le hi ?_)
    rw [← Nat.cast_smul_eq_nsmul ℤ_[p], div_eq_inv_mul]
    refine (nnnorm_smul_le _ _).trans <| mul_le_mul_of_nonneg_right ?_ (by simp only [zero_le])
    -- remains to show norm of binomial coeff is `≤ p⁻¹`
    rw [mem_range] at hi
    have : 0 < (p ^ t).choose (i + 1) := Nat.choose_pos (by omega)
    rw [← zpow_neg_one, ← coe_le_coe, coe_nnnorm, PadicInt.norm_eq_zpow_neg_valuation
      (mod_cast this.ne'), coe_zpow, NNReal.coe_natCast,
      zpow_le_zpow_iff_right₀ (mod_cast hp.out.one_lt), neg_le_neg_iff,
      ← PadicInt.valuation_coe, PadicInt.coe_natCast, Padic.valuation_natCast, Nat.one_le_cast]
    exact one_le_padicValNat_of_dvd this.ne' <| hp.out.dvd_choose_pow (by lia) (by omega)
  · -- Bounding the sum over `range (n + 1)`: every term is small by the choice of `t`
    refine norm_sum_le_of_forall_le_of_nonempty nonempty_range_add_one (fun i _ ↦ ?_)
    calc ‖((-1 : ℤ) ^ (n - i) * n.choose i) • (f (i + ↑(p ^ t)) - f i)‖
    _ ≤ ‖((-1 : ℤ) ^ (n - i) * n.choose i : ℤ_[p])‖ * ‖(f (i + ↑(p ^ t)) - f i)‖ := by
      rw [← Int.cast_smul_eq_zsmul ℤ_[p]]
      exact (norm_smul_le ..).trans (by norm_cast)
    _ ≤ ‖f (i + ↑(p ^ t)) - f i‖ := by
      apply mul_le_of_le_one_left (norm_nonneg _)
      simpa only [← coe_intCast] using norm_le_one _
    _ ≤ ‖f‖ / p ^ s := by
      apply hst
      rw [Nat.cast_pow, add_sub_cancel_left, norm_pow, norm_p, inv_pow, zpow_neg, zpow_natCast]

/--
Explicit bound for the decay rate of the Mahler coefficients of a continuous function on `ℤ_[p]`.
This will be used to prove Mahler's theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd62cb6ad733b398334edb67ac5a6a553488532e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
