# actualResidual_le_iff_positive_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30a5d014-fc8c-875a-0a09-6e2d883009af",
  "kind": "theorem",
  "lexical_name": "actualResidual_le_iff_positive_fraction",
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
  "slug": "actualresidual-le-iff-positive-fraction--5f57da2c57732fc457e4890b",
  "source": {
    "blob": "eb328b7c7d836dad09cf5e1e032e204a0e95992c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8000a07f5a768adeae1e9f5343ffda8b3619ce8b7b0fd11736c7413b03c7fda2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f57da2c57732fc457e4890b2ace8ab4f722945a6d702320f325dac67a6bb11b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8000a07f5a768adeae1e9f5343ffda8b3619ce8b7b0fd11736c7413b03c7fda2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a5d014-fc8c-875a-0a09-6e2d883009af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_le_iff_positive_fraction {A K : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    mertensResidual A ≤ K ↔
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A ≤
        1 / 2 + K / (2 * actualClosedAbsolutePrimeMoment A) := by
  have h := actualResidual_eq_twice_variation_skew hA (ne_of_gt hV)
  have hp : 0 < 2 * actualClosedAbsolutePrimeMoment A := by positivity
  rw [h, mul_comm (2 * actualClosedAbsolutePrimeMoment A)
    (actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2),
    ← le_div_iff₀ hp, sub_le_iff_le_add]
  constructor <;> intro hh <;> linarith

/-- The equivalent negative fraction criterion is a lower bound, not an upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8000a07f5a768adeae1e9f5343ffda8b3619ce8b7b0fd11736c7413b03c7fda2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8000a07f5a768adeae1e9f5343ffda8b3619ce8b7b0fd11736c7413b03c7fda2.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb328b7c7d836dad09cf5e1e032e204a0e95992c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
