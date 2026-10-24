# derivativeMajorant_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d71c8be1-f39d-97a1-224d-969be10137ca",
  "kind": "theorem",
  "lexical_name": "derivativeMajorant_summable",
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
  "slug": "derivativemajorant-summable--d2682b30024745d970a9ab73",
  "source": {
    "blob": "2935afdf3ed1459502f7991e828c44c7b96e5a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2682b30024745d970a9ab73921e350c19a0dcf74670d2e03e7b6b9595ea9568",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d71c8be1-f39d-97a1-224d-969be10137ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeMajorant_summable : Summable (fun n : ℕ => derivativeMajorant (n+1)) := by
  have hp : Summable (fun n : ℕ => 1/(n:ℝ)^((5:ℝ)/4)) :=
    summable_one_div_nat_rpow.mpr (by norm_num)
  have hs : Summable (fun n : ℕ => 5/(n:ℝ)^((5:ℝ)/4)) := by
    simpa only [mul_one_div] using hp.mul_left 5
  exact Summable.of_nonneg_of_le (fun n => derivativeMajorant_nonneg (n+1))
    (fun n => derivativeMajorant_le_pSeries (by omega)) ((summable_nat_add_iff 1).mpr hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variantfd8dc8e970d717bd1d50c507711628c9b05df2ca24e8517f410642c30fcf3f7f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2935afdf3ed1459502f7991e828c44c7b96e5a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
