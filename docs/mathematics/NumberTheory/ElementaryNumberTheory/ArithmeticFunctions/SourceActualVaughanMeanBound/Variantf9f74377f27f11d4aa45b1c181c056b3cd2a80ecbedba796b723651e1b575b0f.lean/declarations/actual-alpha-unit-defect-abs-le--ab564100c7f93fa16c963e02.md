# actual_alpha_unit_defect_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9bb1a26-7a3f-3c0e-550e-f643eaf92de2",
  "kind": "theorem",
  "lexical_name": "actual_alpha_unit_defect_abs_le",
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
  "slug": "actual-alpha-unit-defect-abs-le--ab564100c7f93fa16c963e02",
  "source": {
    "blob": "77e8a2f20942328bf3e897fc329fe58e695eed28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab564100c7f93fa16c963e028f1cae5fea849219deb9f94a559fed813178bf5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9bb1a26-7a3f-3c0e-550e-f643eaf92de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_alpha_unit_defect_abs_le (U : ℕ) (hU : 1 ≤ U) :
    |(U : ℝ) * alpha U - 1| ≤ (U : ℝ) - 1 := by
  rw [actual_alpha_unit_floor_defect U hU]
  have hs : (∑ d ∈ Finset.Icc 2 U,
      |(moebius d : ℝ) * ((U : ℝ) / d - (U / d : ℕ))|) ≤
      ∑ _d ∈ Finset.Icc 2 U, (1 : ℝ) := by
    apply Finset.sum_le_sum
    intro d hd
    have hq := quotient_defect_bounds U d (by have := (Finset.mem_Icc.mp hd).1; omega)
    have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
    rw [abs_mul, abs_of_nonneg hq.1]
    exact mul_le_one₀ hm hq.1 hq.2
  have hc : (Finset.Icc 2 U).card = U - 1 := by
    rw [Nat.card_Icc]
    omega
  have hn : (∑ _d ∈ Finset.Icc 2 U, (1 : ℝ)) = (U : ℝ) - 1 := by
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc, Nat.cast_sub hU, Nat.cast_one]
  exact (Finset.abs_sum_le_sum_abs _ _).trans (hs.trans_eq hn)

/-- Actual signed reciprocal Moebius mean has its literal unit-sensitive bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e8a2f20942328bf3e897fc329fe58e695eed28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
