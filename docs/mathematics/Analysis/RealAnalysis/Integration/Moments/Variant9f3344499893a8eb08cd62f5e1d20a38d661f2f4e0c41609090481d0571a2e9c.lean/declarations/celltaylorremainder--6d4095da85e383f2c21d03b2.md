# cellTaylorRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:744cbab90e16888adfa6b65092d6616f0b2c732fa8d41f4fb06a3479ef179488",
  "kind": "def",
  "lexical_name": "cellTaylorRemainder",
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
  "slug": "celltaylorremainder--6d4095da85e383f2c21d03b2",
  "source": {
    "blob": "73b5c81f445a670386efa3edd3275b5ec0fe3274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d4095da85e383f2c21d03b209efca000af4240c9e6e60338b81a6c0294f56ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:744cbab90e16888adfa6b65092d6616f0b2c732fa8d41f4fb06a3479ef179488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cellTaylorRemainder (A : ℝ) (n : ℕ) : ℝ :=
  ∫ x in (n : ℝ)..((n : ℝ) + 1),
    (sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        (Real.log x - Real.log n)) / Real.sqrt x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b5c81f445a670386efa3edd3275b5ec0fe3274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
