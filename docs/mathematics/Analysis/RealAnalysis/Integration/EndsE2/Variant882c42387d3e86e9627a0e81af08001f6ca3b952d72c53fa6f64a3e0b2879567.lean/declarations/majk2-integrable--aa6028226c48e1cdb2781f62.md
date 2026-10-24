# majK2_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7b5204d-a8e9-c867-31d6-11adfaf42b80",
  "kind": "theorem",
  "lexical_name": "majK2_integrable",
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
  "slug": "majk2-integrable--aa6028226c48e1cdb2781f62",
  "source": {
    "blob": "b5f23d8eb71ee49598a67dfbfdc8d83be3542a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa6028226c48e1cdb2781f62cbc56bf198837f33517dc507ae4989470491a8a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b5204d-a8e9-c867-31d6-11adfaf42b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem majK2_integrable (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F) (hν : NuBound p B ν)
    (_hB0 : 0 ≤ B) (hT : 2 * π ≤ p.T) : Integrable (majK2 cϱ p ν) := by
  have hT1 : 1 ≤ p.T := by linarith [Real.pi_gt_three]
  have hT0 : 0 < p.T := by linarith
  have hB1 : 1 ≤ max B 1 := le_max_right _ _
  have hν' : NuBound p (max B 1) ν := fun τ => (hν τ).trans (by linarith [le_max_left B 1])
  have htau : ∀ k ∈ Finset.range p.d, (p.tau k : ℝ) ∈ Icc p.T (2 * p.T) := by
    intro k hk
    have := Setting.tau_mem p hF.L_pos hT0.le hk
    exact ⟨this.1, this.2⟩
  have hwk : ∀ k ∈ Finset.range p.d,
      Integrable (fun τ : ℝ => psiA cϱ p (τ - p.tau k) * |ν τ|) :=
    fun k hk => integrable_psiA_shift_mul_nu hνc hF hν' hB1 hT1 (htau k hk)
  have h : Integrable (fun q : ℝ × ℝ => ∑ k ∈ Finset.range p.d,
      (p.L ^ 2 * (psiA cϱ p (q.1 - p.tau k) * |ν q.1|)) * (psiA cϱ p (q.2 - p.tau k) * |ν q.2|)) := by
    refine integrable_finsetSum _ fun k hk => ?_
    exact ((hwk k hk).const_mul (p.L ^ 2)).mul_prod (hwk k hk)
  refine h.congr (Filter.Eventually.of_forall fun q => ?_)
  simp only [majK2]
  rw [Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => ?_
  ring

/-- `|𝓔₂(ν)| ≤ ∬_{(I×I)ᶜ} majK2(ν)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE2/Variant882c42387d3e86e9627a0e81af08001f6ca3b952d72c53fa6f64a3e0b2879567.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f23d8eb71ee49598a67dfbfdc8d83be3542a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
