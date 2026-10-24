# reciprocal_sqrt_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac394472-dbba-7638-5b03-708a1137330c",
  "kind": "theorem",
  "lexical_name": "reciprocal_sqrt_sum_le",
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
  "slug": "reciprocal-sqrt-sum-le--de20047cd741f3cf09ba68a9",
  "source": {
    "blob": "7fe4c2b7919e6a62dedce9aee756b6eacf10e05d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de20047cd741f3cf09ba68a99d20c41e320a8620ecdf40ade997195f3e79aa13",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac394472-dbba-7638-5b03-708a1137330c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reciprocal_sqrt_sum_le (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ)) ≤ 2 * Real.sqrt (N : ℝ) := by
  have hstep (n : ℕ) : 1 / Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
    have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
    apply (div_le_iff₀ (Real.sqrt_pos.2 hp)).mpr
    have hn := Real.sq_sqrt (Nat.cast_nonneg n)
    have hn' := Real.sq_sqrt hp.le
    have hs := sq_nonneg (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ))
    push_cast at hn' hs ⊢
    nlinarith
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hs := hstep N
    linarith only [ih, hs]

/-- The actual short arithmetic row has its precise square-root mass bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe4c2b7919e6a62dedce9aee756b6eacf10e05d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
