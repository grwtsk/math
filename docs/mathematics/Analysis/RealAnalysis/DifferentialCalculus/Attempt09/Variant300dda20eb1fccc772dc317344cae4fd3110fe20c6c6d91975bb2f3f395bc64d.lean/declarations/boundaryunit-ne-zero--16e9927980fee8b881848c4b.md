# boundaryUnit_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:660aa0a5-2e68-e4d2-59f1-139ca0d47041",
  "kind": "theorem",
  "lexical_name": "boundaryUnit_ne_zero",
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
  "slug": "boundaryunit-ne-zero--16e9927980fee8b881848c4b",
  "source": {
    "blob": "de92a166ab2203cd2976d00361b1afbed3818e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e9927980fee8b881848c4bc10053a19ae64405f8b4839d5e95ead39900240b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:660aa0a5-2e68-e4d2-59f1-139ca0d47041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryUnit_ne_zero {A : ℝ} (hA : 1 ≤ A) : boundaryUnit A 0 ≠ 0 := by
  rw [boundaryUnit_at_zero]
  have hAn : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (by linarith)
  exact mul_ne_zero (mul_ne_zero (neg_ne_zero.mpr (pow_ne_zero _ hAn))
    (Complex.exp_ne_zero _)) (pow_ne_zero _
      (Complex.ofReal_ne_zero.mpr (primitive_pole_moment_pos hA).ne'))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de92a166ab2203cd2976d00361b1afbed3818e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
