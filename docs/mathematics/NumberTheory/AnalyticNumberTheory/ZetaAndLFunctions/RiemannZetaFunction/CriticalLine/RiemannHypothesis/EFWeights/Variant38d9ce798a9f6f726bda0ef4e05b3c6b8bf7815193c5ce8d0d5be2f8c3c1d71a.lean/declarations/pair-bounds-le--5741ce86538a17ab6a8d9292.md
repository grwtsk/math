# pair_bounds_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51c0e865-2a6e-8978-5c16-69085b4472d8",
  "kind": "lemma",
  "lexical_name": "pair_bounds_le",
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
  "slug": "pair-bounds-le--5741ce86538a17ab6a8d9292",
  "source": {
    "blob": "989e3cba3f152f630a41de9f9ad775f9ec0a9611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5741ce86538a17ab6a8d929262546439792dfaf3bdfc3879221fde665a5cafde",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c0e865-2a6e-8978-5c16-69085b4472d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pair_bounds_le (w : TestWeight.WindowAt P T C) (z : ℂ) (hz : |z.im| ≤ 3/4) (a b : ℝ) :
    ‖P.phiHat T (z - a) * P.phiHat T (z - b)‖
        ≤ (1 + C) ^ 2 * P.X T ^ (3/4 : ℝ) * P.L T ^ 2 * ((1 + (z.re - a) ^ 2)⁻¹ * (1 + (z.re - b) ^ 2)⁻¹) ∧
      (|z.re - a| + |z.re - b|) * ‖P.phiHat T (z - a) * P.phiHat T (z - b)‖
        ≤ 4 * C * (1 + C) * P.X T ^ (3/4 : ℝ) * P.L T * ((1 + (z.re - a) ^ 2)⁻¹ * (1 + (z.re - b) ^ 2)⁻¹) := by
  set L := P.L T with hLdef
  set E := Real.exp (3/4 * (L / 2)) with hEdef
  have hL1 : 1 ≤ L := w.one_le_L
  have hC0 : 0 ≤ C := w.C_nonneg
  have hE : 0 < E := Real.exp_pos _
  have hEX : E * E = P.X T ^ (3/4 : ℝ) := TestWeight.WindowAt.exp_mul_exp_eq_X_rpow P T
  obtain ⟨ha0, ha1⟩ := factor_bounds_le w z hz a
  obtain ⟨hb0, hb1⟩ := factor_bounds_le w z hz b
  set Ka := (1 + (z.re - a) ^ 2)⁻¹
  set Kb := (1 + (z.re - b) ^ 2)⁻¹
  have hKa : 0 ≤ Ka := by positivity
  have hKb : 0 ≤ Kb := by positivity
  set A := ‖P.phiHat T (z - a)‖
  set B := ‖P.phiHat T (z - b)‖
  have hB : 0 ≤ B := norm_nonneg _
  rw [norm_mul]
  constructor
  · calc A * B ≤ ((1 + C) * E * L * Ka) * ((1 + C) * E * L * Kb) := mul_le_mul ha0 hb0 hB (by positivity)
      _ = (1 + C) ^ 2 * (E * E) * L ^ 2 * (Ka * Kb) := by ring
      _ = (1 + C) ^ 2 * P.X T ^ (3/4 : ℝ) * L ^ 2 * (Ka * Kb) := by rw [hEX]
  · have h1 : |z.re - a| * (A * B) ≤ (2 * C * E * Ka) * ((1 + C) * E * L * Kb) := by
      calc |z.re - a| * (A * B) = (|z.re - a| * A) * B := by ring
        _ ≤ (2 * C * E * Ka) * ((1 + C) * E * L * Kb) := mul_le_mul ha1 hb0 hB (by positivity)
    have h2 : |z.re - b| * (A * B) ≤ ((1 + C) * E * L * Ka) * (2 * C * E * Kb) := by
      calc |z.re - b| * (A * B) = A * (|z.re - b| * B) := by ring
        _ ≤ ((1 + C) * E * L * Ka) * (2 * C * E * Kb) := mul_le_mul ha0 hb1 (by positivity) (by positivity)
    calc (|z.re - a| + |z.re - b|) * (A * B) = |z.re - a| * (A * B) + |z.re - b| * (A * B) := by ring
      _ ≤ (2 * C * E * Ka) * ((1 + C) * E * L * Kb) + ((1 + C) * E * L * Ka) * (2 * C * E * Kb) :=
          add_le_add h1 h2
      _ = 4 * C * (1 + C) * (E * E) * L * (Ka * Kb) := by ring
      _ = 4 * C * (1 + C) * P.X T ^ (3/4 : ℝ) * L * (Ka * Kb) := by rw [hEX]

end Bounds

/-! ## C. the consumer statements -/

/-- **the pair-weight bounds at any |Im z| ≤ 3/4.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFWeights/Variant38d9ce798a9f6f726bda0ef4e05b3c6b8bf7815193c5ce8d0d5be2f8c3c1d71a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989e3cba3f152f630a41de9f9ad775f9ec0a9611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
