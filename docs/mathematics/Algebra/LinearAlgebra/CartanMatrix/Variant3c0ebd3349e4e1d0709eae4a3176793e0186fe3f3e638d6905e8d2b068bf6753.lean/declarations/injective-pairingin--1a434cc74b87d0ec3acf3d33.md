# injective_pairingIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da82dc9672408e339b8367625b07676813aa79b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:922d1c8a-0d5a-95e4-c014-836e9c5cccb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:975a0138-b202-e503-aee2-71567e93c390",
  "kind": "lemma",
  "lexical_name": "injective_pairingIn",
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
  "slug": "injective-pairingin--1a434cc74b87d0ec3acf3d33",
  "source": {
    "blob": "da82dc9672408e339b8367625b07676813aa79b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 270,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a434cc74b87d0ec3acf3d33a55311282e3a0270940704a49e98f745c4858191",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:975a0138-b202-e503-aee2-71567e93c390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_pairingIn {P : RootPairing ι R M N} [P.IsRootSystem] [P.IsCrystallographic]
    (b : P.Base) :
    Injective (fun i (k : b.support) ↦ P.pairingIn ℤ i k) := by
  classical
  intro i j hij
  obtain ⟨f, -, -, hf⟩ := b.exists_root_eq_sum_int i
  obtain ⟨g, -, -, hg⟩ := b.exists_root_eq_sum_int j
  let f' : b.support → ℤ := f ∘ (↑)
  let g' : b.support → ℤ := g ∘ (↑)
  suffices f' = g' by
    rw [← P.root.apply_eq_iff_eq, hf, hg]
    refine Finset.sum_congr rfl fun k hk ↦ ?_
    replace this : f k = g k := congr_fun this ⟨k, hk⟩
    rw [this]
  replace hf : (fun k : b.support ↦ P.pairingIn ℤ i k) = f' ᵥ* b.cartanMatrix := by
    suffices ∀ k, P.pairingIn ℤ i k = ∑ l ∈ b.support, f l * P.pairingIn ℤ l k by
      ext; simp [f', this, cartanMatrixIn, Matrix.vecMul_eq_sum, b.support.sum_subtype (by tauto)]
    refine fun k ↦ algebraMap_injective ℤ R ?_
    simp_rw [algebraMap_pairingIn, map_sum, map_mul, algebraMap_pairingIn,
      ← P.root_coroot'_eq_pairing]
    simp [hf]
  replace hg : (fun k : b.support ↦ P.pairingIn ℤ j k) = g' ᵥ* b.cartanMatrix := by
    suffices ∀ k, P.pairingIn ℤ j k = ∑ l ∈ b.support, g l * P.pairingIn ℤ l k by
      ext; simp [g', this, cartanMatrixIn, Matrix.vecMul_eq_sum, b.support.sum_subtype (by tauto)]
    refine fun k ↦ algebraMap_injective ℤ R ?_
    simp_rw [algebraMap_pairingIn, map_sum, map_mul, algebraMap_pairingIn,
      ← P.root_coroot'_eq_pairing]
    simp [hg]
  suffices Injective fun v ↦ v ᵥ* b.cartanMatrix from this <| by simpa [← hf, ← hg]
  rw [Matrix.vecMul_injective_iff]
  apply Matrix.linearIndependent_rows_of_det_ne_zero
  rw [← Matrix.nondegenerate_iff_det_ne_zero]
  exact b.cartanMatrix_nondegenerate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da82dc9672408e339b8367625b07676813aa79b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
