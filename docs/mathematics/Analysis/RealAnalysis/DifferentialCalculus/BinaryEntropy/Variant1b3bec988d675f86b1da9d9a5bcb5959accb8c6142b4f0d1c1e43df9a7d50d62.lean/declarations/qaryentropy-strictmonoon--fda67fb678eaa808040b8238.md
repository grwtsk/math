# qaryEntropy_strictMonoOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1d5ed3a-4a3b-0f84-dfab-9cb029bca978",
  "kind": "lemma",
  "lexical_name": "qaryEntropy_strictMonoOn",
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
  "slug": "qaryentropy-strictmonoon--fda67fb678eaa808040b8238",
  "source": {
    "blob": "6fbf074cde11f37267238c5e7978d884376cb4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 372,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda67fb678eaa808040b82387c74aae4c57895d731946113b5f83d9bfcfc7d09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d5ed3a-4a3b-0f84-dfab-9cb029bca978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma qaryEntropy_strictMonoOn (qLe2 : 2 ≤ q) :
    StrictMonoOn (qaryEntropy q) (Icc 0 (1 - 1/q)) := by
  intro p1 hp1 p2 hp2 p1le2
  apply strictMonoOn_of_deriv_pos (convex_Icc 0 (1 - 1/(q : ℝ))) _ _ hp1 hp2 p1le2
  · exact qaryEntropy_continuous.continuousOn
  · intro p hp
    have : 2 ≤ (q : ℝ) := Nat.ofNat_le_cast.mpr qLe2
    have zero_le_qinv : 0 < (q : ℝ)⁻¹ := by positivity
    have : 0 < 1 - p := by
      simp only [sub_pos, hp.2]
      have p_lt_1_minus_qinv : p < 1 - (q : ℝ)⁻¹ := by
        simp_all only [inv_pos, interior_Icc, mem_Ioo, one_div]
      linarith
    simp only [one_div, interior_Icc, mem_Ioo] at hp
    rw [deriv_qaryEntropy (by linarith)]
    · field_simp
      rw [← log_mul (by linarith) (by linarith)]
      apply Real.strictMonoOn_log (mem_Ioi.mpr hp.1)
      · simp_all only [mem_Ioi, mul_pos_iff_of_pos_left, show 0 < (q : ℝ) - 1 by linarith]
      · have qpos : 0 < (q : ℝ) := by positivity
        have : q * p < q - 1 := by
          convert (mul_lt_mul_left qpos).2 hp.2 using 1
          simp only [mul_sub, mul_one, isUnit_iff_ne_zero, ne_eq, ne_of_gt qpos, not_false_eq_true,
            IsUnit.mul_inv_cancel]
        linarith
    exact (ne_of_gt (lt_add_neg_iff_lt.mp this : p < 1)).symm

/-- Qary entropy is strictly decreasing in the interval [1 - q⁻¹, 1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fbf074cde11f37267238c5e7978d884376cb4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
