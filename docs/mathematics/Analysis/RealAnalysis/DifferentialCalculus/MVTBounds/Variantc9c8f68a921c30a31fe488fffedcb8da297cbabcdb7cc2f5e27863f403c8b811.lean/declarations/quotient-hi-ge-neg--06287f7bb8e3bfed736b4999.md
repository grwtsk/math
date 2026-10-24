# quotient_hi_ge_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76f921eb-fc81-4f1b-6aa4-4cb8bab814ee",
  "kind": "lemma",
  "lexical_name": "quotient_hi_ge_neg",
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
  "slug": "quotient-hi-ge-neg--06287f7bb8e3bfed736b4999",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06287f7bb8e3bfed736b499971bca6bc3aec818c5152aeec23edfc42e0d2377d",
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

Occurrence: `result:76f921eb-fc81-4f1b-6aa4-4cb8bab814ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_hi_ge_neg {fc : IntervalRat} {dI : IntervalRat.IntervalRatNonzero}
    (hdI_neg : dI.hi < 0) :
    let Q := IntervalRat.mul fc (IntervalRat.invNonzero dI)
    Q.hi ≥ fc.lo / dI.hi := by
  -- For negative dI: invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹⟩
  -- Q.hi = max4 of all corners. One corner is fc.lo * dI.hi⁻¹.
  intro Q
  have hdI_lo_neg : dI.lo < 0 := lt_of_le_of_lt dI.le hdI_neg
  have hdInv : IntervalRat.invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹, by
    exact (inv_le_inv_of_neg hdI_neg hdI_lo_neg).mpr dI.le⟩ := by
    unfold IntervalRat.invNonzero
    have h1 : ¬(0 : ℚ) < dI.lo := by linarith
    have h2 : ¬(0 : ℚ) < dI.hi := by linarith
    simp only [h1]
    rfl
  show (IntervalRat.mul fc (IntervalRat.invNonzero dI)).hi ≥ fc.lo / dI.hi
  rw [hdInv]
  simp only [IntervalRat.mul, div_eq_mul_inv]
  -- fc.lo * dI.hi⁻¹ is one of the four corners (fc.lo * inv.lo where inv.lo = dI.hi⁻¹)
  exact le_trans (le_max_left _ _) (le_max_left _ _)

/-- For negative dI, the quotient Q has Q.lo ≤ fc.hi / dI.hi.
    This is because fc.hi * dI.hi⁻¹ is one of the four corners in Q = fc * inv(dI),
    and Q.lo = min of all corners.
    This bound is used for Newton contraction contradiction when f > 0 at both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
