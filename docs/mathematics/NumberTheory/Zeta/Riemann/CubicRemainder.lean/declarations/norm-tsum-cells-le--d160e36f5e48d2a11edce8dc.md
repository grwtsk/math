# norm_tsum_cells_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b333a92-5c6c-d78f-9022-59c2146eb268",
  "kind": "theorem",
  "lexical_name": "norm_tsum_cells_le",
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
  "slug": "norm-tsum-cells-le--d160e36f5e48d2a11edce8dc",
  "source": {
    "blob": "4b1b60777f2a3a7cbd103273535a4b54075ed7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d160e36f5e48d2a11edce8dc7ed73a347f82af1592699c667c1a34f4f428881e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b333a92-5c6c-d78f-9022-59c2146eb268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_tsum_cells_le (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) :
    ‖∑' k : ℕ, cellRemainder (q + (k : ℝ)) (-s)‖ ≤
      decayPower (σ₀ + 2) q / (48 * (σ₀ + 2)) := by
  have hss : -2 < s.re := hσ.trans_le hs
  calc
    _ ≤ ∑' k : ℕ, ‖cellRemainder (q + (k : ℝ)) (-s)‖ :=
      norm_tsum_le_tsum_norm (summable_norm_cells q hq s hss)
    _ ≤ ∑' k : ℕ, powerCell (q + (k : ℝ)) (σ₀ + 2) / 48 :=
      hasSum_le (fun k : ℕ => norm_cell_le (q + (k : ℝ)) σ₀
        (by linarith [Nat.cast_nonneg (α := ℝ) k]) hσ s hs)
        (summable_norm_cells q hq s hss).hasSum (summable_cell_majorant q σ₀ hq hσ).hasSum
    _ = (∑' k : ℕ, powerCell (q + (k : ℝ)) (σ₀ + 2)) / 48 := by rw [tsum_div_const]
    _ ≤ (decayPower (σ₀ + 2) q / (σ₀ + 2)) / 48 :=
      div_le_div_of_nonneg_right (tsum_powerCell_le q (σ₀ + 2) (by linarith) (by linarith))
        (by norm_num)
    _ = _ := by rw [div_div, mul_comm (σ₀ + 2) (48 : ℝ)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainder.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1b60777f2a3a7cbd103273535a4b54075ed7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
