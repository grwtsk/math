# irreducible_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a226d8b8035b767644963453525c83d8b208e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb6dd989-2803-a55d-3750-19af4ed35f1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ced7db94-5bd3-5219-54dd-b6216fa11629",
  "kind": "theorem",
  "lexical_name": "irreducible_aux1",
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
  "slug": "irreducible-aux1--9032f7e3c305e66f7a7d267b",
  "source": {
    "blob": "6a226d8b8035b767644963453525c83d8b208e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 201,
    "path": "GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9032f7e3c305e66f7a7d267b19d436d321168d633ed21ae593291f08f1798227",
  "verification": {
    "reference": "docs/verification/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced7db94-5bd3-5219-54dd-b6216fa11629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_aux1 {k m n : ℕ} (hkm : k < m) (hmn : m < n) (u v w : Units ℤ)
    (hp : p = trinomial k m n (u : ℤ) v w) :
    C (v : ℤ) * (C (u : ℤ) * X ^ (m + n) + C (w : ℤ) * X ^ (n - m + k + n)) =
      ⟨Finsupp.filter (· ∈ Set.Ioo (k + n) (n + n)) (p * p.mirror).toFinsupp⟩ := by
  have key : n - m + k < n := by rwa [← lt_tsub_iff_right, tsub_lt_tsub_iff_left_of_le hmn.le]
  rw [hp, trinomial_mirror hkm hmn u.ne_zero w.ne_zero]
  simp_rw [trinomial_def, C_mul_X_pow_eq_monomial, add_mul, mul_add, monomial_mul_monomial,
    toFinsupp_add, toFinsupp_monomial]
  -- Porting note: added next line (less powerful `simp`).
  rw [Finsupp.filter_add, Finsupp.filter_add, Finsupp.filter_add, Finsupp.filter_add,
    Finsupp.filter_add, Finsupp.filter_add, Finsupp.filter_add, Finsupp.filter_add]
  rw [Finsupp.filter_single_of_neg, Finsupp.filter_single_of_neg, Finsupp.filter_single_of_neg,
    Finsupp.filter_single_of_neg, Finsupp.filter_single_of_neg, Finsupp.filter_single_of_pos,
    Finsupp.filter_single_of_neg, Finsupp.filter_single_of_pos, Finsupp.filter_single_of_neg]
  · simp only [add_zero, zero_add, ofFinsupp_add, ofFinsupp_single]
    -- Porting note: added next two lines (less powerful `simp`).
    rw [ofFinsupp_add]
    simp only [ofFinsupp_single]
    rw [C_mul_monomial, C_mul_monomial, mul_comm (v : ℤ) w, add_comm (n - m + k) n]
  · exact fun h => h.2.ne rfl
  · refine ⟨?_, add_lt_add_left key n⟩
    rwa [add_comm, add_lt_add_iff_left, lt_add_iff_pos_left, tsub_pos_iff_lt]
  · exact fun h => h.1.ne (add_comm k n)
  · exact ⟨add_lt_add_right hkm n, add_lt_add_right hmn n⟩
  · rw [← add_assoc, add_tsub_cancel_of_le hmn.le, add_comm]
    exact fun h => h.1.ne rfl
  · intro h
    have := h.1
    rw [add_comm, add_lt_add_iff_right] at this
    exact asymm this hmn
  · exact fun h => h.1.ne rfl
  · exact fun h => asymm ((add_lt_add_iff_left k).mp h.1) key
  · exact fun h => asymm ((add_lt_add_iff_left k).mp h.1) (hkm.trans hmn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a226d8b8035b767644963453525c83d8b208e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
