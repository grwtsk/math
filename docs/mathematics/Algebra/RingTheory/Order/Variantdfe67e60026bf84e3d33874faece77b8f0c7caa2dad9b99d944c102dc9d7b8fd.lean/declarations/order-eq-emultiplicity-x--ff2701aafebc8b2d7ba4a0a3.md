# order_eq_emultiplicity_X

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
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e067ad07-7a65-0cf8-fb3b-7303c6fe85f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df774e4e-ca9c-ebb8-5826-a09effb9aa76",
  "kind": "theorem",
  "lexical_name": "order_eq_emultiplicity_X",
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
  "slug": "order-eq-emultiplicity-x--ff2701aafebc8b2d7ba4a0a3",
  "source": {
    "blob": "dafeee80a6c1ee03eb057f79499cfb8d9be6cd79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 285,
    "path": "GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff2701aafebc8b2d7ba4a0a3924aae689a90ea720f02b8cd5809bdc622749865",
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

Occurrence: `result:df774e4e-ca9c-ebb8-5826-a09effb9aa76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_eq_emultiplicity_X {R : Type*} [Semiring R] (φ : R⟦X⟧) :
    order φ = emultiplicity X φ := by
  classical
  rcases eq_or_ne φ 0 with (rfl | hφ)
  · simp
  cases ho : order φ with
  | top => simp [hφ] at ho
  | coe n =>
    have hn : φ.order.toNat = n := by simp [ho]
    rw [← hn, eq_comm]
    apply le_antisymm _
    · apply le_emultiplicity_of_pow_dvd
      apply X_pow_order_dvd
    · apply Order.le_of_lt_add_one
      rw [← not_le, ← Nat.cast_one, ← Nat.cast_add, ← pow_dvd_iff_le_emultiplicity]
      rintro ⟨ψ, H⟩
      have := congr_arg (coeff R n) H
      rw [X_pow_mul, coeff_mul_of_lt_order, ← hn] at this
      · exact coeff_order hφ this
      · rw [X_pow_eq, order_monomial]
        split_ifs
        · simp
        · rw [← hn, ENat.coe_lt_coe]
          simp

end OrderBasic

section OrderZeroNeOne

variable [Semiring R] [Nontrivial R]

/-- The order of the formal power series `1` is `0`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Order/Variantdfe67e60026bf84e3d33874faece77b8f0c7caa2dad9b99d944c102dc9d7b8fd.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafeee80a6c1ee03eb057f79499cfb8d9be6cd79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
