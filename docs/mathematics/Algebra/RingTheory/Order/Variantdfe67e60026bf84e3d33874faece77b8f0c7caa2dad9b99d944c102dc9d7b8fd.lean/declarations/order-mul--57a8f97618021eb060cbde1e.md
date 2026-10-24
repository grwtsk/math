# order_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dafeee80a6c1ee03eb057f79499cfb8d9be6cd79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b0e1725-a30e-9267-4016-74c3efbd9efa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa485d0e-6cf6-1bd7-0eb9-459690d7af14",
  "kind": "theorem",
  "lexical_name": "order_mul",
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
  "slug": "order-mul--57a8f97618021eb060cbde1e",
  "source": {
    "blob": "dafeee80a6c1ee03eb057f79499cfb8d9be6cd79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 356,
    "path": "GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a8f97618021eb060cbde1e8bf80e6d63a1d73ab888718e542ac08ddd333766",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa485d0e-6cf6-1bd7-0eb9-459690d7af14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_mul (φ ψ : R⟦X⟧) : order (φ * ψ) = order φ + order ψ := by
  apply le_antisymm _ (le_order_mul _ _)
  by_cases h : φ = 0 ∨ ψ = 0
  · rcases h with h | h <;> simp [h]
  · push_neg at h
    rw [← coe_toNat_order h.1, ← coe_toNat_order h.2, ← ENat.coe_add]
    apply order_le
    rw [coeff_mul, Finset.sum_eq_single_of_mem ⟨φ.order.toNat, ψ.order.toNat⟩ (by simp)]
    · exact mul_ne_zero (coeff_order h.1) (coeff_order h.2)
    · intro ij hij h
      rcases trichotomy_of_add_eq_add (mem_antidiagonal.mp hij) with h' | h' | h'
      · exact False.elim (h (by simp [Prod.ext_iff, h'.1, h'.2]))
      · rw [coeff_of_lt_order_toNat ij.1 h', zero_mul]
      · rw [coeff_of_lt_order_toNat ij.2 h', mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafeee80a6c1ee03eb057f79499cfb8d9be6cd79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
