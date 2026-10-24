# actualCorrelation_second_abs_le_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faf0efc1-8edb-22d9-6aed-721b2bd8ee88",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_second_abs_le_twenty",
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
  "slug": "actualcorrelation-second-abs-le-twenty--7bf09c2f7bb14a2eb50ed2dc",
  "source": {
    "blob": "168fcab3b0924838156615427fe01d44899d0ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf09c2f7bb14a2eb50ed2dcc1436234285ef2305fdabdfa699da54364ca57db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faf0efc1-8edb-22d9-6aed-721b2bd8ee88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_second_abs_le_twenty {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 20 / A ^ 2 := by
  apply (sourceCorrelation_second_deriv_abs_le_energy (by linarith : 0 < A) t).trans
  apply (le_div_iff₀ (by positivity : 0 < A ^ 2)).2
  simpa only [mul_comm] using actualDerivativeEnergy_le_twenty hA

/-- The third actual jet has a small increment from its genuine odd zero at the origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168fcab3b0924838156615427fe01d44899d0ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
