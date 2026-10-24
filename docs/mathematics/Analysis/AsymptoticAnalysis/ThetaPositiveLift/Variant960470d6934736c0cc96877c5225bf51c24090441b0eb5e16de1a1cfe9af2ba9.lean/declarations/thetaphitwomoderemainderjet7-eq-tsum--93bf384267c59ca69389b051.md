# thetaPhiTwoModeRemainderJet7_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db4c4974-4bff-39e4-fc5a-0e62e2497bcd",
  "kind": "theorem",
  "lexical_name": "thetaPhiTwoModeRemainderJet7_eq_tsum",
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
  "slug": "thetaphitwomoderemainderjet7-eq-tsum--93bf384267c59ca69389b051",
  "source": {
    "blob": "a4e79eb4425ab327c0b2b1364b473ab2fd786db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 52,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant960470d6934736c0cc96877c5225bf51c24090441b0eb5e16de1a1cfe9af2ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93bf384267c59ca69389b051d91fa526381728e1d8e9b40caa765ae4fdf0b15f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant960470d6934736c0cc96877c5225bf51c24090441b0eb5e16de1a1cfe9af2ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4c4974-4bff-39e4-fc5a-0e62e2497bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTwoModeRemainderJet7_eq_tsum
    (k : Fin 7) (t : ℝ) :
    thetaPhiTwoModeRemainderJet7 t k =
      ∑' m : ℕ,
        thetaPhiTwoModeRemainderTerm7 k (thetaModeA t) m := by
  let f : ℕ → ℝ :=
    thetaPhiNormalizedModeTerm7 k (thetaModeA t)
  have hs : Summable f := by
    change Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial7 k
        (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
      Real.exp
        (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1)))
    exact thetaPhiJet7_polynomial_summable k t
  have hsplit := hs.sum_add_tsum_nat_add 2
  have h0 :
      f 0 = thetaPhiJetPolynomial7 k (thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
  have h1 :
      f 1 =
        4 * Real.exp (-3 * thetaModeA t) *
          thetaPhiJetPolynomial7 k (4 * thetaModeA t) := by
    simp [f, thetaPhiNormalizedModeTerm7]
    ring
  have hhead :
      (∑ i ∈ Finset.range 2, f i) =
        thetaPhiTwoModeJet7 (thetaModeA t)
          (Real.exp (-3 * thetaModeA t)) k := by
    have hrange :
        (∑ i ∈ Finset.range 2, f i) = f 0 + f 1 := by
      norm_num [Finset.sum_range_succ]
    rw [hrange, h0, h1]
    unfold thetaPhiTwoModeJet7
    ring
  have hfull :
      thetaPhiNormalizedJet7 t k = ∑' m : ℕ, f m := by
    rfl
  have htail :
      (∑' m : ℕ, f (m + 2)) =
        ∑' m : ℕ,
          thetaPhiTwoModeRemainderTerm7 k (thetaModeA t) m := by
    apply tsum_congr
    intro m
    exact thetaPhiNormalizedModeTerm7_shift_two
      k (thetaModeA t) m
  unfold thetaPhiTwoModeRemainderJet7
  rw [hfull, ← htail, ← hhead]
  linarith

/-- Coordinatewise exact decomposition of the normalized source around the
first two modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant960470d6934736c0cc96877c5225bf51c24090441b0eb5e16de1a1cfe9af2ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant960470d6934736c0cc96877c5225bf51c24090441b0eb5e16de1a1cfe9af2ba9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e79eb4425ab327c0b2b1364b473ab2fd786db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
