# sourceGreenConvolution_eq_tails

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40311783-ebea-ff0c-59b8-ad8875a0ecbf",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_eq_tails",
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
  "slug": "sourcegreenconvolution-eq-tails--15279965bcc748cad09b8bc5",
  "source": {
    "blob": "7296d85e5408fd20e564174d77c383d19ee5dd6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15279965bcc748cad09b8bc58c21bc0a21d1997dbbf787a727c83fe1491d3f1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40311783-ebea-ff0c-59b8-ad8875a0ecbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_eq_tails {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = causalSourceTail A x + causalSourceTail A (-x) := by
  have hi := sourceGreenConvolution_integrable hA x
  have hs := integral_Iic_add_Ioi (hi.integrableOn (s := Iic x))
    (hi.integrableOn (s := Ioi x))
  rw [sourceGreenConvolution_lower_half hA, sourceGreenConvolution_upper_half hA] at hs
  exact hs.symm.trans (add_comm _ _)

/-- This special source convolution is exactly the negative globally compact bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7296d85e5408fd20e564174d77c383d19ee5dd6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
