# aux₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8650c996-0df8-1462-7f7e-161199aed55e",
  "kind": "theorem",
  "lexical_name": "aux₃",
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
  "slug": "aux--516d154aadea0005f4e7d4ed",
  "source": {
    "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 485,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:516d154aadea0005f4e7d4edd2be6fca4510696ad8938c2f0979eb05d9dd1ecc",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8650c996-0df8-1462-7f7e-161199aed55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem aux₃ :
    |(fract ξ)⁻¹ - v / (u - ⌊ξ⌋ * v)| < (((u : ℝ) - ⌊ξ⌋ * v) * (2 * (u - ⌊ξ⌋ * v) - 1))⁻¹ := by
  obtain ⟨hu₀, huv⟩ := aux₂ hv h
  have hξ₀ := aux₁ hv h
  set u' := u - ⌊ξ⌋ * v with hu'
  have hu'ℝ : (u' : ℝ) = u - ⌊ξ⌋ * v := by exact_mod_cast hu'
  rw [← hu'ℝ]
  replace hu'ℝ := (eq_sub_iff_add_eq.mp hu'ℝ).symm
  obtain ⟨Hu, Hu'⟩ := aux₀ hu₀
  obtain ⟨Hv, Hv'⟩ := aux₀ (zero_lt_two.trans_le hv)
  have H₁ := div_pos (div_pos Hv Hu) hξ₀
  replace h := h.2.2
  have h' : |fract ξ - u' / v| < ((v : ℝ) * (2 * v - 1))⁻¹ := by
    rwa [hu'ℝ, add_div, mul_div_cancel _ Hv.ne', ← sub_sub, sub_right_comm] at h
  have H : (2 * u' - 1 : ℝ) ≤ (2 * v - 1) * fract ξ := by
    replace h := (abs_lt.mp h).1
    have : (2 * (v : ℝ) - 1) * (-((v : ℝ) * (2 * v - 1))⁻¹ + u' / v) = 2 * u' - (1 + u') / v := by
      field_simp; ring
    rw [hu'ℝ, add_div, mul_div_cancel _ Hv.ne', ← sub_sub, sub_right_comm, self_sub_floor,
      lt_sub_iff_add_lt, ← mul_lt_mul_left Hv', this] at h
    refine' LE.le.trans _ h.le
    rw [sub_le_sub_iff_left, div_le_one Hv, add_comm]
    exact_mod_cast huv
  have help₁ : ∀ {a b c : ℝ}, a ≠ 0 → b ≠ 0 → c ≠ 0 → |a⁻¹ - b / c| = |(a - c / b) * (b / c / a)| :=
    by intros; rw [abs_sub_comm]; congr 1; field_simp; ring
  have help₂ :
    ∀ {a b c d : ℝ}, a ≠ 0 → b ≠ 0 → c ≠ 0 → d ≠ 0 → (b * c)⁻¹ * (b / d / a) = (d * c * a)⁻¹ := by
    intros; field_simp; ring
  calc
    |(fract ξ)⁻¹ - v / u'| = |(fract ξ - u' / v) * (v / u' / fract ξ)| :=
      help₁ hξ₀.ne' Hv.ne' Hu.ne'
    _ = |fract ξ - u' / v| * (v / u' / fract ξ) := by rw [abs_mul, abs_of_pos H₁, abs_sub_comm]
    _ < ((v : ℝ) * (2 * v - 1))⁻¹ * (v / u' / fract ξ) := ((mul_lt_mul_right H₁).mpr h')
    _ = (u' * (2 * v - 1) * fract ξ)⁻¹ := (help₂ hξ₀.ne' Hv.ne' Hv'.ne' Hu.ne')
    _ ≤ ((u' : ℝ) * (2 * u' - 1))⁻¹ := by
      rwa [inv_le_inv (mul_pos (mul_pos Hu Hv') hξ₀) <| mul_pos Hu Hu', mul_assoc,
        mul_le_mul_left Hu]

-- The conditions `ass ξ u v` persist in the inductive step.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
