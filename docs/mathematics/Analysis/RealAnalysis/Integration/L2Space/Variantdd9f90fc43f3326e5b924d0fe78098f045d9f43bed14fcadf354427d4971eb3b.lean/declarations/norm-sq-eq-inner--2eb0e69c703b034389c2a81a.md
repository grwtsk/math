# norm_sq_eq_inner'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f56fd6-cc09-8770-8e17-63ad312cbac7",
  "kind": "theorem",
  "lexical_name": "norm_sq_eq_inner'",
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
  "slug": "norm-sq-eq-inner--2eb0e69c703b034389c2a81a",
  "source": {
    "blob": "6c4254bdfe7144b78b550edc99bbe7d3cff7382d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb0e69c703b034389c2a81a3b8bd2bb027562a3cf8782e7606616964aadd527",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f56fd6-cc09-8770-8e17-63ad312cbac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem norm_sq_eq_inner' (f : α →₂[μ] E) : ‖f‖ ^ 2 = IsROrC.re ⟪f, f⟫ := by
  have h_two : (2 : ℝ≥0∞).toReal = 2 := by simp
  rw [inner_def, integral_inner_eq_sq_snorm, norm_def, ← ENNReal.toReal_pow, IsROrC.ofReal_re,
    ENNReal.toReal_eq_toReal (ENNReal.pow_ne_top (Lp.snorm_ne_top f)) _]
  · rw [← ENNReal.rpow_nat_cast, snorm_eq_snorm' two_ne_zero ENNReal.two_ne_top, snorm', ←
      ENNReal.rpow_mul, one_div, h_two]
    simp
  · refine' (lintegral_rpow_nnnorm_lt_top_of_snorm'_lt_top zero_lt_two _).ne
    rw [← h_two, ← snorm_eq_snorm' two_ne_zero ENNReal.two_ne_top]
    exact Lp.snorm_lt_top f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c4254bdfe7144b78b550edc99bbe7d3cff7382d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
