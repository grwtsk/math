# homogeneous_mem_or_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33273b34cbda9aed6238a76d6e9c6a80d89379a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e13a0e1-2d25-1fd5-eb9d-5058e84fb2ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acaaecf-d5fc-85f1-9218-5b44128c8901",
  "kind": "theorem",
  "lexical_name": "homogeneous_mem_or_mem",
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
  "slug": "homogeneous-mem-or-mem--bb02d587188349d54dbdea29",
  "source": {
    "blob": "33273b34cbda9aed6238a76d6e9c6a80d89379a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 173,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb02d587188349d54dbdea29cd882b5c9e13f450d1eccf7318707dc848ce6cf9",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acaaecf-d5fc-85f1-9218-5b44128c8901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneous_mem_or_mem {x y : R × R} (hx : SetLike.Homogeneous (grading R) x)
    (hy : SetLike.Homogeneous (grading R) y) (hxy : x * y ∈ I) : x ∈ I ∨ y ∈ I := by
  -- Porting note: added `h2` for later use; the proof is hideous
  have h2 : Prime (2:R) := by
    unfold Prime
    simp only [true_and]
    intro a b
    have aux2 : (Fin.mk 2 _ : R) = 2 := rfl
    have aux3 : (Fin.mk 3 _ : R) = -1 := rfl
    fin_cases a <;>
      simp (config := {contextual := true}) only
        [Fin.mk_zero, zero_mul, dvd_zero, true_or, or_true, implies_true, forall_true_left,
          Fin.mk_one, one_mul, aux2, dvd_refl]
    fin_cases b <;>
      simp (config := {contextual := true}) only
        [Fin.mk_zero, zero_mul, dvd_zero, true_or, or_true, implies_true, forall_true_left,
          Fin.mk_one, mul_one, aux2, dvd_refl, aux3, or_self, neg_one_mul, neg_neg, dvd_neg]
  simp only [I, Ideal.mem_span_singleton] at hxy ⊢
  cases' x; cases' y
  obtain ⟨_ | ⟨⟨⟩⟩, hx : _ = _⟩ := hx <;> obtain ⟨_ | ⟨⟨⟩⟩, hy : _ = _⟩ := hy <;>
    dsimp at hx hy <;>
    cases hx <;>
    cases hy <;>
    -- Porting note: proof was `tauto`
    simp only [prod_dvd_iff, dvd_zero, true_and, and_self,
      Prod.mk_mul_mk, mul_zero, zero_mul] at hxy ⊢ <;>
    apply h2.dvd_or_dvd hxy
#align counterexample.counterexample_not_prime_but_homogeneous_prime.homogeneous_mem_or_mem Counterexample.CounterexampleNotPrimeButHomogeneousPrime.homogeneous_mem_or_mem

end CounterexampleNotPrimeButHomogeneousPrime

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33273b34cbda9aed6238a76d6e9c6a80d89379a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
