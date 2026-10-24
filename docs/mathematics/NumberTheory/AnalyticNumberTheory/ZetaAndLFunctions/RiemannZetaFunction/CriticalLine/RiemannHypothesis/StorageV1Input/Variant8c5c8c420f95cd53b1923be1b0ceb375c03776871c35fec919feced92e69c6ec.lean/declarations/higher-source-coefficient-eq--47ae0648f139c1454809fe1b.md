# higher_source_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54d4cdbf1bc46ece25ce2081399d38f87799493d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a49e632b-472a-d09b-2090-d6043e75c976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa632a27-7875-a6f5-fa5c-cfb27286d2bd",
  "kind": "theorem",
  "lexical_name": "higher_source_coefficient_eq",
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
  "slug": "higher-source-coefficient-eq--47ae0648f139c1454809fe1b",
  "source": {
    "blob": "54d4cdbf1bc46ece25ce2081399d38f87799493d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47ae0648f139c1454809fe1b1371408f4c974471e4e64b8c5848022f90516349",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa632a27-7875-a6f5-fa5c-cfb27286d2bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higher_source_coefficient_eq {A : ℝ} (hA : 0 < A) (i : HigherPrimePowerIndex) :
    higherAtomWeight i * (⟪originalSourceState A,
      translation (higherAtomShift i) (originalSourceState A)⟫_ℂ).re =
        vonMangoldt (higherAtomNatural i) * closedPrimeWeight A (higherAtomNatural i) := by
  rw [higherAtomWeight_eq_mangoldtCoefficient, higherAtomShift_eq_log,
    ← sourceCorrelation_eq_inner hA]
  unfold mangoldtCoefficient closedPrimeWeight exponentialTest
  ring

/-- Omitted atoms have zero correlation, even though their norm-square account is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV1Input/Variant8c5c8c420f95cd53b1923be1b0ceb375c03776871c35fec919feced92e69c6ec.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d4cdbf1bc46ece25ce2081399d38f87799493d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
