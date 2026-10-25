# full_weighted_norm_integrand_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12811fec-4b6a-93fe-9621-f04d9750ed81",
  "kind": "theorem",
  "lexical_name": "full_weighted_norm_integrand_intervalIntegrable",
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
  "slug": "full-weighted-norm-integrand-intervalintegrable--162550c26f912a9392b13a36",
  "source": {
    "blob": "88b53c79d3ee91a33ab1693471b161d9e3b68977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:162550c26f912a9392b13a36437db4406c69c2e2054f1a49dac30829179182ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12811fec-4b6a-93fe-9621-f04d9750ed81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_weighted_norm_integrand_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    IntervalIntegrable (fun u ↦ |C A u| * Real.exp (θ * u)) volume (-2 * A) (2 * A) := by
  have hc : Continuous (C A) :=
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous
  exact (hc.abs.mul (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).intervalIntegrable _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b53c79d3ee91a33ab1693471b161d9e3b68977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
