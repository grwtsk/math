# finite_convolution_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4f95c27-b313-794b-0d7b-75ad5cbf924b",
  "kind": "theorem",
  "lexical_name": "finite_convolution_sum",
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
  "slug": "finite-convolution-sum--890870e8b8dc05f4bad5b65e",
  "source": {
    "blob": "4aa3662eecdd5b7be72a5a3e32847c1956ad55b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:890870e8b8dc05f4bad5b65eb824b8ba137433bbc213cc7507f8519b89730635",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f95c27-b313-794b-0d7b-75ad5cbf924b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_convolution_sum (N : ℕ) (f g : ArithmeticFunction ℝ) (w : ℕ → ℝ)
    (hw : ∀ n, N < n → w n = 0) :
    (∑ n ∈ Finset.Icc 1 N, (f*g) n * w n) =
      ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, f a * g b * w (a*b) := by
  classical
  simp_rw [ArithmeticFunction.mul_apply, Finset.sum_mul]
  rw [Finset.sum_sigma', ← Finset.sum_product']
  let S := (Finset.Icc 1 N ×ˢ Finset.Icc 1 N).filter (fun ab : ℕ × ℕ ↦ ab.1*ab.2 ≤ N)
  calc
    _ = ∑ ab ∈ S, f ab.1 * g ab.2 * w (ab.1*ab.2) := by
      apply Finset.sum_bij (fun a _ ↦ a.2)
      · rintro ⟨n, a, b⟩ hn
        obtain ⟨hn, hab⟩ := Finset.mem_sigma.mp hn
        obtain ⟨hab, hn0⟩ := Nat.mem_divisorsAntidiagonal.mp hab
        have ha : 0 < a := Nat.pos_of_ne_zero (left_ne_zero_of_mul (hab ▸ hn0))
        have hb : 0 < b := Nat.pos_of_ne_zero (right_ne_zero_of_mul (hab ▸ hn0))
        have haN : a ≤ N := (Nat.le_mul_of_pos_right a hb).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        have hbN : b ≤ N := (Nat.le_mul_of_pos_left b ha).trans (hab ▸ (Finset.mem_Icc.mp hn).2)
        exact Finset.mem_filter.mpr ⟨Finset.mem_product.mpr
          ⟨Finset.mem_Icc.mpr ⟨ha, haN⟩, Finset.mem_Icc.mpr ⟨hb, hbN⟩⟩,
          hab ▸ (Finset.mem_Icc.mp hn).2⟩
      · rintro ⟨n, ab⟩ hn ⟨m, cd⟩ hm heq
        have hn' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1
        have hm' := (Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hm).2).1
        dsimp only at heq hn' hm'
        have hnm : n = m := by rw [← hn', ← hm', heq]
        cases hnm
        cases heq
        rfl
      · rintro ⟨a,b⟩ hab
        obtain ⟨hab, hN⟩ := Finset.mem_filter.mp hab
        obtain ⟨ha,hb⟩ := Finset.mem_product.mp hab
        have hp : 0 < a*b := Nat.mul_pos (Finset.mem_Icc.mp ha).1 (Finset.mem_Icc.mp hb).1
        refine ⟨⟨a*b,(a,b)⟩, Finset.mem_sigma.mpr ⟨Finset.mem_Icc.mpr ⟨hp,hN⟩,
          Nat.mem_divisorsAntidiagonal.mpr ⟨rfl,hp.ne'⟩⟩, rfl⟩
      · rintro ⟨n, a, b⟩ hn
        rw [(Nat.mem_divisorsAntidiagonal.mp (Finset.mem_sigma.mp hn).2).1]
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro ab hab hn
      have hcut : N < ab.1*ab.2 := by
        by_contra h
        exact hn (Finset.mem_filter.mpr ⟨hab, by omega⟩)
      rw [hw _ hcut, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa3662eecdd5b7be72a5a3e32847c1956ad55b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
