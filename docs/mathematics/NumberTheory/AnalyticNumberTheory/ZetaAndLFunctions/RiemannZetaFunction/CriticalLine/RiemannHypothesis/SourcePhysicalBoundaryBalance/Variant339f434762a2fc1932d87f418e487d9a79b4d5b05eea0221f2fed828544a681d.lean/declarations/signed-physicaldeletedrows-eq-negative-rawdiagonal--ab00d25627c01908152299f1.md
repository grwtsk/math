# signed_physicalDeletedRows_eq_negative_rawDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ec4f977-25f6-f0f4-9e20-4ca31ba84a24",
  "kind": "theorem",
  "lexical_name": "signed_physicalDeletedRows_eq_negative_rawDiagonal",
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
  "slug": "signed-physicaldeletedrows-eq-negative-rawdiagonal--ab00d25627c01908152299f1",
  "source": {
    "blob": "b729c8944b5cc1e3578285f43d860bbb8527dbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab00d25627c01908152299f1b1d16ced08bfce3e138472a9683232773f35e0e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ec4f977-25f6-f0f4-9e20-4ca31ba84a24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_physicalDeletedRows_eq_negative_rawDiagonal (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      physicalQuotientDeletedRowsAt A d (vaughanCutoff A)) = -typeTwoDiagonal A := by
  classical
  have hrow (m : ℕ)
      (hm : m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)) :
      beta (vaughanCutoff A) m * sourcePlainWeight A ((m * m : ℕ) : ℝ) =
        -∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
          ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
            if d * k = m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0 := by
    have hs := beta_weighted_long_sum (vaughanCutoff A) (sourceKernelCutoff A)
      (vaughanCutoff_pos A hA)
      (fun n => if n = m then sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0)
    simpa only [mul_ite, mul_zero, Finset.sum_ite_eq', hm, if_true,
      Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm] using hs
  have ht : typeTwoDiagonal A =
      -∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        physicalQuotientDeletedRowsAt A d (vaughanCutoff A) := by
    unfold typeTwoDiagonal
    calc
      _ = ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
          vonMangoldt m * (-∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
            ∑ k ∈ Finset.Ioc (vaughanCutoff A / d) (sourceKernelCutoff A / d),
              if d * k = m then sourcePlainWeight A ((d * m * k : ℕ) : ℝ) else 0) := by
        apply Finset.sum_congr rfl
        intro m hm
        rw [mul_assoc, hrow m hm]
      _ = _ := by
        simp_rw [mul_neg, Finset.mul_sum]
        rw [Finset.sum_neg_distrib, Finset.sum_comm]
        congr 1
        apply Finset.sum_congr rfl
        intro d _
        unfold physicalQuotientDeletedRowsAt
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro m _
        ring
  linarith

/-- The original centered deletion retains the independent mean payment after raw diagonal reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant339f434762a2fc1932d87f418e487d9a79b4d5b05eea0221f2fed828544a681d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b729c8944b5cc1e3578285f43d860bbb8527dbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
