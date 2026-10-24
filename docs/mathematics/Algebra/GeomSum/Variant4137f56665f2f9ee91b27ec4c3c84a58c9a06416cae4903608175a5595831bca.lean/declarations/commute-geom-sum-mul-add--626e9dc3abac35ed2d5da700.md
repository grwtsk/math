# Commute.geom_sum₂_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac62bffc-433c-697f-e2ad-5b281f23aae2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5435d286-b739-3d83-7064-e64412fe588a",
  "kind": "theorem",
  "lexical_name": "Commute.geom_sum₂_mul_add",
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
  "slug": "commute-geom-sum-mul-add--626e9dc3abac35ed2d5da700",
  "source": {
    "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 103,
    "path": "GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:626e9dc3abac35ed2d5da700f77dc5d56ccc6f86225b7ac5be4e8d6f576e1c76",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5435d286-b739-3d83-7064-e64412fe588a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Commute.geom_sum₂_mul_add {x y : α} (h : Commute x y) (n : ℕ) :
    (∑ i in range n, (x + y) ^ i * y ^ (n - 1 - i)) * x + y ^ n = (x + y) ^ n := by
  let f :  ℕ → ℕ → α := fun m i : ℕ => (x + y) ^ i * y ^ (m - 1 - i)
  -- porting note: adding `hf` here, because below in two places `dsimp [f]` didn't work
  have hf : ∀ m i : ℕ, f m i = (x + y) ^ i * y ^ (m - 1 - i) := by
    simp only [ge_iff_le, tsub_le_iff_right, forall_const]
  change (∑ i in range n, (f n) i) * x + y ^ n = (x + y) ^ n
  induction' n with n ih
  · rw [range_zero, sum_empty, zero_mul, zero_add, pow_zero, pow_zero]
  · have f_last : f (n + 1) n = (x + y) ^ n := by
      rw [hf, ← tsub_add_eq_tsub_tsub, Nat.add_comm, tsub_self, pow_zero, mul_one]
    have f_succ : ∀ i, i ∈ range n → f (n + 1) i = y * f n i := fun i hi => by
      rw [hf]
      have : Commute y ((x + y) ^ i) := (h.symm.add_right (Commute.refl y)).pow_right i
      rw [← mul_assoc, this.eq, mul_assoc, ← pow_succ y (n - 1 - i)]
      congr 2
      rw [add_tsub_cancel_right, ← tsub_add_eq_tsub_tsub, add_comm 1 i]
      have : i + 1 + (n - (i + 1)) = n := add_tsub_cancel_of_le (mem_range.mp hi)
      rw [add_comm (i + 1)] at this
      rw [← this, add_tsub_cancel_right, add_comm i 1, ← add_assoc, add_tsub_cancel_right]
    rw [pow_succ (x + y), add_mul, sum_range_succ_comm, add_mul, f_last, add_assoc]
    rw [(((Commute.refl x).add_right h).pow_right n).eq]
    congr 1
    rw [sum_congr rfl f_succ, ← mul_sum, pow_succ y, mul_assoc, ← mul_add y, ih]
#align commute.geom_sum₂_mul_add Commute.geom_sum₂_mul_add

end Semiring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
