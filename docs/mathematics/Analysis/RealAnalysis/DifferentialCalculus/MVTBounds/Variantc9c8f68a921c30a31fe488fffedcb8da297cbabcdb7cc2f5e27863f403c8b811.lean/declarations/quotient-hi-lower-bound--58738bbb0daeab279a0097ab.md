# quotient_hi_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdd41ff0-4a63-a2e4-b17c-d30e2ed5b4cc",
  "kind": "lemma",
  "lexical_name": "quotient_hi_lower_bound",
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
  "slug": "quotient-hi-lower-bound--58738bbb0daeab279a0097ab",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58738bbb0daeab279a0097ab29b861329bd34b5e18a4d9a68cbddfa4905b7ad0",
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

Occurrence: `result:bdd41ff0-4a63-a2e4-b17c-d30e2ed5b4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotient_hi_lower_bound {fc : IntervalRat} {dI : IntervalRat.IntervalRatNonzero}
    (hdI_pos : 0 < dI.lo) :
    let Q := IntervalRat.mul fc (IntervalRat.invNonzero dI)
    Q.hi ≥ fc.hi / dI.lo := by
  intro Q
  -- invNonzero for positive dI gives [1/dI.hi, 1/dI.lo]
  have hdInv : IntervalRat.invNonzero dI = ⟨dI.hi⁻¹, dI.lo⁻¹, by
    have hlo : (0 : ℚ) < dI.lo := hdI_pos
    have hhi : (0 : ℚ) < dI.hi := lt_of_lt_of_le hlo dI.le
    exact inv_anti₀ hlo dI.le⟩ := by
    unfold IntervalRat.invNonzero
    simp only [hdI_pos, ↓reduceDIte]
  -- Q.hi = max of corners, which is ≥ fc.hi * dI.lo⁻¹
  show (IntervalRat.mul fc (IntervalRat.invNonzero dI)).hi ≥ fc.hi / dI.lo
  rw [hdInv]
  -- IntervalRat.mul.hi = max(max(a*c, a*d), max(b*c, b*d)) where [a,b] = fc, [c,d] = invNonzero
  -- Here d = dI.lo⁻¹, so fc.hi * dI.lo⁻¹ appears in the max
  simp only [IntervalRat.mul, div_eq_mul_inv]
  -- fc.hi * dI.lo⁻¹ ≤ max(fc.hi * dI.hi⁻¹, fc.hi * dI.lo⁻¹) ≤ max(max(..), max(..))
  exact le_trans (le_max_right _ _) (le_max_right _ _)

/-- When dI.lo > 0, the quotient Q has Q.lo ≤ fc.lo / dI.lo. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
