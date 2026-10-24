# sum_exp_neg_le_layers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec07f136-3722-7abe-ca4a-2ea9c652c446",
  "kind": "theorem",
  "lexical_name": "sum_exp_neg_le_layers",
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
  "slug": "sum-exp-neg-le-layers--48c1081b99e99e1dc395eaa8",
  "source": {
    "blob": "30e10c1400fdf96404308eab4533eef097c9d33d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 48,
    "path": "GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c1081b99e99e1dc395eaa841509fcbbec48a2c5029ea61c56cafb218545d32",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec07f136-3722-7abe-ca4a-2ea9c652c446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_exp_neg_le_layers (energy : Ω → ℝ) (L : ℕ)
    (hn : ∀ x, 0 ≤ energy x) (hu : ∀ x, energy x < 2 ^ (L + 1)) :
    ∑ x, Real.exp (-energy x) ≤
      ((lowBand energy).card : ℝ) +
        ∑ k ∈ Finset.range (L + 1), ((dyadicBand energy k).card : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
  classical
  let weight (x : Ω) : ℝ :=
    (if energy x < 1 then 1 else 0) +
      ∑ k ∈ Finset.range (L + 1),
        if (2 : ℝ) ^ k ≤ energy x ∧ energy x < 2 ^ (k + 1)
        then Real.exp (-(2 : ℝ) ^ k) else 0
  have hp : ∀ x, Real.exp (-energy x) ≤ weight x := by
    intro x
    have hterms : ∀ k, 0 ≤ (if (2 : ℝ) ^ k ≤ energy x ∧ energy x < 2 ^ (k + 1)
        then Real.exp (-(2 : ℝ) ^ k) else 0) := by intro k; split_ifs <;> positivity
    rcases dyadic_cover (energy x) L (hu x) with hl | ⟨k, hk, hlo, hhi⟩
    · dsimp [weight]
      rw [if_pos hl]
      exact (exp_neg_le_one _ (hn x)).trans (le_add_of_nonneg_right (Finset.sum_nonneg (fun i _ => hterms i)))
    · have ht : Real.exp (-(2 : ℝ) ^ k) ≤
          ∑ j ∈ Finset.range (L + 1),
            if (2 : ℝ) ^ j ≤ energy x ∧ energy x < 2 ^ (j + 1)
            then Real.exp (-(2 : ℝ) ^ j) else 0 := by
        have h := Finset.single_le_sum (s := Finset.range (L + 1)) (fun j _ => hterms j) hk
        simpa only [if_pos (And.intro hlo hhi)] using h
      have he : Real.exp (-energy x) ≤ Real.exp (-(2 : ℝ) ^ k) :=
        Real.exp_le_exp.mpr (neg_le_neg hlo)
      dsimp [weight]
      have hi : (0 : ℝ) ≤ if energy x < 1 then 1 else 0 := by split_ifs <;> norm_num
      exact he.trans (ht.trans (le_add_of_nonneg_left hi))
  calc
    ∑ x, Real.exp (-energy x) ≤ ∑ x, weight x := Finset.sum_le_sum (fun x _ => hp x)
    _ = ((lowBand energy).card : ℝ) +
        ∑ k ∈ Finset.range (L + 1), ((dyadicBand energy k).card : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
      dsimp [weight]
      rw [Finset.sum_add_distrib, Finset.sum_comm]
      congr 1
      · simp [lowBand]
      · apply Finset.sum_congr rfl
        intro k _
        simp [dyadicBand, ← Finset.sum_filter]

/-- A pointwise geometric majorant for the universal final series in the
source proof of Theorem 1.3. No spectral or probabilistic estimate is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e10c1400fdf96404308eab4533eef097c9d33d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
