# monicVector_inner_multiplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fe52faf-d9e9-e62c-a027-609a616e0fba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2466b50-ff1b-6b66-0960-f85a7b3e4b00",
  "kind": "theorem",
  "lexical_name": "monicVector_inner_multiplication",
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
  "slug": "monicvector-inner-multiplication--128ecd079531a2bddabeb587",
  "source": {
    "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:128ecd079531a2bddabeb5878014c270cfd185008eb55fbb14b27e0499562b73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2466b50-ff1b-6b66-0960-f85a7b3e4b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monicVector_inner_multiplication {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪monicVector t ht (n + 1),
      multiplicationMap t (monicDomainVector t ht n)⟫_ℂ =
        (‖monicVector t ht (n + 1)‖ : ℂ) ^ 2 := by
  have h := congrArg (fun f : coordinateDomain (momentMeasure t) =>
    ⟪monicVector t ht (n + 1), multiplicationMap t f⟫_ℂ)
      (powerDomain_monic_decomposition ht n)
  simp only [map_add, map_sum, map_smul, inner_add_right, inner_sum, inner_smul_right] at h
  have hs : (∑ i ∈ Finset.Iio n,
      (⟪monicVector t ht i, powerVector t ht n⟫_ℂ / (‖monicVector t ht i‖ : ℂ) ^ 2) *
      ⟪monicVector t ht (n + 1),
        multiplicationMap t (monicDomainVector t ht i)⟫_ℂ) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hn : i + 1 < n + 1 := by have := Finset.mem_Iio.mp hi; omega
    rw [monicVector_inner_flag_eq_zero ht hn _
      (multiplication_flag ht i _ (monicVector_mem_flag ht i)), mul_zero]
  rw [hs, add_zero] at h
  rw [multiplicationMap_powerVector ht n, monicVector_inner_power ht (n + 1)] at h
  exact h.symm

/-- Positive actual hopping coefficient, the ratio of successive remainder norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd5644709417ba33995718873c494d071bc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
