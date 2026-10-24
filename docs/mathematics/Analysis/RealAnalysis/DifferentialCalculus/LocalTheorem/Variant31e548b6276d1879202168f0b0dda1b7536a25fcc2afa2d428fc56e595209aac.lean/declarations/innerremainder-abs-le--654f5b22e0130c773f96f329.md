# innerRemainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1223ec4e-49e3-d766-f0c4-c04232d2c41a",
  "kind": "theorem",
  "lexical_name": "innerRemainder_abs_le",
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
  "slug": "innerremainder-abs-le--654f5b22e0130c773f96f329",
  "source": {
    "blob": "83fb5658ecaa6e06fe06faea22f28c892c34aa19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654f5b22e0130c773f96f329ff552c2a75650b8abf1c49e2c00c5806bad2aa82",
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

Occurrence: `result:1223ec4e-49e3-d766-f0c4-c04232d2c41a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRemainder_abs_le {A d : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hdX : d ≤ Real.exp (2 * A)) :
    |innerRemainder A d| ≤ (2 + 10 / A) / Real.sqrt d := by
  have hY := innerCutoff_ge_one hd hdX
  have he : innerRemainder A d =
      ∫ y in (1 : ℝ)..innerCutoff A d,
        (Int.fract y - 1 / 2) * deriv (logProfile A d) y := by
    unfold innerRemainder
    apply intervalIntegral.integral_congr
    rw [uIcc_of_le hY]
    intro y hy
    dsimp only
    rw [fracPlus_eq_fract (by linarith [hy.1])]
  rw [he]
  apply centered_error_bound hA hd hY
  intro y hy
  convert logProfile_deriv_abs_le_density hA hd hy.1 using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocalTheorem/Variant31e548b6276d1879202168f0b0dda1b7536a25fcc2afa2d428fc56e595209aac.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83fb5658ecaa6e06fe06faea22f28c892c34aa19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
