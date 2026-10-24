# innerRemainder_abs_le_logarithmic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06db60bc-1266-a853-6399-a0539ca63790",
  "kind": "theorem",
  "lexical_name": "innerRemainder_abs_le_logarithmic",
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
  "slug": "innerremainder-abs-le-logarithmic--b165828653804b1ea3bb0ca0",
  "source": {
    "blob": "83fb5658ecaa6e06fe06faea22f28c892c34aa19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b165828653804b1ea3bb0ca02946903c3a2981e4dc986d664aab9db16015480d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06db60bc-1266-a853-6399-a0539ca63790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRemainder_abs_le_logarithmic {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdA : d ≤ Real.exp A) :
    |innerRemainder A d| ≤
      12 * Real.log (Real.exp (2 * A) / d) / Real.sqrt d := by
  have hX : d ≤ Real.exp (2 * A) :=
    hdA.trans (Real.exp_le_exp.mpr (by linarith))
  apply (innerRemainder_abs_le_twelve hA hd hX).trans
  have hl : 1 ≤ Real.log (innerCutoff A d) := hA.trans (innerCutoff_log_ge_scale hA hd hdA)
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
  change 12 ≤ 12 * Real.log (innerCutoff A d)
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83fb5658ecaa6e06fe06faea22f28c892c34aa19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
