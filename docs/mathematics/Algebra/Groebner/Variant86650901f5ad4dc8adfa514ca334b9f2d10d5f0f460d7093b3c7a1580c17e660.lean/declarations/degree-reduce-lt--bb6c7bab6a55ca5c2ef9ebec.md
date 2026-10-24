# degree_reduce_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "183e556f063cf72534a90212fd1864f38a7c7356",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a98d04db-9586-e650-019c-d2f88fa23696",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3b0890f-2bba-9e49-1602-725f630c16e8",
  "kind": "theorem",
  "lexical_name": "degree_reduce_lt",
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
  "slug": "degree-reduce-lt--bb6c7bab6a55ca5c2ef9ebec",
  "source": {
    "blob": "183e556f063cf72534a90212fd1864f38a7c7356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 89,
    "path": "GRWTSK/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb6c7bab6a55ca5c2ef9ebeca5553c02ff01b3acd24258a20bea7bd4be31f003",
  "verification": {
    "reference": "docs/verification/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b0890f-2bba-9e49-1602-725f630c16e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_reduce_lt {f b : MvPolynomial σ R} (hb : IsUnit (m.leadingCoeff b))
    (hbf : m.degree b ≤ m.degree f) (hf : m.degree f ≠ 0) :
    m.degree (m.reduce hb f) ≺[m] m.degree f := by
  have H : m.degree f =
      m.degree ((monomial (m.degree f - m.degree b)) (hb.unit⁻¹ * m.leadingCoeff f)) +
        m.degree b := by
    classical
    rw [degree_monomial, if_neg]
    · ext d
      rw [tsub_add_cancel_of_le hbf]
    · simp only [Units.mul_right_eq_zero, leadingCoeff_eq_zero_iff]
      intro hf0
      apply hf
      simp [hf0]
  have H' : coeff (m.degree f) (m.reduce hb f) = 0 := by
    simp only [reduce, coeff_sub, sub_eq_zero]
    nth_rewrite 2 [H]
    rw [coeff_mul_of_degree_add (m := m), leadingCoeff_monomial, mul_comm, ← mul_assoc,
      IsUnit.mul_val_inv, one_mul, ← leadingCoeff]
  rw [lt_iff_le_and_ne]
  constructor
  · classical
    apply le_trans degree_sub_le
    simp only [sup_le_iff, le_refl, true_and]
    apply le_of_le_of_eq degree_mul_le
    rw [m.toSyn.injective.eq_iff]
    exact H.symm
  · intro K
    simp only [EmbeddingLike.apply_eq_iff_eq] at K
    nth_rewrite 1 [← K] at H'
    rw [← leadingCoeff, leadingCoeff_eq_zero_iff] at H'
    rw [H', degree_zero] at K
    exact hf K.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Groebner/Variant86650901f5ad4dc8adfa514ca334b9f2d10d5f0f460d7093b3c7a1580c17e660.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183e556f063cf72534a90212fd1864f38a7c7356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
