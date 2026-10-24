# logProfile_deriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05e00035-ae4e-721c-6b4a-4d9f0bf5943d",
  "kind": "theorem",
  "lexical_name": "logProfile_deriv_eq",
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
  "slug": "logprofile-deriv-eq--0742a783359a46510ac3c808",
  "source": {
    "blob": "0d69fa87e0c697dcf51df2ecbdbb5c630098feae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0742a783359a46510ac3c808021c69742bc9d9f640b666728cf49d501065869f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05e00035-ae4e-721c-6b4a-4d9f0bf5943d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_deriv_eq {A d y : ℝ} (hA : 1 ≤ A) (hd : 0 < d) (hy : 0 < y) :
    deriv (logProfile A d) y =
      (1 / Real.sqrt d * y ^ (-3 / 2 : ℝ)) *
        ((1 - Real.log y / 2) *
            sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y) +
          Real.log y * deriv (sourceCorrelation explicitSecondDerivative A)
            (Real.log d + Real.log y)) := by
  rw [(logProfile_hasDerivAt (by linarith) d hy).deriv,
    samplingDerivative_prefactor hd hy]

/-- The explicit budget needed by centered Abel summation, still in rpow-density form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d69fa87e0c697dcf51df2ecbdbb5c630098feae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
