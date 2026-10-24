# MulChar.exists_apply_sub_one_mul_apply_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2df05512d169e46bf830374374bf313789010251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ec9042f-3834-e4be-6952-9bbadcf09440",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03158d34-6591-e8e8-61ac-7f954a51f042",
  "kind": "lemma",
  "lexical_name": "MulChar.exists_apply_sub_one_mul_apply_sub_one",
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
  "slug": "mulchar-exists-apply-sub-one-mul-apply-sub-one--bd3bb1b03d9a96a8a77d4999",
  "source": {
    "blob": "2df05512d169e46bf830374374bf313789010251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 258,
    "path": "GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd3bb1b03d9a96a8a77d499911ae1252ad2907c63936c044beeb38e80c307831",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03158d34-6591-e8e8-61ac-7f954a51f042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MulChar.exists_apply_sub_one_mul_apply_sub_one {n : ℕ} [NeZero n] {χ ψ : MulChar F R}
    {μ : R} (hχ : χ ^ n = 1) (hψ : ψ ^ n = 1) (hμ : IsPrimitiveRoot μ n) (x : F) :
    ∃ z ∈ ℤ[μ], (χ x - 1) * (ψ (1 - x) - 1) = z * (μ - 1) ^ 2 := by
  rcases eq_or_ne x 0 with rfl | hx₀
  · exact ⟨0, Subalgebra.zero_mem _, by rw [sub_zero, ψ.map_one, sub_self, mul_zero, zero_mul]⟩
  rcases eq_or_ne x 1 with rfl | hx₁
  · exact ⟨0, Subalgebra.zero_mem _, by rw [χ.map_one, sub_self, zero_mul, zero_mul]⟩
  obtain ⟨z₁, hz₁, Hz₁⟩ := MulChar.exists_apply_sub_one_eq_mul_sub_one hχ hμ hx₀
  obtain ⟨z₂, hz₂, Hz₂⟩ :=
    MulChar.exists_apply_sub_one_eq_mul_sub_one hψ hμ (sub_ne_zero_of_ne hx₁.symm)
  rewrite [Hz₁, Hz₂, sq]
  exact ⟨z₁ * z₂, Subalgebra.mul_mem _ hz₁ hz₂, mul_mul_mul_comm ..⟩

end finite

variable [Fintype F]

/-- If `χ` and `φ` are multiplicative characters on a finite field `F` satisfying `χ^n = φ^n = 1`
and with values in an integral domain `R`, and `μ` is a primitive `n`th root of unity in `R`,
then the Jacobi sum `J(χ,φ)` is in `ℤ[μ] ⊆ R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantf98145e4cb90a324c47f405cf87f040686dea17f9e687b5c0646e2e2f6a7ecf6.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df05512d169e46bf830374374bf313789010251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
