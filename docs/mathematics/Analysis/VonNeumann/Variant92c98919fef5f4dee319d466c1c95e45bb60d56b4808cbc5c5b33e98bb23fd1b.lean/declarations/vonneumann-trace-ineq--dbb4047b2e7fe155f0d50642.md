# vonNeumann_trace_ineq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47a5d48a-ee10-8b3d-8a9d-8769c6eab370",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1726757d-e873-fb4f-ae3e-f09a47f76260",
  "kind": "theorem",
  "lexical_name": "vonNeumann_trace_ineq",
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
  "slug": "vonneumann-trace-ineq--dbb4047b2e7fe155f0d50642",
  "source": {
    "blob": "5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 171,
    "path": "GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb4047b2e7fe155f0d50642940d2a6ef9c203c932bce68b62293f40d261dec5",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1726757d-e873-fb4f-ae3e-f09a47f76260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonNeumann_trace_ineq {A B : Matrix n n 𝕜}
    (hA : A.IsHermitian) (hB : B.IsHermitian) :
    RCLike.re (A * B).trace
      ≤ ∑ i, hA.eigenvalues₀ i * hB.eigenvalues₀ i := by
  -- Step 1: express `Re tr(AB)` via the bilinear form in `normSqMatrix W`.
  rw [re_trace_mul_eq_eigenvalue_bilinear hA hB]
  set W := star (hA.eigenvectorUnitary : Matrix n n 𝕜) *
    (hB.eigenvectorUnitary : Matrix n n 𝕜)
  have hW : W ∈ Matrix.unitaryGroup n 𝕜 :=
    mul_mem (Unitary.star_mem hA.eigenvectorUnitary.2) hB.eigenvectorUnitary.2
  have hDS := normSqMatrix_mem_doublyStochastic_of_unitary hW
  -- Step 2: reindex `n → Fin (card n)` via the canonical equivalence `e`,
  -- under which `eigenvalues (e k) = eigenvalues₀ k`.
  set e : Fin (Fintype.card n) ≃ n :=
    Fintype.equivOfCardEq (Fintype.card_fin _) with he_def
  have hevA : ∀ k, hA.eigenvalues (e k) = hA.eigenvalues₀ k := by
    intro k; simp [Matrix.IsHermitian.eigenvalues, he_def]
  have hevB : ∀ k, hB.eigenvalues (e k) = hB.eigenvalues₀ k := by
    intro k; simp [Matrix.IsHermitian.eigenvalues, he_def]
  -- Reindex both sums by `e`.
  have hre : ∑ k, ∑ l, hA.eigenvalues k * normSqMatrix W k l * hB.eigenvalues l
      = ∑ k, ∑ l, hA.eigenvalues₀ k * normSqMatrix W (e k) (e l) * hB.eigenvalues₀ l := by
    rw [← e.sum_comp]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [← e.sum_comp]
    simp only [hevA, hevB]
  rw [hre]
  -- Step 3: apply the doubly-stochastic bilinear bound.
  refine bilinear_doublyStochastic_le_of_monovary ?_ ?_
  · exact hA.eigenvalues₀_antitone.monovary_antitone hB.eigenvalues₀_antitone
  · -- Reindexed `normSqMatrix W` is still doubly stochastic.
    exact reindex_mem_doublyStochastic (e₁ := e.symm) (e₂ := e.symm) hDS

end RHLinalg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
