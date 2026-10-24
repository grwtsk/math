# positive_pair_correlation_increment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcaab430-db51-9351-ad4a-05993b39fe3c",
  "kind": "theorem",
  "lexical_name": "positive_pair_correlation_increment_le",
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
  "slug": "positive-pair-correlation-increment-le--b61a79a8bdb36ef3f8cf11ca",
  "source": {
    "blob": "50dacaf2064e3a3bddd26ece26732c83e011899e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b61a79a8bdb36ef3f8cf11caf30272849f741339e3cb038ff5866752f329911e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcaab430-db51-9351-ad4a-05993b39fe3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_pair_correlation_increment_le {A p q : ℝ} (hA : 1 ≤ A)
    (hp : 0 < p) (hq : p ≤ q) :
    |sourceCorrelation explicitSecondDerivative A (Real.log q) -
      sourceCorrelation explicitSecondDerivative A (Real.log p)| ≤
      (5 / A) * Real.log (q / p) := by
  have hlog := Real.log_le_log hp hq
  have hq0 := hp.trans_le hq
  simpa only [abs_of_nonneg (sub_nonneg.mpr hlog),
    Real.log_div hq0.ne' hp.ne'] using
    sourceCorrelation_increment_le_five hA (Real.log q) (Real.log p)

/-- The physical square-root weight is a distinct function from the native correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variant67d2b7396233b3b835871cfb0d93dcd19e99b36505fd90b53739371b4b395304.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50dacaf2064e3a3bddd26ece26732c83e011899e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
