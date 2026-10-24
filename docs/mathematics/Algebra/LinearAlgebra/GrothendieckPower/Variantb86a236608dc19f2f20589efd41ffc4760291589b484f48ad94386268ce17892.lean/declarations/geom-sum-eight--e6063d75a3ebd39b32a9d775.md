# geom_sum_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02c4b469-94ed-918f-fad7-3a42b5f75b1e",
  "kind": "theorem",
  "lexical_name": "geom_sum_eight",
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
  "slug": "geom-sum-eight--e6063d75a3ebd39b32a9d775",
  "source": {
    "blob": "9c52a1085984477c11991a40854fffc0e35111ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 787,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6063d75a3ebd39b32a9d7759c1d6029291dbdaa3ec19c77e70c99d299428df0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c4b469-94ed-918f-fad7-3a42b5f75b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_sum_eight : ∑ i ∈ Finset.range 8, lambda ^ i = 0 := by
  have ht (k : ℕ) (hk : 2 ≤ k) : theta ^ k = 0 := pow_eq_zero_of_le hk theta_sq
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add, lambda_eq_one_add_theta]
  linear_combination (2 + 7 * theta) * four_eq_zero + 56 * theta_sq +
    70 * ht 3 (by norm_num) + 56 * ht 4 (by norm_num) + 28 * ht 5 (by norm_num) +
    8 * ht 6 (by norm_num) + ht 7 (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c52a1085984477c11991a40854fffc0e35111ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
