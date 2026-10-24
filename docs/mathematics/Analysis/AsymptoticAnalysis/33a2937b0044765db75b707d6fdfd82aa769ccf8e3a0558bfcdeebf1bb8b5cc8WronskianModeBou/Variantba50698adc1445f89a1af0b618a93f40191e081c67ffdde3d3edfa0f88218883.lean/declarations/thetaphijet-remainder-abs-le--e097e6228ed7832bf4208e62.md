# thetaPhiJet_remainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e7e835e-69fc-a29e-5a52-1b222279d7f2",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_remainder_abs_le",
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
  "slug": "thetaphijet-remainder-abs-le--e097e6228ed7832bf4208e62",
  "source": {
    "blob": "150dc3cec457277502f6cf48c954d69cfa0d068c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 210,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e097e6228ed7832bf4208e622722533e833eae9f8c43b79f892ca4fe3e6407a8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e7e835e-69fc-a29e-5a52-1b222279d7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_remainder_abs_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
      thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))| ≤
      thetaPhiJetErrorCoefficient k * A ^ (k.val + 1) * Real.exp (-8 * A) := by
  have hnorm : Summable (fun m => ‖jetRemainderTerm k A m‖) :=
    ((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _) (jetRemainderTerm_norm_le k hA)
  have hsum := hnorm.tsum_le_tsum (jetRemainderTerm_norm_le k hA)
    ((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ = ‖∑' m, jetRemainderTerm k A m‖ := (Real.norm_eq_abs _).symm
    _ ≤ ∑' m, ‖jetRemainderTerm k A m‖ := norm_tsum_le_tsum_norm hnorm
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (∑' m : ℕ, ((m : ℝ) + 3) ^ (2 * k.val + 4) *
          Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := hsum
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (2 * 3 ^ (2 * k.val + 4) * Real.exp (-8 * A)) :=
      mul_le_mul_of_nonneg_left (thetaGaussianFromThree_tsum_le hA (2 * k.val + 4) (by omega))
        (by positivity)
    _ = _ := by unfold thetaPhiJetErrorCoefficient; ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variantba50698adc1445f89a1af0b618a93f40191e081c67ffdde3d3edfa0f88218883.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150dc3cec457277502f6cf48c954d69cfa0d068c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
