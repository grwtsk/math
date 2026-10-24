# eq_zero_of_mem_genWeightSpace_mem_posFitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11eac140-ac32-a6e3-4250-88369c2a11da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cc9925f-b81b-55f7-2b6b-bb58a2ad17b5",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_mem_genWeightSpace_mem_posFitting",
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
  "slug": "eq-zero-of-mem-genweightspace-mem-posfitting--4cbd62d2fb4ba8adfb3f64f7",
  "source": {
    "blob": "f408170123f729a4db1da8f1a17c727899bf781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cbd62d2fb4ba8adfb3f64f7e9f2f025efc5d8ea63541bafa4fc11f62e7015f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cc9925f-b81b-55f7-2b6b-bb58a2ad17b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_mem_genWeightSpace_mem_posFitting [LieRing.IsNilpotent L]
    {B : LinearMap.BilinForm R M} (hB : ∀ (x : L) (m n : M), B ⁅x, m⁆ n = - B m ⁅x, n⁆)
    {m₀ m₁ : M} (hm₀ : m₀ ∈ genWeightSpace M (0 : L → R)) (hm₁ : m₁ ∈ posFittingComp R L M) :
    B m₀ m₁ = 0 := by
  replace hB : ∀ x (k : ℕ) m n, B m ((φ x ^ k) n) = (- 1 : R) ^ k • B ((φ x ^ k) m) n := by
    intro x k
    induction k with
    | zero => simp
    | succ k ih =>
    intro m n
    replace hB : ∀ m, B m (φ x n) = (- 1 : R) • B (φ x m) n := by simp [hB]
    have : (-1 : R) ^ k • (-1 : R) = (-1 : R) ^ (k + 1) := by rw [pow_succ (-1 : R), smul_eq_mul]
    conv_lhs => rw [pow_succ, Module.End.mul_eq_comp, LinearMap.comp_apply, ih, hB,
      ← (φ x).comp_apply, ← Module.End.mul_eq_comp, ← pow_succ', ← smul_assoc, this]
  suffices ∀ (x : L) m, m ∈ posFittingCompOf R M x → B m₀ m = 0 by
    refine LieSubmodule.iSup_induction (motive := fun m ↦ (B m₀) m = 0) _ hm₁ this (map_zero _) ?_
    aesop
  clear hm₁ m₁; intro x m₁ hm₁
  simp only [mem_genWeightSpace, Pi.zero_apply, zero_smul, sub_zero] at hm₀
  obtain ⟨k, hk⟩ := hm₀ x
  obtain ⟨m, rfl⟩ := (mem_posFittingCompOf R x m₁).mp hm₁ k
  simp [hB, hk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variant2a68d72a703288061a5229454d39879c1312f31152303c0fd8b727f91228e588.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f408170123f729a4db1da8f1a17c727899bf781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
