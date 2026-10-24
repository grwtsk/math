# actual_form_radius_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2a79557-3ebf-5bf6-d66a-36533a1077f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5213b759-1954-e268-4a00-a6145e82cbe6",
  "kind": "theorem",
  "lexical_name": "actual_form_radius_independent",
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
  "slug": "actual-form-radius-independent--3924efb7fe85567684129810",
  "source": {
    "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3924efb7fe8556768412981095a404d2c55c00c0c94a1c0b017d98c2aa1fb567",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5213b759-1954-e268-4a00-a6145e82cbe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_form_radius_independent
    (A B : ℝ) (hA : 1 ≤ A) (hAB : A ≤ B) :
    realArithmeticForm B (actualTest A) =
      realArithmeticForm A (actualTest A) := by
  have hsum :
      (∑ n ∈ primeIndices A,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n))) =
      ∑ n ∈ primeIndices B,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n)) := by
    apply Finset.sum_subset (primeIndices_mono hAB)
    intro n hn hout
    rw [additional_prime_correlation_zero A hA n
      ((mem_primeIndices_iff B n).mp hn).1 hout, mul_zero]
  simp only [primeIndices] at hsum
  unfold realArithmeticForm
  rw [← hsum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
