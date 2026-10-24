# powerTail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10412ddb-69a2-0943-c74b-702d00fa55fa",
  "kind": "theorem",
  "lexical_name": "powerTail_integrable",
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
  "slug": "powertail-integrable--c5a77e04c95b0315e2d224c7",
  "source": {
    "blob": "12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5a77e04c95b0315e2d224c743eaf9bc86912432eed9630effa4f9d41e6bb498",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10412ddb-69a2-0943-c74b-702d00fa55fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerTail_integrable :
    Integrable (fun ξ : ℝ ↦ (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) volume := by
  convert (integrable_rpow_neg_one_add_norm_sq
    (E := ℝ) (μ := volume) (r := (3 / 2 : ℝ)) (by norm_num)) using 1
  ext ξ
  simp [Real.norm_eq_abs, sq_abs]
  norm_num

/-- Both terms of the fixed envelope have genuine finite integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
