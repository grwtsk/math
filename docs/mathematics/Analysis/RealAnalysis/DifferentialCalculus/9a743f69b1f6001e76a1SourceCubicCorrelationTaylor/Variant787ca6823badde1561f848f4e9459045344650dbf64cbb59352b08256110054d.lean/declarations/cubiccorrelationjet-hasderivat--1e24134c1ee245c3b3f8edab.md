# cubicCorrelationJet_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93084b87-a91e-1399-945f-03bc8f96df55",
  "kind": "theorem",
  "lexical_name": "cubicCorrelationJet_hasDerivAt",
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
  "slug": "cubiccorrelationjet-hasderivat--1e24134c1ee245c3b3f8edab",
  "source": {
    "blob": "a47989b36d6347e6944259a7e940001728458590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9a743f69b1f6001e76a1SourceCubicCorrelationTaylor/Variant787ca6823badde1561f848f4e9459045344650dbf64cbb59352b08256110054d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e24134c1ee245c3b3f8edabc1ec185bf02145f2c86a2cd68ab040986d6a069c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/9a743f69b1f6001e76a1SourceCubicCorrelationTaylor/Variant787ca6823badde1561f848f4e9459045344650dbf64cbb59352b08256110054d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93084b87-a91e-1399-945f-03bc8f96df55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubicCorrelationJet_hasDerivAt (A a y : ℝ) :
    HasDerivAt (cubicCorrelationJet A a)
      (deriv (sourceCorrelation explicitSecondDerivative A) a +
        y * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a +
        y ^ 2 / 2 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a) y := by
  have h := (((hasDerivAt_const y (sourceCorrelation explicitSecondDerivative A a)).add
    ((hasDerivAt_id y).mul_const (deriv (sourceCorrelation explicitSecondDerivative A) a))).add
    (((hasDerivAt_pow 2 y).div_const 2).mul_const
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) a))).add
    (((hasDerivAt_pow 3 y).div_const 6).mul_const
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) a))
  apply h.congr_deriv
  simp only [Nat.cast_ofNat, Nat.reduceSub, pow_one]
  ring

/-- Actual differentiation of the entire cubic remainder preserves all signed jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/9a743f69b1f6001e76a1SourceCubicCorrelationTaylor/Variant787ca6823badde1561f848f4e9459045344650dbf64cbb59352b08256110054d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9a743f69b1f6001e76a1SourceCubicCorrelationTaylor/Variant787ca6823badde1561f848f4e9459045344650dbf64cbb59352b08256110054d.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47989b36d6347e6944259a7e940001728458590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
