# div_prod_eq_quo_add_sum_rem_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c45b6ff-e0bc-82f9-c958-95478e7037b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:718a6d73-7dd5-dfd1-0d90-327605055327",
  "kind": "theorem",
  "lexical_name": "div_prod_eq_quo_add_sum_rem_div",
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
  "slug": "div-prod-eq-quo-add-sum-rem-div--a264df3535643fe23b6758a5",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 425,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a264df3535643fe23b6758a52e6dbe12fd1faf57c8e67b1c5134e9ebb701d654",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718a6d73-7dd5-dfd1-0d90-327605055327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_prod_eq_quo_add_sum_rem_div (f : R[X]) {ι : Type*} {g : ι → R[X]} {s : Finset ι}
    (hg : ∀ i ∈ s, (g i).Monic) (hcop : Set.Pairwise ↑s fun i j => IsCoprime (g i) (g j)) :
    ∃ (q : R[X]) (r : ι → R[X]),
      (∀ i ∈ s, (r i).degree < (g i).degree) ∧
        ((↑f : K) / ∏ i ∈ s, ↑(g i)) = ↑q + ∑ i ∈ s, (r i : K) / (g i : K) := by
  have : Nontrivial R :=
    have : Nontrivial R[X] := Module.nontrivial R[X] K
    Module.nontrivial R R[X]
  have hgi (i : ι) (hi : i ∈ s) : (algebraMap R[X] K (g i))⁻¹ * algebraMap R[X] K (g i) = 1 :=
    inv_mul_cancel₀ (by simpa using (hg i hi).ne_zero)
  obtain ⟨q, r, hr, hf⟩ := mul_prod_pow_inverse_eq_quo_add_sum_rem_mul_pow_inverse
    f hg hcop (fun _ => 1) hgi
  refine ⟨q, fun i => r i 0, fun i hi => hr i hi 0, ?_⟩
  simp_rw [Fin.sum_univ_one, Fin.val_zero, zero_add, pow_one, Finset.prod_inv_distrib] at hf
  simp_rw [Algebra.cast, div_eq_mul_inv]
  exact hf

/-- Let `R` be an integral domain and `f : R[X]`. Let `s` be a finite index set.
Then a fraction of the form `f / ∏ i ∈ s, g i` evaluated in a field `K` containing `R[X]`
can be rewritten as `q + ∑ i ∈ s, r i / g i` in at most one way, where
`degree (r i) < degree (g i)`, provided that the `g i` are monic and pairwise coprime.
See `div_prod_eq_quo_add_sum_rem_div` for the existence of such a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
