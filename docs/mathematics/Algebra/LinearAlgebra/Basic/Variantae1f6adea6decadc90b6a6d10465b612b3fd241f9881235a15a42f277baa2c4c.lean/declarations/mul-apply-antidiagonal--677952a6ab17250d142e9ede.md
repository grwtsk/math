# mul_apply_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc6966fa-a45f-4d21-5439-426a05113238",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:637805b1-b186-c15a-639c-e11ecafee464",
  "kind": "theorem",
  "lexical_name": "mul_apply_antidiagonal",
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
  "slug": "mul-apply-antidiagonal--677952a6ab17250d142e9ede",
  "source": {
    "blob": "830345ad09252f2061e2457c2c26d77c91d4277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 433,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:677952a6ab17250d142e9ede1fd3b5fe298fab9bac7dd9c49981e7936d5a6f42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:637805b1-b186-c15a-639c-e11ecafee464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_apply_antidiagonal [Mul G] (f g : MonoidAlgebra k G) (x : G) (s : Finset (G × G))
    (hs : ∀ {p : G × G}, p ∈ s ↔ p.1 * p.2 = x) : (f * g) x = ∑ p in s, f p.1 * g p.2 := by
  classical exact
      let F : G × G → k := fun p => if p.1 * p.2 = x then f p.1 * g p.2 else 0
      calc
        (f * g) x = ∑ a₁ in f.support, ∑ a₂ in g.support, F (a₁, a₂) := mul_apply f g x
        _ = ∑ p in f.support ×ˢ g.support, F p := Finset.sum_product.symm
        _ = ∑ p in (f.support ×ˢ g.support).filter fun p : G × G => p.1 * p.2 = x, f p.1 * g p.2 :=
          (Finset.sum_filter _ _).symm
        _ = ∑ p in s.filter fun p : G × G => p.1 ∈ f.support ∧ p.2 ∈ g.support, f p.1 * g p.2 :=
          (sum_congr
            (by
              ext
              simp only [mem_filter, mem_product, hs, and_comm])
            fun _ _ => rfl)
        _ = ∑ p in s, f p.1 * g p.2 :=
          sum_subset (filter_subset _ _) fun p hps hp => by
            simp only [mem_filter, mem_support_iff, not_and, Classical.not_not] at hp ⊢
            by_cases h1 : f p.1 = 0
            · rw [h1, zero_mul]
            · rw [hp hps h1, mul_zero]
#align monoid_algebra.mul_apply_antidiagonal MonoidAlgebra.mul_apply_antidiagonal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantae1f6adea6decadc90b6a6d10465b612b3fd241f9881235a15a42f277baa2c4c.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830345ad09252f2061e2457c2c26d77c91d4277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
