# χ₄_eq_neg_one_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d420847c09e254fd07ab24c4d19183bc4e48b27b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15f7773b-a4aa-3407-3ce6-6e247e34e57a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59a87a0a-89e8-85ff-708c-f7cce9a4a183",
  "kind": "theorem",
  "lexical_name": "χ₄_eq_neg_one_pow",
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
  "slug": "eq-neg-one-pow--5471893e3ce2b324ef771df4",
  "source": {
    "blob": "d420847c09e254fd07ab24c4d19183bc4e48b27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5471893e3ce2b324ef771df4cbd95beab8a62f17804edffb7725f4a21c9bcfc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59a87a0a-89e8-85ff-708c-f7cce9a4a183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₄_eq_neg_one_pow {n : ℕ} (hn : n % 2 = 1) : χ₄ n = (-1) ^ (n / 2) := by
  rw [χ₄_nat_eq_if_mod_four]
  simp only [hn, Nat.one_ne_zero, if_false]
  nth_rewrite 3 [← Nat.div_add_mod n 4]
  nth_rewrite 3 [show 4 = 2 * 2 by omega]
  rw [mul_assoc, add_comm, Nat.add_mul_div_left _ _ zero_lt_two, pow_add, pow_mul,
    neg_one_sq, one_pow, mul_one]
  have help : ∀ m : ℕ, m < 4 → m % 2 = 1 → ite (m = 1) (1 : ℤ) (-1) = (-1) ^ (m / 2) := by decide
  exact help _ (Nat.mod_lt n (by omega)) <| (Nat.mod_mod_of_dvd n (by omega : 2 ∣ 4)).trans hn

/-- If `n % 4 = 1`, then `χ₄ n = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant9fe802cc9fadc76070a1d6cd30169f8046584c701e411e1ca723e1024a235bef.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d420847c09e254fd07ab24c4d19183bc4e48b27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
