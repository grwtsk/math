# snorm_indicator_const₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77410338-3ca5-6473-68e5-9fd783d04413",
  "kind": "theorem",
  "lexical_name": "snorm_indicator_const₀",
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
  "slug": "snorm-indicator-const--eda727dbc659c4bab641be63",
  "source": {
    "blob": "145ecda4c8c3a4972cf1bcac83026924983d5cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 603,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda727dbc659c4bab641be63a9ce7334b4deb58642489d497d92a2617f311041",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77410338-3ca5-6473-68e5-9fd783d04413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm_indicator_const₀ {c : G} (hs : NullMeasurableSet s μ) (hp : p ≠ 0) (hp_top : p ≠ ∞) :
    snorm (s.indicator fun _ => c) p μ = ‖c‖₊ * μ s ^ (1 / p.toReal) :=
  have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp hp_top
  calc
    snorm (s.indicator fun _ => c) p μ
      = (∫⁻ x, ((‖(s.indicator fun _ ↦ c) x‖₊ : ℝ≥0∞) ^ p.toReal) ∂μ) ^ (1 / p.toReal) :=
          snorm_eq_lintegral_rpow_nnnorm hp hp_top
    _ = (∫⁻ x, (s.indicator fun _ ↦ (‖c‖₊ : ℝ≥0∞) ^ p.toReal) x ∂μ) ^ (1 / p.toReal) := by
      congr 2
      refine (Set.comp_indicator_const c (fun x : G ↦ (‖x‖₊ : ℝ≥0∞) ^ p.toReal) ?_)
      simp [hp_pos]
    _ = ‖c‖₊ * μ s ^ (1 / p.toReal) := by
      rw [lintegral_indicator_const₀ hs, ENNReal.mul_rpow_of_nonneg, ← ENNReal.rpow_mul,
        mul_one_div_cancel hp_pos.ne', ENNReal.rpow_one]
      positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variantb1adab73095ab43354d66c27c7927794ef8a895b4450214a1c83acf0b779e00b.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145ecda4c8c3a4972cf1bcac83026924983d5cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
