# sourceMultiplier_divisorRemainder_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd5767b-74ff-b8d0-d2b0-2b50458f4724",
  "kind": "theorem",
  "lexical_name": "sourceMultiplier_divisorRemainder_norm_le",
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
  "slug": "sourcemultiplier-divisorremainder-norm-le--bb51786e85760dc066e41dc0",
  "source": {
    "blob": "23d706fc79723af60bf0efb7b79e745b0666fc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb51786e85760dc066e41dc0399b819d6e0cf485d87d9d8e8feb26cce5d99721",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd5767b-74ff-b8d0-d2b0-2b50458f4724`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMultiplier_divisorRemainder_norm_le (ε h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (divisorRemainderVector ε hε.le Y hY)‖ ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  (sourceMultiplier_norm_le ε h hε hsmall hh _).trans
    (mul_le_mul_of_nonneg_left (divisorRemainderVector_norm_le ε hε.le Y hY) (by positivity))

end
end DampedDivisorRemainderNormScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorCoefficient DampedDivisorRemainderNormScratch
open SourceWeightedMultiplier HalfLineExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormStatements/Variantf3fb5c85ed811f7077980d80787fcd6b1948ecbf582b574ea6466972a0d48b20.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23d706fc79723af60bf0efb7b79e745b0666fc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
