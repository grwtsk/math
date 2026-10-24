# ofDigits_zero_two_sequence_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce69178f-e07e-799f-9dc5-471abc939e93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:992b589e-97f8-bbee-5267-4da66ee2346d",
  "kind": "theorem",
  "lexical_name": "ofDigits_zero_two_sequence_unique",
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
  "slug": "ofdigits-zero-two-sequence-unique--940c24cc54bfe6d62dfe6585",
  "source": {
    "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940c24cc54bfe6d62dfe6585735431032a7d3b775ffc3d0fc53c76e35ebc9bee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:992b589e-97f8-bbee-5267-4da66ee2346d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDigits_zero_two_sequence_unique {a b : ℕ → Fin 3} (ha : ∀ n, a n ≠ 1) (hb : ∀ n, b n ≠ 1)
    (h : ofDigits a = ofDigits b) :
    a = b := by
  by_contra! h
  rw [Function.ne_iff] at h
  let n0 := Nat.find h
  have h1 (n) (hn : n < n0) : a n = b n := by simpa using Nat.find_min h hn
  have h2 : a n0 ≠ b n0 := by simpa using Nat.find_spec h
  generalize n0 = n1 at h1 h2
  clear h n0
  wlog h3 : a n1 = 0 ∧ b n1 = 2 generalizing a b
  · exact this hb ha h.symm (fun n hn ↦ (h1 n hn).symm) h2.symm (by grind)
  obtain ⟨h3, h4⟩ := h3
  clear h2
  have : ∑ x ∈ Finset.range n1, ofDigitsTerm a x = ∑ x ∈ Finset.range n1, ofDigitsTerm b x := by
    apply Finset.sum_congr rfl
    grind [ofDigitsTerm]
  rw [ofDigits_eq_sum_add_ofDigits a (n1 + 1),
    ofDigits_eq_sum_add_ofDigits b (n1 + 1), Finset.sum_range_succ,
    Finset.sum_range_succ, this] at h
  replace h : ofDigitsTerm a n1 + (3⁻¹ ^ n1 * ofDigits fun i ↦ a (1 + n1 + i)) * (1 / 3) =
      (3⁻¹ ^ n1 * ofDigits fun i ↦ b (1 + n1 + i)) * (1 / 3) + ofDigitsTerm b n1 := by
    ring_nf at h
    linarith
  simp only [ofDigitsTerm, h3, Fin.isValue, Fin.coe_ofNat_eq_mod, Nat.zero_mod, CharP.cast_eq_zero,
    Nat.cast_ofNat, pow_succ, mul_inv_rev, zero_mul, inv_pow, one_div, zero_add, h4,
    Nat.mod_succ] at h
  replace h : (ofDigits fun i ↦ a (1 + n1 + i)) * 3⁻¹ =
      (ofDigits fun i ↦ b (1 + n1 + i)) * 3⁻¹ + 2 * 3⁻¹ := by
    rw [← mul_right_inj' (show ((3 : ℝ) ^ n1)⁻¹ ≠ 0 by positivity)]
    linarith
  linarith [ofDigits_nonneg (fun i ↦ b (1 + n1 + i)), ofDigits_le_one (fun i ↦ a (1 + n1 + i))]

/-- Given `x ∈ [0, 1/3] ∪ [2/3, 1]` (i.e. a level of the Cantor set),
this function rescales the interval containing `x` back to `[0, 1]`.
Used to iteratively extract the ternary representation of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1e9662b278b4e584feeccfce2be3132dede68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
