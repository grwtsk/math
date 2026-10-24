# actualResidual_sub_full_band_storage_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c189801-9816-17e7-fe64-edb28561af0a",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_full_band_storage_abs_le",
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
  "slug": "actualresidual-sub-full-band-storage-abs-le--fff9de4f4103e6423bab3cb1",
  "source": {
    "blob": "4b040e291607ad7baab881e1ee2009d79d4a0b68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerBandStorageResidual/Variant92f9e31369e30340283d60d7419526d2c47259cd76fe0b7a312c9879fcb64fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff9de4f4103e6423bab3cb186db2fc2a1fc0a103f934767c283e893b810cd71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerBandStorageResidual/Variant92f9e31369e30340283d60d7419526d2c47259cd76fe0b7a312c9879fcb64fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c189801-9816-17e7-fe64-edb28561af0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_full_band_storage_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A -
      (actualClosedPrimeRightMass A *
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 -
          actualClosedPrimeBandStorage A (actualBumpMovingHeight A (3 / 2)) / 2)| ≤
      (actualBumpMovingTailConstant (3 / 2) +
        actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) *
          Real.exp (-2 * ((3 / 2) - (5 / 4)) * A)) / A ^ 9 := by
  have hT : 0 ≤ actualBumpMovingHeight A (3 / 2) := (Real.exp_pos _).le
  rw [← actualClosedPrimeHead_real_eq_full_storage hA hT]
  calc
    _ = |((mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re| := by
        simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
        Complex.abs_re_le_norm _
    _ ≤ _ := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
      (by norm_num) (by norm_num)

/-- The original real residual and true signed storage balance differ by an unscaled o(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerBandStorageResidual/Variant92f9e31369e30340283d60d7419526d2c47259cd76fe0b7a312c9879fcb64fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerBandStorageResidual/Variant92f9e31369e30340283d60d7419526d2c47259cd76fe0b7a312c9879fcb64fcc.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b040e291607ad7baab881e1ee2009d79d4a0b68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
