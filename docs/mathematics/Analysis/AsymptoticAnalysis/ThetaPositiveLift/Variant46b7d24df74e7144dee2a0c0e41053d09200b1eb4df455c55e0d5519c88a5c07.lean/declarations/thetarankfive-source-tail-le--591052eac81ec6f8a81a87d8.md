# thetaRankFive_source_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d58cfda3152cd38cca5efeee86633fbf286643b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c115bda-859f-c747-11b0-77a9da6d06f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1497d523-fa46-8212-371a-0320f1a441f4",
  "kind": "theorem",
  "lexical_name": "thetaRankFive_source_tail_le",
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
  "slug": "thetarankfive-source-tail-le--591052eac81ec6f8a81a87d8",
  "source": {
    "blob": "4d58cfda3152cd38cca5efeee86633fbf286643b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 176,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:591052eac81ec6f8a81a87d80f14b287f135ee8d90f8ac232c2583bd53ffccdc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1497d523-fa46-8212-371a-0320f1a441f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFive_source_tail_le (n : ℕ) (hn : n ≤ 8)
    (C : ℝ) (hC : 0 ≤ C)
    (hpoly : ∀ y : ℝ, 1 ≤ y →
      |(thetaPhiDerivativePolynomial n).eval y| ≤ C * y ^ (n + 1)) :
    |thetaPhiDerivativeTapeValue n 0 -
      ∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n m 0| ≤
        6 * C * 100 ^ (n + 2) / 10 ^ 33 := by
  have hmajor := (thetaRankFiveGaussianTail_summable (2 * (n + 2)) (by omega)).mul_left
    (C * 4 ^ (n + 2))
  have hnorm : Summable (fun m : ℕ => ‖thetaPhiDerivativeModeValue n (m + 4) 0‖) :=
    hmajor.of_nonneg_of_le (fun _ => norm_nonneg _) (thetaRankFive_mode_norm_le n C hC hpoly)
  have hsum := hnorm.tsum_le_tsum (thetaRankFive_mode_norm_le n C hC hpoly) hmajor
  rw [tsum_mul_left] at hsum
  have hsplit := (thetaPhiDerivativeModeValue_summable n 0).sum_add_tsum_nat_add 4
  rw [← thetaPhiDerivativeTapeValue_eq_tsum_mode] at hsplit
  have hdiff : thetaPhiDerivativeTapeValue n 0 -
      ∑ m ∈ Finset.range 4, thetaPhiDerivativeModeValue n m 0 =
      ∑' m : ℕ, thetaPhiDerivativeModeValue n (m + 4) 0 := by linarith
  rw [hdiff, ← Real.norm_eq_abs]
  calc
    _ ≤ ∑' m : ℕ, ‖thetaPhiDerivativeModeValue n (m + 4) 0‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ (C * 4 ^ (n + 2)) * (∑' m : ℕ,
        thetaRankFiveGaussianTailTerm (2 * (n + 2)) m) := hsum
    _ ≤ (C * 4 ^ (n + 2)) * (6 * 5 ^ (2 * (n + 2)) / 10 ^ 33) :=
      mul_le_mul_of_nonneg_left
        (thetaRankFiveGaussianTail_tsum_lt (2 * (n + 2)) (by omega)).le (by positivity)
    _ = _ := by
      rw [pow_mul, show (100 : ℝ) = 4 * 5 ^ 2 by norm_num, mul_pow]
      ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d58cfda3152cd38cca5efeee86633fbf286643b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
