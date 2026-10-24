# initial_pairing_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f116ba5-a5eb-667e-9f97-ce67f139d16b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a30f8db1-cbff-7db6-78f5-9e04450ff7d9",
  "kind": "theorem",
  "lexical_name": "initial_pairing_abs_le",
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
  "slug": "initial-pairing-abs-le--80dcc437cb39e9e9368577c4",
  "source": {
    "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dcc437cb39e9e9368577c480f3a1e3a9432fe9b879d1e145afc7eda1b1bd5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a30f8db1-cbff-7db6-78f5-9e04450ff7d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initial_pairing_abs_le (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) (B : ℝ)
    (hB : ∀ s ∈ Icc (0 : ℝ) (Real.log 3), |deriv G s| ≤ B) :
    |-(∫ s in (0 : ℝ)..Real.log 3, weightedMobiusPrimitive s * deriv G s)| ≤
      (Real.log 2 + (1 - 1 / Real.sqrt 2) * (Real.log 3 - Real.log 2)) * B := by
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : Real.log 2 ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have hFTC (a b : ℝ) : (∫ s in a..b, deriv G s) = G b - G a :=
    intervalIntegral.integral_deriv_eq_sub
      (fun s _ => hG.differentiable (by norm_num) s)
      ((hG.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  have hfirst : |G (Real.log 2) - G 0| ≤ B * Real.log 2 := by
    rw [← hFTC]
    have hb := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := Real.log 2) (C := B) (f := deriv G) (fun s hs => ?_)
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg h2] using hb
    · rw [uIoc_of_le h2] at hs
      simpa only [Real.norm_eq_abs] using hB s ⟨hs.1.le, hs.2.trans h23⟩
  have hsecond : |G (Real.log 3) - G (Real.log 2)| ≤ B * (Real.log 3 - Real.log 2) := by
    rw [← hFTC]
    have hb := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := Real.log 2) (b := Real.log 3) (C := B) (f := deriv G) (fun s hs => ?_)
    · simpa only [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr h23)] using hb
    · rw [uIoc_of_le h23] at hs
      simpa only [Real.norm_eq_abs] using hB s ⟨h2.trans hs.1.le, hs.2⟩
  rw [initial_pairing_identity G hG]
  calc
    _ = |-(G (Real.log 2) - G 0) -
        (1 - 1 / Real.sqrt 2) * (G (Real.log 3) - G (Real.log 2))| := by
      congr 1
      ring
    _ ≤ |G (Real.log 2) - G 0| +
        (1 - 1 / Real.sqrt 2) * |G (Real.log 3) - G (Real.log 2)| := by
      simpa only [sub_zero, zero_sub, abs_neg, abs_mul,
        abs_of_nonneg first_prime_block_weight_pos.le] using
        abs_sub_le (-(G (Real.log 2) - G 0)) 0
          ((1 - 1 / Real.sqrt 2) * (G (Real.log 3) - G (Real.log 2)))
    _ ≤ B * Real.log 2 +
        (1 - 1 / Real.sqrt 2) * (B * (Real.log 3 - Real.log 2)) :=
      add_le_add hfirst (mul_le_mul_of_nonneg_left hsecond first_prime_block_weight_pos.le)
    _ = _ := by ring

/-- The exact first two signed blocks for the unchanged source kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b3e1df1edd6d6f55a291a43f55be52f3387428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
