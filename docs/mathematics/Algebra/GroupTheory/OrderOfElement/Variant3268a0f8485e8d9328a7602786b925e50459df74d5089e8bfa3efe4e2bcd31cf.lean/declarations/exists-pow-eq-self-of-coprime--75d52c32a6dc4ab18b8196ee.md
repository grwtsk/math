# exists_pow_eq_self_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b866331e1dbf913189bcd6d1e2d0caeb33216378",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae895f57-f5bd-729d-8e53-375a4155ac20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aead211f-29d9-4bef-77c2-4bbadd8fdefe",
  "kind": "theorem",
  "lexical_name": "exists_pow_eq_self_of_coprime",
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
  "slug": "exists-pow-eq-self-of-coprime--75d52c32a6dc4ab18b8196ee",
  "source": {
    "blob": "b866331e1dbf913189bcd6d1e2d0caeb33216378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75d52c32a6dc4ab18b8196ee89e1ae5d8baf76722711acfe122792468e48ef14",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aead211f-29d9-4bef-77c2-4bbadd8fdefe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_eq_self_of_coprime (h : n.coprime (orderOf x)) : ∃ m : ℕ, (x ^ n) ^ m = x := by
  by_cases h0 : orderOf x = 0
  · rw [h0, coprime_zero_right] at h
    exact ⟨1, by rw [h, pow_one, pow_one]⟩
  by_cases h1 : orderOf x = 1
  · exact ⟨0, by rw [orderOf_eq_one_iff.mp h1, one_pow, one_pow]⟩
  obtain ⟨m, h⟩ := exists_mul_emod_eq_one_of_coprime h (one_lt_iff_ne_zero_and_ne_one.mpr ⟨h0, h1⟩)
  exact ⟨m, by rw [← pow_mul, pow_eq_mod_orderOf, h, pow_one]⟩
#align exists_pow_eq_self_of_coprime exists_pow_eq_self_of_coprime
#align exists_nsmul_eq_self_of_coprime exists_nsmul_eq_self_of_coprime

/-- If `x^n = 1`, but `x^(n/p) ≠ 1` for all prime factors `p` of `n`,
then `x` has order `n` in `G`. -/
@[to_additive addOrderOf_eq_of_nsmul_and_div_prime_nsmul "If `n * x = 0`, but `n/p * x ≠ 0` for
all prime factors `p` of `n`, then `x` has order `n` in `G`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b866331e1dbf913189bcd6d1e2d0caeb33216378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
