# finiteModel_relative_error_nineHeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce74efa5-dbb9-3554-6a97-dbcdac0aed18",
  "kind": "theorem",
  "lexical_name": "finiteModel_relative_error_nineHeight",
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
  "slug": "finitemodel-relative-error-nineheight--86cbb801e4dc91b207350d12",
  "source": {
    "blob": "27a73d8d2cdea5a84ae16359a6aef453eb5d8b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86cbb801e4dc91b207350d127a014a0001a7667d04293a12716fd6fee1a2c74b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce74efa5-dbb9-3554-6a97-dbcdac0aed18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteModel_relative_error_nineHeight {N : ℕ} {s : ℂ}
    (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (155 / 132 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) := by
  have hs : 0 < s.re := by linarith
  have hs5 : 0 < s.re + 5 := by linarith
  have hp : 0 ≤ (N : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by positivity) _
  calc
    _ ≤ ‖multiplier s‖ * ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      finiteModel_error hN hs le_rfl
    _ ≤ ((155 / 132 : ℝ) * (s.re + 5) * referenceFactors s) *
        ((N : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
      mul_le_mul_of_nonneg_right (nineHeight_multiplier_bound hx hx1 hy)
        (div_nonneg hp (by positivity))
    _ = _ := by rw [reference_norm]; field_simp [hs5.ne'] <;> ring

/-- The established window feeds the exact next-shell port, without changing RH. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a73d8d2cdea5a84ae16359a6aef453eb5d8b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
