# thetaPhiThreeModeDeltaMajorant_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8809a89f-4d7d-88e0-a4df-2ef4e3c357ee",
  "kind": "theorem",
  "lexical_name": "thetaPhiThreeModeDeltaMajorant_mono",
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
  "slug": "thetaphithreemodedeltamajorant-mono--8426f42451e5111c74807d29",
  "source": {
    "blob": "8522f0c64b4e2c90aec9649a458385c7a87671f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 199,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8426f42451e5111c74807d299f07fcd8643cf4a310ff4ddac458e1f285bae374",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8809a89f-4d7d-88e0-a4df-2ef4e3c357ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiThreeModeDeltaMajorant_mono
    {x y z r w s : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y)
    (hz : 0 ≤ z) (hzr : z ≤ r)
    (hw : 0 ≤ w) (hws : w ≤ s) :
    thetaPhiThreeModeDeltaMajorant x z w ≤
      thetaPhiThreeModeDeltaMajorant y r s := by
  have hy : 0 ≤ y := hx.trans hxy
  have hr : 0 ≤ r := hz.trans hzr
  have h1 := thetaPhiThreeModeNeg1_mono hx hxy hz hzr
  have h2 := thetaPhiThreeModeNeg2_mono hx hxy hz hzr
  have h3 := thetaPhiThreeModeNeg3_mono hx hxy hz hzr
  have hw2 := pow_le_pow_left₀ hw hws 2
  have hw3 := pow_le_pow_left₀ hw hws 3
  unfold thetaPhiThreeModeDeltaMajorant
  exact add_le_add
    (add_le_add
      (mul_le_mul h1 hws hw
        (thetaPhiThreeModeNeg1_nonneg hy hr))
      (mul_le_mul h2 hw2 (pow_nonneg hw 2)
        (thetaPhiThreeModeNeg2_nonneg hy hr)))
    (mul_le_mul h3 hw3 (pow_nonneg hw 3)
      (thetaPhiThreeModeNeg3_nonneg hy hr))

/-- A convenient comparison between the third-mode exponential and the square
of the second-mode exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8522f0c64b4e2c90aec9649a458385c7a87671f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
