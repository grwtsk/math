# monicVector_inner_power

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
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3aef37f-8685-031f-fe86-5f8f1369713d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91099b8c-5739-7a20-4947-d3b5fcbf7404",
  "kind": "theorem",
  "lexical_name": "monicVector_inner_power",
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
  "slug": "monicvector-inner-power--55c00d30ee19c0fdd8c6ddd8",
  "source": {
    "blob": "6ecd5644709417ba33995718873c494d071bc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55c00d30ee19c0fdd8c6ddd8f3f26551dfdd79379cb37c3e982ef27bf17f698f",
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

Occurrence: `result:91099b8c-5739-7a20-4947-d3b5fcbf7404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monicVector_inner_power {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪monicVector t ht n, powerVector t ht n⟫_ℂ = (‖monicVector t ht n‖ : ℂ) ^ 2 := by
  have h := congrArg (fun f => ⟪monicVector t ht n, f⟫_ℂ)
    (InnerProductSpace.gramSchmidt_def'' ℂ (powerVector t ht) n)
  simp only [inner_add_right, inner_sum, inner_smul_right] at h
  have hs : (∑ i ∈ Finset.Iio n,
      (⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i, powerVector t ht n⟫_ℂ /
        (‖InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i‖ : ℂ) ^ 2) *
      ⟪monicVector t ht n, InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i⟫_ℂ) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hz : ⟪monicVector t ht n, InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i⟫_ℂ = 0 :=
      InnerProductSpace.gramSchmidt_orthogonal ℂ (powerVector t ht) (Finset.mem_Iio.mp hi).ne'
    rw [hz, mul_zero]
  simp only [monicVector] at h hs ⊢
  have hh : ⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n, powerVector t ht n⟫_ℂ =
      ⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n,
        InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n⟫_ℂ + 0 := by
    convert h using 1
    congr 1
    exact hs.symm
  rw [add_zero, inner_self_eq_norm_sq_to_K] at hh
  exact hh

/-- Leading monomial decomposition lifted to the literal maximal domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variant984de101f626c50f76e82dff612082dfecfd60bf7d6675b4e3b36cf95b91e0f3.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecd5644709417ba33995718873c494d071bc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
