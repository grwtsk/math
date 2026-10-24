# eLpNorm_nnreal_pow_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f695d6b-dccb-04ae-0009-68da97498d2e",
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
  "slug": "elpnorm-nnreal-pow-eq-lintegral--3c56a00851ef1ac62c024a3f",
  "source": {
    "blob": "c7119153cfa93548f5fd754dae47bd33c040d239",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c56a00851ef1ac62c024a3ff40836d7f7e9931ebebbcda7648329f29d53c4be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f695d6b-dccb-04ae-0009-68da97498d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eLpNorm_nnreal_pow_eq_lintegral {f : α → ε} {p : ℝ≥0} (hp : p ≠ 0) :
    eLpNorm f p μ ^ (p : ℝ) = ∫⁻ x, ‖f x‖ₑ ^ (p : ℝ) ∂μ := by
  simp [eLpNorm_eq_eLpNorm' (by exact_mod_cast hp) ENNReal.coe_ne_top,
    lintegral_rpow_enorm_eq_rpow_eLpNorm' ((NNReal.coe_pos.trans pos_iff_ne_zero).mpr hp)]

end Lp

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7119153cfa93548f5fd754dae47bd33c040d239` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
