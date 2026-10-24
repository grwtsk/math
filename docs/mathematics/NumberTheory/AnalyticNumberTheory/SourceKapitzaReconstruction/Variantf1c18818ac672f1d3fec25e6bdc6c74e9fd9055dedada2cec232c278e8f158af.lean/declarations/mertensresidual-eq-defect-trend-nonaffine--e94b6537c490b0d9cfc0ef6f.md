# mertensResidual_eq_defect_trend_nonaffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76464faa-fa8e-45ac-2fa7-00fb773531a6",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_defect_trend_nonaffine",
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
  "slug": "mertensresidual-eq-defect-trend-nonaffine--e94b6537c490b0d9cfc0ef6f",
  "source": {
    "blob": "4f1ee3508d66942141d062fe874b58d26fab20d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94b6537c490b0d9cfc0ef6fa62c9d70f3ef3a11a40e382399d7577131a1df87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76464faa-fa8e-45ac-2fa7-00fb773531a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_defect_trend_nonaffine (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = -1 + continuousDefect A + trendValue A + nonaffineWork A := by
  rw [mertensResidual_eq_affine_nonaffine A hA, one_add_continuous_eq_defect A hA]



/-- Actual negative half of the weighted first correlation moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1ee3508d66942141d062fe874b58d26fab20d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
