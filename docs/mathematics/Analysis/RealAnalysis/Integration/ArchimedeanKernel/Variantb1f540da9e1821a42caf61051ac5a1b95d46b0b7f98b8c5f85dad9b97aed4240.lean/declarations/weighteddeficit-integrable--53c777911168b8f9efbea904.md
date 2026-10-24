# weightedDeficit_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53d2fdf1-1780-ca89-9354-1764f8502cd7",
  "kind": "theorem",
  "lexical_name": "weightedDeficit_integrable",
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
  "slug": "weighteddeficit-integrable--53c777911168b8f9efbea904",
  "source": {
    "blob": "ba38176f029bb7c2db12acda37ab339dab77ab26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c777911168b8f9efbea90447076e605047600e0b5b363aac843f422f1241e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d2fdf1-1780-ca89-9354-1764f8502cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedDeficit_integrable {C : ℝ → ℝ} {k : ℝ} (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2) :
    IntegrableOn (weightedDeficit C) (Ioi 0) := by
  refine (secondMoment_integrable.const_mul k).mono_nonneg
    (weightedDeficit_measurable hC).aestronglyMeasurable ?_ ?_
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).1
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba38176f029bb7c2db12acda37ab339dab77ab26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
