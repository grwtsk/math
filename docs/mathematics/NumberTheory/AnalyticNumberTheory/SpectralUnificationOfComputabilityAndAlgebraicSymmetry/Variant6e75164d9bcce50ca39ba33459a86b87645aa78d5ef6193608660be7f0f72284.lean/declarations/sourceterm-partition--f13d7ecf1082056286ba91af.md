# sourceTerm_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de305e7-ba4a-5bd2-2a16-a75d26b1d31d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64026bbd-b833-9b98-4fa1-2e4abd5bd1ad",
  "kind": "theorem",
  "lexical_name": "sourceTerm_partition",
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
  "slug": "sourceterm-partition--f13d7ecf1082056286ba91af",
  "source": {
    "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13d7ecf1082056286ba91affe51a47c0d2bd3045e5d6d2c1cf319bf4813f02a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64026bbd-b833-9b98-4fa1-2e4abd5bd1ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceTerm_partition (A : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, sourceTerm A n) =
      (∑ n ∈ (Finset.Icc 2 N).filter Nat.Prime, sourceTerm A n) +
      (∑ n ∈ (Finset.Icc 2 N).filter IsSquare, sourceTerm A n) +
      ∑ n ∈ (Finset.Icc 2 N).filter
        (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), sourceTerm A n := by
  classical
  simp_rw [Finset.sum_filter]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hpp : IsPrimePow n
  · by_cases hp : Nat.Prime n
    · have hs : ¬IsSquare n := hp.prime.not_isSquare
      simp [hpp, hp, hs]
    · by_cases hs : IsSquare n <;> simp [hpp, hp, hs]
  · have hz : sourceTerm A n = 0 := by
      simp [sourceTerm, ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hpp]
    simp [hz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0650d99ed8929b18de14c0caf38ed073c52b5b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
