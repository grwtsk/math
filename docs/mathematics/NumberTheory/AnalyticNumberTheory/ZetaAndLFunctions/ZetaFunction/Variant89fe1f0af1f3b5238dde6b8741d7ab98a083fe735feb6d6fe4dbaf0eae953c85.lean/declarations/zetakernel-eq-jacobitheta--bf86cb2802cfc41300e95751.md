# zetaKernel₁_eq_jacobiTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8479b23-13ad-703d-7b1d-3db67cf359e9",
  "kind": "theorem",
  "lexical_name": "zetaKernel₁_eq_jacobiTheta",
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
  "slug": "zetakernel-eq-jacobitheta--bf86cb2802cfc41300e95751",
  "source": {
    "blob": "32fb55b80053cd2ceca6e621ffb4cda24a0f7394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf86cb2802cfc41300e9575127682093989924db483d2bbc5cd614384de71d5e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8479b23-13ad-703d-7b1d-3db67cf359e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaKernel₁_eq_jacobiTheta {t : ℝ} (ht : 0 < t) :
    zetaKernel₁ t = (jacobiTheta (t * I) - 1) / 2 := by
  rw [jacobiTheta_eq_tsum_nat ((mul_I_im t).symm ▸ ht : 0 < (↑t * I).im), add_comm, add_sub_cancel,
    mul_div_cancel_left _ (two_ne_zero' ℂ), zetaKernel₁]
  congr 1 with n : 1
  push_cast
  rw [(by ring : ↑π * I * ((n : ℂ) + 1) ^ 2 * (t * I) = I ^ 2 * π * t * ((n : ℂ) + 1) ^ 2),
    I_sq, neg_one_mul]
#align zeta_kernel₁_eq_jacobi_theta zetaKernel₁_eq_jacobiTheta

/-- Continuity of `zetaKernel₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant89fe1f0af1f3b5238dde6b8741d7ab98a083fe735feb6d6fe4dbaf0eae953c85.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb55b80053cd2ceca6e621ffb4cda24a0f7394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
