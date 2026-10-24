# thetaGaussian_ninth_power_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29fb7ceb-f24c-b98b-d452-539fe0e6b3cd",
  "kind": "theorem",
  "lexical_name": "thetaGaussian_ninth_power_bound",
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
  "slug": "thetagaussian-ninth-power-bound--a78193d54934df5f4cce9e3a",
  "source": {
    "blob": "b002cdd456b8cfdbe12d853269e05f4ba7665b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 133,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a78193d54934df5f4cce9e3a448546bd61086a0e1211727cbcb1d42775256a7a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29fb7ceb-f24c-b98b-d452-539fe0e6b3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussian_ninth_power_bound {A : ℝ} (hA : 3 ≤ A) :
    A ^ 9 * Real.exp (-8 * A) ≤ 3 ^ 9 / 20 ^ 8 := by
  have ha : 0 ≤ A := by linarith
  have he : A ≤ 3 * Real.exp ((A - 3) / 3) := by
    have h := Real.add_one_le_exp ((A - 3) / 3)
    linarith
  have hp := pow_le_pow_left₀ ha he 9
  have hexp : (3 * Real.exp ((A - 3) / 3)) ^ 9 =
      3 ^ 9 * Real.exp (3 * (A - 3)) := by
    rw [mul_pow, ← Real.exp_nat_mul]
    congr 2
    norm_num
    ring
  rw [hexp] at hp
  have hprod := mul_le_mul_of_nonneg_right hp (Real.exp_nonneg (-8 * A))
  have heq : (3 ^ 9 * Real.exp (3 * (A - 3))) * Real.exp (-8 * A) =
      3 ^ 9 * Real.exp (-5 * A - 9) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [heq] at hprod
  have ht : Real.exp (-5 * A - 9) ≤ Real.exp (-24) := Real.exp_le_exp.mpr (by linarith)
  have hpow := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 8
  have h24 : Real.exp (24 : ℝ) = Real.exp 3 ^ 8 := by
    convert! Real.exp_nat_mul (3 : ℝ) 8 using 1
    norm_num
  have hlast : Real.exp (-24 : ℝ) ≤ 1 / 20 ^ 8 := by
    rw [Real.exp_neg, ← one_div]
    apply one_div_le_one_div_of_le (by positivity)
    rwa [h24]
  calc
    _ ≤ 3 ^ 9 * Real.exp (-5 * A - 9) := hprod
    _ ≤ 3 ^ 9 * Real.exp (-24) := mul_le_mul_of_nonneg_left ht (by positivity)
    _ ≤ 3 ^ 9 * (1 / 20 ^ 8) := mul_le_mul_of_nonneg_left hlast (by positivity)
    _ = _ := by ring

/-- Explicit error coefficient for a source jet through order four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b002cdd456b8cfdbe12d853269e05f4ba7665b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
