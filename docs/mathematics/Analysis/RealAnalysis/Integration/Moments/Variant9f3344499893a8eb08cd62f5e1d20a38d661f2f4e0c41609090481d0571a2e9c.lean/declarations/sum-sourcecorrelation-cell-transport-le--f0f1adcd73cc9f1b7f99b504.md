# sum_sourceCorrelation_cell_transport_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a08b0c69-e29c-e36c-b02a-8a9caa584ce4",
  "kind": "theorem",
  "lexical_name": "sum_sourceCorrelation_cell_transport_le",
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
  "slug": "sum-sourcecorrelation-cell-transport-le--f0f1adcd73cc9f1b7f99b504",
  "source": {
    "blob": "73b5c81f445a670386efa3edd3275b5ec0fe3274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0f1adcd73cc9f1b7f99b504f8c9eb6277b030921b39a0bbcf0f9bdaeb1330a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a08b0c69-e29c-e36c-b02a-8a9caa584ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_sourceCorrelation_cell_transport_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      |∫ x in (n : ℝ)..((n : ℝ) + 1),
        (sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x|) ≤
      40 / A ^ 2 :=
  sum_cellCorrection_abs_le hA N

/-- Constants cancel exactly: this geometric cell transport has zero total mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant9f3344499893a8eb08cd62f5e1d20a38d661f2f4e0c41609090481d0571a2e9c.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b5c81f445a670386efa3edd3275b5ec0fe3274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
