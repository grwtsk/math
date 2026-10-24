# variation_le_of_forall_sumAbsDiff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c0bc1c-7c7a-784e-5e60-c11120bfc8d7",
  "kind": "lemma",
  "lexical_name": "variation_le_of_forall_sumAbsDiff_le",
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
  "slug": "variation-le-of-forall-sumabsdiff-le--46442c4350c17b8972d38806",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 752,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46442c4350c17b8972d38806c2af75360a08bee4e1f48b61641a42ba23c2cefe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c0bc1c-7c7a-784e-5e60-c11120bfc8d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_le_of_forall_sumAbsDiff_le {a b : ℝ} (hab : a < b)
    (g : ℝ → ℝ) (K : ℝ)
    (hK : ∀ P : IPart.IPartition a b, sumAbsDiff g P ≤ K) :
    (eVariationOn g (Set.Icc a b)).toReal ≤ K := by
  -- We know that for any monotone sequence x, the sum of absolute differences is ≤ K.
  have h_sum_le : ∀ (p : ℕ) (x : Fin (p + 1) → ℝ) (hx : Monotone x) (hx_mem : ∀ i, x i ∈ Set.Icc a b),
      ∑ i : Fin p, |g (x i.succ) - g (x i.castSucc)| ≤ K := by
    intro p x hx hx_mem
    exact sum_le_K_of_forall_sumAbsDiff_le hab g K hK p x hx hx_mem

  -- Now we relate this to eVariationOn.
  -- eVariationOn is the supremum of these sums (converted to ENNReal).
  -- We show eVariationOn ≤ ENNReal.ofReal K.
  have h_var_le : eVariationOn g (Set.Icc a b) ≤ ENNReal.ofReal K := by
    -- Unfold eVariationOn to its definition as a supremum
    -- Since eVariationOn is defined as a supr, we use iSup_le
    -- Note: The definition might be wrapped.
    -- We can try to use `eVariationOn` properties or just unfold it.
    -- Assuming standard definition:
    -- ref: https://leanprover-community.github.io/mathlib4_docs/Mathlib/Analysis/Variation.html#eVariationOn
    -- It is iSup over p, x.
    refine' iSup_le _;
    rintro ⟨ p, ⟨ x, hx₁, hx₂ ⟩ ⟩;
    simp_all +decide [ edist_dist, Real.dist_eq ];
    convert ENNReal.ofReal_le_ofReal ( h_sum_le p ( fun i => x i ) ( fun i j hij => hx₁ hij ) ( fun i => hx₂ i ) ) using 1;
    rw [ ENNReal.ofReal_sum_of_nonneg fun _ _ => abs_nonneg _, Finset.sum_range ];
    exact rfl


/-
If the sum of absolute differences of `g` over any partition is bounded by `K`, then the sum of absolute differences along any monotone sequence in `[a, b]` is bounded by `K`.
-/

  -- Finally, convert to Real.
  apply ENNReal.toReal_le_of_le_ofReal
  · -- K ≥ 0
    have P := RS.IPart.uniformPartition 1 hab
    have := hK P
    calc 0 ≤ RS.SumDiff.sumAbsDiff g P := by
           apply Finset.sum_nonneg
           intro i _
           apply abs_nonneg
         _ ≤ K := this
  · exact h_var_le

end SumDiff

/- First, a definition of tagged partitions, followed by some basic lemmas -/
/-
A tagged Riemann-Stieltjes partition includes points xi in each subinterval [x_i, x_{i+1}].
-/

namespace Integ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
