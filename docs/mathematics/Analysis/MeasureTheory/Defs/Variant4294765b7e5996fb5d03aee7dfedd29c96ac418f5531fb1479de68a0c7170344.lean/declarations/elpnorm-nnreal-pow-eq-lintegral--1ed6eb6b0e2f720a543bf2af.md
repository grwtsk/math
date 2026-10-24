# eLpNorm_nnreal_pow_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c956a3ca-a8fa-67bf-20b3-0e0ad08ba36b",
  "kind": "lemma",
  "lexical_name": "eLpNorm_nnreal_pow_eq_lintegral",
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
  "slug": "elpnorm-nnreal-pow-eq-lintegral--1ed6eb6b0e2f720a543bf2af",
  "source": {
    "blob": "03e2c87f3564d68e73e47cce5111990ca20845c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ed6eb6b0e2f720a543bf2af9b6c84315795fb7c48f8cd84e8197ed37dead63f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c956a3ca-a8fa-67bf-20b3-0e0ad08ba36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eLpNorm_nnreal_pow_eq_lintegral [TopologicalSpace ε] {f : α → ε} {p : ℝ≥0}
    (hp : p ≠ 0) (hf : AEStronglyMeasurable f μ) :
    eLpNorm f p μ ^ (p : ℝ) = ∫⁻ x, ‖f x‖ₑ ^ (p : ℝ) ∂μ := by
  simp [eLpNorm_eq_eLpNorm' (by exact_mod_cast hp) ENNReal.coe_ne_top hf,
    lintegral_rpow_enorm_eq_rpow_eLpNorm' ((NNReal.coe_pos.trans pos_iff_ne_zero).mpr hp)]

/-- Real-valued `ℒp` seminorm, equal to `0` for `p = 0`, to `(∫ ‖f a‖^p ∂μ) ^ p⁻¹` for `0 < p < ∞`
and to `essSup ‖f‖ μ` for `p = ∞`.

This is well-defined only if `MemLp f p μ`. Otherwise, it equals `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant4294765b7e5996fb5d03aee7dfedd29c96ac418f5531fb1479de68a0c7170344.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e2c87f3564d68e73e47cce5111990ca20845c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
