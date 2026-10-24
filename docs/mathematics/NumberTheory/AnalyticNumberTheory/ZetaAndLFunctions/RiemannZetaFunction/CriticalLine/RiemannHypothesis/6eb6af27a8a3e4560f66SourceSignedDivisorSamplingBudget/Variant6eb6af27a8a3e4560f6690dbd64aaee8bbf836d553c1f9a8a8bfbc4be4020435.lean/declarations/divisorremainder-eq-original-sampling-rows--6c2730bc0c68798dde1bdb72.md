# divisorRemainder_eq_original_sampling_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b824ae22-b0ea-4abb-8824-434d7ab1f338",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f2790e3-3e9d-2db8-6d01-d546de6199fd",
  "kind": "theorem",
  "lexical_name": "divisorRemainder_eq_original_sampling_rows",
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
  "slug": "divisorremainder-eq-original-sampling-rows--6c2730bc0c68798dde1bdb72",
  "source": {
    "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c2730bc0c68798dde1bdb72b31cf09030acab3cdd83484c87077d2708a1b757",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2790e3-3e9d-2db8-6d01-d546de6199fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorRemainder_eq_original_sampling_rows (A : ℝ) (d : ℕ) (hd : 0 < d) :
    divisorRemainder A d =
      -(∑ m ∈ longInventory A,
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
      (∑ m ∈ longInventory A, vonMangoldt m *
        (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
          sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
      (∑ m ∈ longInventory A,
        if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
      sourceLogSamplingMainTerm A d -
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) -
      ∑ m ∈ longInventory A, vonMangoldt m * actualQuotientSamplingError A d m := by
  rw [divisorRemainder_eq_quotient_sampling A d hd]
  simp only [actualQuotientSamplingError, mul_sub, Finset.sum_sub_distrib]
  ring

/-- Global reconstruction changes no baseline or compensation and keeps the signed error intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9c409e3fac27fc8d433e9376d731b9b18390c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
