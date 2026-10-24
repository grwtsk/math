# higherBaseline_le_pseries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "261645fc8aaa3257c7dac433d79d17ce5be118a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c6062d-b39f-b2e9-ee07-522dc8bb71d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6a6e94-ed97-38d7-bb55-8f734aab9252",
  "kind": "theorem",
  "lexical_name": "higherBaseline_le_pseries",
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
  "slug": "higherbaseline-le-pseries--1ea98a3dc1d74e9dd4af6227",
  "source": {
    "blob": "261645fc8aaa3257c7dac433d79d17ce5be118a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea98a3dc1d74e9dd4af6227dd6211a39ea386b1fedc9f2d37895bf991f8e3ec",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6a6e94-ed97-38d7-bb55-8f734aab9252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherBaseline_le_pseries :
    higherBaseline ≤ 16 * ∑' n : ℕ, (n : ℝ) ^ (-(5 : ℝ) / 4) := by
  rw [higherBaseline_eq_primeMass]
  have hnatural := higherPrimePowerBudget_summability.mul_left (16 : ℝ)
  have hs := Summable.tsum_le_tsum_of_inj (fun p : Nat.Primes => (p : ℕ))
    Nat.Primes.coe_nat_injective
    (fun n _ => mul_nonneg (by norm_num) (Real.rpow_nonneg n.cast_nonneg _))
    primeHigherMass_le_pseries primeHigherMass_summable hnatural
  simpa only [tsum_mul_left] using hs

/-- The existing higher-power budget supplies this mass bound without a source hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/5SourceHigherPrimePowerCoefficients/Variant94502ced7fbdf9a70d530a9e5b867f8a3750b4defbe4803ba351bf2be8593e51.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261645fc8aaa3257c7dac433d79d17ce5be118a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
