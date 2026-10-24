# Integrable.measure_ge_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54c27929-c2d1-abdb-7e4a-79516523f02e",
  "kind": "theorem",
  "lexical_name": "Integrable.measure_ge_lt_top",
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
  "slug": "integrable-measure-ge-lt-top--63c4d9647a0d74f48719b22e",
  "source": {
    "blob": "bab1bb3a33734686784d3bfdda530f1cded38998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 808,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1Space/Variant2be1f66ba21effb9bb6398c284e2d908d01f7d52208a45bfd60f2b75e2c7ebfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c4d9647a0d74f48719b22ea497ac08a0599cbd55de93a597c6f6dbdac52da5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1Space/Variant2be1f66ba21effb9bb6398c284e2d908d01f7d52208a45bfd60f2b75e2c7ebfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c27929-c2d1-abdb-7e4a-79516523f02e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.measure_ge_lt_top {f : α → β} (hf : Integrable f μ) {ε : ℝ} (hε : 0 < ε) :
    μ { x | ε ≤ ‖f x‖ } < ∞ := by
  rw [show { x | ε ≤ ‖f x‖ } = { x | ENNReal.ofReal ε ≤ ‖f x‖₊ } by
      simp only [ENNReal.ofReal, Real.toNNReal_le_iff_le_coe, ENNReal.coe_le_coe, coe_nnnorm]]
  refine' (meas_ge_le_mul_pow_snorm μ one_ne_zero ENNReal.one_ne_top hf.1 _).trans_lt _
  · simpa only [Ne.def, ENNReal.ofReal_eq_zero, not_le] using hε
  apply ENNReal.mul_lt_top
  · simpa only [ENNReal.one_toReal, ENNReal.rpow_one, Ne.def, ENNReal.inv_eq_top,
      ENNReal.ofReal_eq_zero, not_le] using hε
  simpa only [ENNReal.one_toReal, ENNReal.rpow_one] using
    (memℒp_one_iff_integrable.2 hf).snorm_ne_top
#align measure_theory.integrable.measure_ge_lt_top MeasureTheory.Integrable.measure_ge_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1Space/Variant2be1f66ba21effb9bb6398c284e2d908d01f7d52208a45bfd60f2b75e2c7ebfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1Space/Variant2be1f66ba21effb9bb6398c284e2d908d01f7d52208a45bfd60f2b75e2c7ebfe.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab1bb3a33734686784d3bfdda530f1cded38998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
