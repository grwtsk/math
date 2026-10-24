# abel_ibp_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f84d56d-90f1-d6e1-1ef8-b7a0ee57034f",
  "kind": "theorem",
  "lexical_name": "abel_ibp_first",
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
  "slug": "abel-ibp-first--5302a46efb531d733c94e07e",
  "source": {
    "blob": "67038b8cde04b83ca48c8bbfe74fc60f24eab369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 155,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5302a46efb531d733c94e07e1a109d356d7d240bf0e50b93703a16de11306b13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f84d56d-90f1-d6e1-1ef8-b7a0ee57034f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abel_ibp_first (hN : 0 < N) {r g : ℝ → ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1)) :
    ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) - ∫ x in (0:ℝ)..1, r x * x
      = r 1 * Dfun s N 1 - ∫ x in (0:ℝ)..1, g x * Dfun s N x := by
  have hA := integral_gC (s := s) hN hr hg
  have hB := integral_r_mul_id hr hg
  have hgi : IntervalIntegrable g volume 0 1 := by
    rw [← uIcc_of_le zero_le_one] at hg; exact hg.intervalIntegrable
  have hq : IntervalIntegrable (fun x => g x * (x ^ 2 / 2)) volume 0 1 :=
    hgi.mul_continuousOn ((by fun_prop : Continuous fun x : ℝ => x ^ 2 / 2).continuousOn)
  have hsplit : ∫ x in (0:ℝ)..1, g x * Dfun s N x
      = (∫ x in (0:ℝ)..1, g x * Cstep s N x) - ∫ x in (0:ℝ)..1, g x * (x ^ 2 / 2) := by
    simp only [Dfun, mul_sub]
    exact intervalIntegral.integral_sub (intervalIntegrable_gC hN hg) hq
  rw [hsplit, hA, hB, Dfun_one hN]
  ring



/-! ### 3. first-order bound -/

/-- |Σ s_j r(j/N) − ∫₀¹ r x·x| ≤ |r 1|·|D 1| + M₁·∫₀¹|g| whenever |D| ≤ M₁ on [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stability/Variant68827bfde1058a7ddde7c5ffbd63698e3423c1b3b0aa2292783cc369dc4da1bc.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67038b8cde04b83ca48c8bbfe74fc60f24eab369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
