# geometric_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c65cef8-26d0-fc38-78b9-a2aedef46d95",
  "kind": "theorem",
  "lexical_name": "geometric_three",
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
  "slug": "geometric-three--e50a0e50165b280e42fbf123",
  "source": {
    "blob": "874532870ece5cd177e2ab2513daf4ff2e2dadff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 20,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variant231f8ea1485db18ffbeafd3b3fb44eedcec04e5290364dc3b93cb3fbf37dd782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50a0e50165b280e42fbf12349d18f269fabee873a5a2f8195f8f9a843dc7c1c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variant231f8ea1485db18ffbeafd3b3fb44eedcec04e5290364dc3b93cb3fbf37dd782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c65cef8-26d0-fc38-78b9-a2aedef46d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_three (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr : r < 1) :
    (∑ k ∈ Icc 3 N, r^k) ≤ r^3*(1-r)⁻¹ := by
  have hs : (∑ k ∈ Icc 3 N, r^k)=∑ j ∈ range (N-2),r^(j+3) := by
    apply sum_bij (fun k _=>k-3)
    · intro k hk
      simp only [mem_Icc] at hk
      simp only [mem_range]
      omega
    · intro x hx y hy he
      simp only [mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j+3,?_,by omega⟩
      simp only [mem_range] at hj
      simp only [mem_Icc]
      omega
    · intro k hk
      congr 1
      have := (mem_Icc.mp hk).1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum (range (N-2))
    (fun j _=>pow_nonneg hr0 j)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  rw [hs]
  simp_rw [pow_add]
  rw [← sum_mul]
  nlinarith [pow_nonneg hr0 3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variant231f8ea1485db18ffbeafd3b3fb44eedcec04e5290364dc3b93cb3fbf37dd782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerNumericAttempt01/Variant231f8ea1485db18ffbeafd3b3fb44eedcec04e5290364dc3b93cb3fbf37dd782.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `874532870ece5cd177e2ab2513daf4ff2e2dadff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
