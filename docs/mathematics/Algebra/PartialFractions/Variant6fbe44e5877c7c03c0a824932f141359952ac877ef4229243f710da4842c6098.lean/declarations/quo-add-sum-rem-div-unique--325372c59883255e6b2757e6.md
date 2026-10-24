# quo_add_sum_rem_div_unique

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
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:614fc73b-d870-4ac6-4855-10aab9812002",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6361d0f-eac9-bd81-0ad6-94342d6bb8d9",
  "kind": "theorem",
  "lexical_name": "quo_add_sum_rem_div_unique",
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
  "slug": "quo-add-sum-rem-div-unique--325372c59883255e6b2757e6",
  "source": {
    "blob": "18cd6899ce3f65f061963587fccb57076e1151ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 447,
    "path": "GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:325372c59883255e6b2757e665307b37c4e504c135bb3a877ebc3d4ae6e560d6",
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

Occurrence: `result:e6361d0f-eac9-bd81-0ad6-94342d6bb8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_add_sum_rem_div_unique {ι : Type*} {g : ι → R[X]} {s : Finset ι}
    (hg : ∀ i ∈ s, (g i).Monic) (hcop : Set.Pairwise ↑s fun i j => IsCoprime (g i) (g j))
    {q₁ q₂ : R[X]} {r₁ r₂ : ι → R[X]}
    (hr₁ : ∀ i ∈ s, (r₁ i).degree < (g i).degree)
    (hr₂ : ∀ i ∈ s, (r₂ i).degree < (g i).degree)
    (hf : ↑q₁ + ∑ i ∈ s, (r₁ i : K) / (g i : K) = ↑q₂ + ∑ i ∈ s, (r₂ i : K) / (g i : K)) :
    q₁ = q₂ ∧ ∀ i ∈ s, r₁ i = r₂ i := by
  have : Nontrivial R :=
    have : Nontrivial R[X] := Module.nontrivial R[X] K
    Module.nontrivial R R[X]
  have hgi (i : ι) (hi : i ∈ s) : (algebraMap R[X] K (g i))⁻¹ * algebraMap R[X] K (g i) = 1 :=
    inv_mul_cancel₀ (by simpa using (hg i hi).ne_zero)
  refine (quo_add_sum_rem_mul_pow_inverse_unique (n := fun _ => 1)
      hg hcop hgi (fun i hi _ => hr₁ i hi) (fun i hi _ => hr₂ i hi) ?_).imp_right
      fun h i hi => congrFun (h i hi) 0
  simp_rw [Fin.sum_univ_one, Fin.val_zero, zero_add, pow_one, ← div_eq_mul_inv]
  exact hf

end NDenominators

section TwoDenominators

open scoped algebraMap

/-- Let `R` be an integral domain and `f, g₁, g₂ : R[X]`. Let `g₁` and `g₂` be monic and coprime.
Then `∃ q, r₁, r₂ : R[X]` such that `f / (g₁ * g₂) = q + r₁ / g₁ + r₂ / g₂` and
`degree rᵢ < degree gᵢ`, where the equality is taken in a field `K` containing `R[X]`.
See `quo_add_rem_div_add_rem_div_unique` for the uniqueness of this representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variant6fbe44e5877c7c03c0a824932f141359952ac877ef4229243f710da4842c6098.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18cd6899ce3f65f061963587fccb57076e1151ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
