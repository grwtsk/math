# correction_cost_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13b067f8-67e4-bb0e-f96a-34114877ab48",
  "kind": "theorem",
  "lexical_name": "correction_cost_identity",
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
  "slug": "correction-cost-identity--ea83da6083fb289c169a516d",
  "source": {
    "blob": "37cf6a81bd196d1e6a7f91d65a8ffe629df23901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea83da6083fb289c169a516dfa3bb1960506fc155017c765c9a3f323d8734ecb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13b067f8-67e4-bb0e-f96a-34114877ab48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_cost_identity {ι : Type*} (s : Finset ι) (q d r : ι → ℝ)
    (hq : ∀ i ∈ s, q i ≠ 0) (hd : ∀ i ∈ s, d i ≠ 0)
    (hS : inverseWeightSum s q d ≠ 0) (m : ℝ)
    (hm : ∑ i ∈ s, r i / d i = m) :
    (∑ i ∈ s, q i * r i ^ 2) = m ^ 2 / inverseWeightSum s q d +
      ∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2 := by
  have hs : (∑ i ∈ s, q i * (r i - optimalCorrection s q d m i) ^ 2) =
      (∑ i ∈ s, q i * r i ^ 2) - (2 * m / inverseWeightSum s q d) * m +
        (m / inverseWeightSum s q d) ^ 2 * inverseWeightSum s q d := by
    calc
      _ = ∑ i ∈ s, (q i * r i ^ 2 - (2 * m / inverseWeightSum s q d) *
          (r i / d i) + (m / inverseWeightSum s q d) ^ 2 * (1 / (q i * d i ^ 2))) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact correction_square_expand (hq i hi) (hd i hi) hS _ _
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum,
          ← Finset.mul_sum, hm]
        rfl
  rw [hs]
  field_simp
  ring

/-- Positivity of the chosen metric gives the lower bound, without an arithmetic estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrectionOptimization/Variant4b9b319c9dccbc7ad1e3a8c774edc043d872a37d815ff9f34cfc67d77e1b97f4.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cf6a81bd196d1e6a7f91d65a8ffe629df23901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
