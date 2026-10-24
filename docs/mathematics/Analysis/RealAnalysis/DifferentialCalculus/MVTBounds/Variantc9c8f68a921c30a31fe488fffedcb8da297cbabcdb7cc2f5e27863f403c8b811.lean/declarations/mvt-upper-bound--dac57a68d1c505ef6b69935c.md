# mvt_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8204fa59-2f7f-6669-f2e0-78388180879d",
  "kind": "lemma",
  "lexical_name": "mvt_upper_bound",
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
  "slug": "mvt-upper-bound--dac57a68d1c505ef6b69935c",
  "source": {
    "blob": "41f5fb74a45ad2a370db00f21717c481ebe0bfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac57a68d1c505ef6b69935cc0335f1059b8278fa40fa5983cf41d298b4144ae",
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

Occurrence: `result:8204fa59-2f7f-6669-f2e0-78388180879d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvt_upper_bound (e : Expr) (hsupp : ExprSupported e) (_hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat) (C : ℝ)
    (hC : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ≤ C)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi)) :
    ∀ x y, x ∈ I → y ∈ I → x ≤ y →
      evalFunc1 e y - evalFunc1 e x ≤ C * (y - x) := by
  intro x y hx hy hxy
  have hConvex : Convex ℝ (Set.Icc (I.lo : ℝ) I.hi) := convex_Icc _ _
  have hDiff : DifferentiableOn ℝ (evalFunc1 e) (interior (Set.Icc (I.lo : ℝ) I.hi)) := by
    have hdiff := evalFunc1_differentiable e hsupp
    exact hdiff.differentiableOn
  have hC' : ∀ ξ ∈ interior (Set.Icc (I.lo : ℝ) I.hi), deriv (evalFunc1 e) ξ ≤ C := by
    intro ξ hξ
    have hξ_in_I : ξ ∈ I := by
      simp only [IntervalRat.mem_def]
      have := interior_subset hξ
      simp only [Set.mem_Icc] at this
      exact this
    exact hC ξ hξ_in_I
  have hx_Icc : x ∈ Set.Icc (I.lo : ℝ) I.hi := by
    simp only [IntervalRat.mem_def] at hx
    exact hx
  have hy_Icc : y ∈ Set.Icc (I.lo : ℝ) I.hi := by
    simp only [IntervalRat.mem_def] at hy
    exact hy
  exact hConvex.image_sub_le_mul_sub_of_deriv_le hCont hDiff hC' x hx_Icc y hy_Icc hxy

/-! ### Contradiction lemmas for increasing functions -/

/-- Contradiction lemma: If f > 0 at I.lo with f' ≥ dI.lo > 0 (increasing),
    then the Newton quotient Q.hi > hw, contradicting strict contraction Q.hi < hw.

    Key argument:
    1. By MVT: f(c) - f(I.lo) ≥ dI.lo * hw, so f(c) ≥ f(I.lo) + dI.lo * hw > dI.lo * hw
    2. fc.hi ≥ f(c) > dI.lo * hw
    3. Q.hi = fc.hi / dI.lo > hw
    4. But contraction requires Q.hi < hw (from N.lo > I.lo)
    5. Contradiction -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MVTBounds/Variantc9c8f68a921c30a31fe488fffedcb8da297cbabcdb7cc2f5e27863f403c8b811.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41f5fb74a45ad2a370db00f21717c481ebe0bfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
