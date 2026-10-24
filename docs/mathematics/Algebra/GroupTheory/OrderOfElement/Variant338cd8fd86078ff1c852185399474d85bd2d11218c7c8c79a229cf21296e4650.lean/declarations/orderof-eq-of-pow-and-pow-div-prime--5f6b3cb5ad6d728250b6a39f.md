# orderOf_eq_of_pow_and_pow_div_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "844d4c73681e29ed65c6d80132f05020a0274a0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c2e1071-4c2c-89b0-1aaf-5c56dc184ba4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4768d73f-c7c2-8d7e-2800-88ba45ec3967",
  "kind": "theorem",
  "lexical_name": "orderOf_eq_of_pow_and_pow_div_prime",
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
  "slug": "orderof-eq-of-pow-and-pow-div-prime--5f6b3cb5ad6d728250b6a39f",
  "source": {
    "blob": "844d4c73681e29ed65c6d80132f05020a0274a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 345,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f6b3cb5ad6d728250b6a39f877a33ded34cda7331407247890cb2136424b88d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4768d73f-c7c2-8d7e-2800-88ba45ec3967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_eq_of_pow_and_pow_div_prime (hn : 0 < n) (hx : x ^ n = 1)
    (hd : ∀ p : ℕ, p.Prime → p ∣ n → x ^ (n / p) ≠ 1) : orderOf x = n := by
  -- Let `a` be `n/(orderOf x)`, and show `a = 1`
  obtain ⟨a, ha⟩ := exists_eq_mul_right_of_dvd (orderOf_dvd_of_pow_eq_one hx)
  suffices a = 1 by simp [this, ha]
  -- Assume `a` is not one...
  by_contra h
  have a_min_fac_dvd_p_sub_one : a.minFac ∣ n := by
    obtain ⟨b, hb⟩ : ∃ b : ℕ, a = b * a.minFac := exists_eq_mul_left_of_dvd a.minFac_dvd
    rw [hb, ← mul_assoc] at ha
    exact Dvd.intro_left (orderOf x * b) ha.symm
  -- Use the minimum prime factor of `a` as `p`.
  refine hd a.minFac (Nat.minFac_prime h) a_min_fac_dvd_p_sub_one ?_
  rw [← orderOf_dvd_iff_pow_eq_one, Nat.dvd_div_iff_mul_dvd a_min_fac_dvd_p_sub_one, ha, mul_comm,
    Nat.mul_dvd_mul_iff_left (IsOfFinOrder.orderOf_pos _)]
  · exact Nat.minFac_dvd a
  · rw [isOfFinOrder_iff_pow_eq_one]
    exact Exists.intro n (id ⟨hn, hx⟩)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844d4c73681e29ed65c6d80132f05020a0274a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
