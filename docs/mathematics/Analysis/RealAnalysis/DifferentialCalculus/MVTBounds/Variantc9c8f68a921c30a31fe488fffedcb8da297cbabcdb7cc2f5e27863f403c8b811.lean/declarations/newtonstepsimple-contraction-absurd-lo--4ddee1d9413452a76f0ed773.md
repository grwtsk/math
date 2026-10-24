# newtonStepSimple_contraction_absurd_lo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a251b80-b595-cb79-0e61-0acf5f877532",
  "kind": "lemma",
  "lexical_name": "newtonStepSimple_contraction_absurd_lo",
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
  "slug": "newtonstepsimple-contraction-absurd-lo--4ddee1d9413452a76f0ed773",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 562,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ddee1d9413452a76f0ed7733e329c2d962bfa0886a5103e2c0cf8e499f1f863",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a251b80-b595-cb79-0e61-0acf5f877532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newtonStepSimple_contraction_absurd_lo
    (e : Expr) (I N : IntervalRat)
    (hSimple : newtonStepSimple e I 0 = some N)
    (hContract : N.lo > I.lo ∧ N.hi < I.hi)
    (hdI_pos : 0 < (derivInterval e (fun _ => I) 0).lo)
    (hMVT : (evalInterval1 e (IntervalRat.singleton I.midpoint)).lo / (derivInterval e (fun _ => I) 0).lo ≤
            -((I.hi - I.lo) / 2)) : False := by
  -- Extract the structure of newtonStepSimple
  obtain ⟨hdI_nonzero, hN_lo, hN_hi⟩ := newtonStepSimple_extract e I N hSimple
  -- Define the key quantities
  let c := I.midpoint
  let fc := evalInterval1 e (IntervalRat.singleton c)
  let dI := derivInterval e (fun _ => I) 0
  let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
  let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
  let hw : ℚ := (I.hi - I.lo) / 2
  -- From contraction: N.hi < I.hi, but N.hi = min I.hi (c - Q.lo)
  -- This means c - Q.lo < I.hi, so Q.lo > c - I.hi = -hw
  have hQ_lo_gt_neg_hw : Q.lo > -hw := by
    have hmin_lt : min I.hi (c - Q.lo) < I.hi := by
      rw [← hN_hi]; exact hContract.2
    have hright_lt : c - Q.lo < I.hi := by
      by_contra! h
      have : min I.hi (c - Q.lo) = I.hi := min_eq_left h
      rw [this] at hmin_lt
      exact lt_irrefl I.hi hmin_lt
    -- c - Q.lo < I.hi means Q.lo > c - I.hi
    have hmid : c = (I.lo + I.hi) / 2 := rfl
    have hc_minus_Ihi : c - I.hi = -hw := by
      simp [hmid]
      ring
    linarith
  -- But quotient_lo_upper_bound says Q.lo ≤ fc.lo / dI.lo
  have hQ_lo_le : Q.lo ≤ fc.lo / dI.lo := quotient_lo_upper_bound hdI_pos
  -- And hMVT says fc.lo / dI.lo ≤ -hw
  -- So Q.lo ≤ -hw, contradicting Q.lo > -hw
  have hMVT' : fc.lo / dI.lo ≤ -hw := hMVT
  linarith

/-! ### Contradiction lemmas for decreasing functions -/

/-- Contradiction lemma for decreasing function: If f > 0 at I.hi with f' ≤ dI.hi < 0 (decreasing),
    then the Newton quotient Q.lo = fc.hi/dI.hi ≤ -hw, contradicting strict contraction Q.lo > -hw. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
