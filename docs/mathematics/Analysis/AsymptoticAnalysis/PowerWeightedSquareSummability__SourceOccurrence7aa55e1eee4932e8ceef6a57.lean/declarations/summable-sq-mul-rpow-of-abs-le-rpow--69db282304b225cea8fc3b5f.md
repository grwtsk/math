# summable_sq_mul_rpow_of_abs_le_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56a6ab48-b590-4e5a-e9bc-c1169f7afe2b",
  "kind": "theorem",
  "lexical_name": "summable_sq_mul_rpow_of_abs_le_rpow",
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
  "slug": "summable-sq-mul-rpow-of-abs-le-rpow--69db282304b225cea8fc3b5f",
  "source": {
    "blob": "86f3956f3032935b8e4f7a9ea14db870b35cb92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 20,
    "path": "GRWTSK/Analysis/Asymptotics/PowerWeightedSquareSummability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69db282304b225cea8fc3b5f426a3fe427b3163b4f9a836e26f2a4fb4873589b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PowerWeightedSquareSummability__SourceOccurrence7aa55e1eee4932e8ceef6a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56a6ab48-b590-4e5a-e9bc-c1169f7afe2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_sq_mul_rpow_of_abs_le_rpow
    (f : ℕ → ℝ) {C α q : ℝ}
    (hf0 : f 0 = 0)
    (hf : ∀ n : ℕ, 1 ≤ n → |f n| ≤ C * (n : ℝ) ^ α)
    (hexp : 2 * α - q < -1) :
    Summable (fun n : ℕ => f n ^ 2 * (n : ℝ) ^ (-q)) := by
  apply Summable.of_nonneg_of_le
    (fun n => mul_nonneg (sq_nonneg _) (Real.rpow_nonneg (Nat.cast_nonneg n) _))
    (fun n => ?_)
    ((Real.summable_nat_rpow.mpr hexp).mul_left (C ^ 2))
  rcases n with _ | n
  · have hne : 2 * α - q ≠ 0 := by linarith
    simp [hf0, Real.zero_rpow, hne]
  · have hn : 1 ≤ n + 1 := by omega
    have hnpos : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    have hbound := hf (n + 1) hn
    have hsq : f (n + 1) ^ 2 ≤
        (C * ((n + 1 : ℕ) : ℝ) ^ α) ^ 2 := by
      rw [← sq_abs (f (n + 1))]
      simpa only [pow_two] using
        mul_self_le_mul_self (abs_nonneg _) hbound
    have hrpow : (((n + 1 : ℕ) : ℝ) ^ α) ^ 2 =
        ((n + 1 : ℕ) : ℝ) ^ (2 * α) := by
      calc
        _ = (((n + 1 : ℕ) : ℝ) ^ α) ^ (2 : ℝ) :=
          (Real.rpow_natCast _ 2).symm
        _ = ((n + 1 : ℕ) : ℝ) ^ (α * 2) :=
          (Real.rpow_mul hnpos.le α 2).symm
        _ = _ := by ring_nf
    calc
      f (n + 1) ^ 2 * ((n + 1 : ℕ) : ℝ) ^ (-q) ≤
          (C * ((n + 1 : ℕ) : ℝ) ^ α) ^ 2 *
            ((n + 1 : ℕ) : ℝ) ^ (-q) :=
        mul_le_mul_of_nonneg_right hsq (Real.rpow_nonneg hnpos.le _)
      _ = C ^ 2 * ((n + 1 : ℕ) : ℝ) ^ (2 * α - q) := by
        rw [mul_pow, hrpow, mul_assoc, ← Real.rpow_add hnpos]
        ring_nf

end GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

#print axioms GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability.summable_sq_mul_rpow_of_abs_le_rpow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PowerWeightedSquareSummability__SourceOccurrence7aa55e1eee4932e8ceef6a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PowerWeightedSquareSummability.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f3956f3032935b8e4f7a9ea14db870b35cb92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
