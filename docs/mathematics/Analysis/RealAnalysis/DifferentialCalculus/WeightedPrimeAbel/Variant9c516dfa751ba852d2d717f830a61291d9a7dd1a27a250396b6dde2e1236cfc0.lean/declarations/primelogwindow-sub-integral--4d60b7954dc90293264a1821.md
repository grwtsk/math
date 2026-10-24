# primeLogWindow_sub_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2981b5af-064b-a491-a302-207893a39306",
  "kind": "theorem",
  "lexical_name": "primeLogWindow_sub_integral",
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
  "slug": "primelogwindow-sub-integral--4d60b7954dc90293264a1821",
  "source": {
    "blob": "74cb5fd35b264c09f8621a7c38bd130d27393855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d60b7954dc90293264a182176356c4f730cd99b658ab79a65ff874c691cde7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2981b5af-064b-a491-a302-207893a39306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeLogWindow_sub_integral (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    primeLogWindow a b F - (∫ t in a..b, F t) =
      F b * primeLogError b - F a * primeLogError a -
        ∫ t in a..b, primeLogError t * deriv F t := by
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := F) (v' := deriv F)
    (fun t _ => hasDerivAt_id t)
    (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
    (continuous_const.intervalIntegrable a b)
    (hF.continuous_deriv_one.intervalIntegrable a b)
  simp only [one_mul] at hparts
  have hint : (∫ t in a..b, primeLogError t * deriv F t) =
      (∫ t in a..b, primeLogPrefix t * deriv F t) - (∫ t in a..b, t * deriv F t) := by
    simp only [primeLogError, sub_mul]
    exact intervalIntegral.integral_sub
      (primeLogPrefix_mul_deriv_intervalIntegrable a b hab F hF)
      ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  rw [primeLogWindow_abel a b ha hab F hF, hint]
  dsimp only [primeLogError]
  nlinarith

/-- Endpoint and total-variation budget for the weighted-prime replacement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74cb5fd35b264c09f8621a7c38bd130d27393855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
