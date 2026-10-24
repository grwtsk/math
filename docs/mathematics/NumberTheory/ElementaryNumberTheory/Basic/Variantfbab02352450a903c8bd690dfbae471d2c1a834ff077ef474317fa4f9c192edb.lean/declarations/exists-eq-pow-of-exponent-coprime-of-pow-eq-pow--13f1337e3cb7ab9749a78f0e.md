# exists_eq_pow_of_exponent_coprime_of_pow_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33ebfe9b25f9b23edaea0893f627d77efb54f86a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f7921df-bcdb-d574-12a9-5c1abfd58717",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18c41f0b-bf12-e758-1a06-73168f7d8b51",
  "kind": "theorem",
  "lexical_name": "exists_eq_pow_of_exponent_coprime_of_pow_eq_pow",
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
  "slug": "exists-eq-pow-of-exponent-coprime-of-pow-eq-pow--13f1337e3cb7ab9749a78f0e",
  "source": {
    "blob": "33ebfe9b25f9b23edaea0893f627d77efb54f86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 553,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f1337e3cb7ab9749a78f0e7d79331c7045f9aa5fc0779a0c399e86a86d9c58",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c41f0b-bf12-e758-1a06-73168f7d8b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_pow_of_exponent_coprime_of_pow_eq_pow
    {a b m n : ℕ} (hmn : m.Coprime n) (h : a ^ m = b ^ n) :
    ∃ c, a = c ^ n ∧ b = c ^ m := by
  by_cases ha0 : a = 0
  · symm at h
    by_cases hm0 : m = 0
    · simp_all
    · use 0
      simp_all
  by_cases hn0 : n = 0
  · use b
    simp_all
  let factors := a.factorization.mapRange (· / n) (Nat.zero_div n)
  set c := factors.prod (· ^ ·) with hc
  use c
  suffices ha : a = c ^ n by
    refine ⟨ha, ?_⟩
    apply Nat.pow_left_injective hn0
    simp [← h, ha, Nat.pow_right_comm]
  apply eq_of_factorization_eq ha0 (by simp [c, factors])
  intro p
  have foo (p) (hp : p ∈ factors.support) : Prime p :=
    prime_of_mem_primeFactors (Finsupp.support_mapRange hp)
  rw [factorization_pow, hc, prod_pow_factorization_eq_self foo]
  suffices n ∣ a.factorization p by
    simp [factors, Nat.mul_div_cancel' this]
  refine hmn.symm.dvd_of_dvd_mul_left ⟨b.factorization p, ?_⟩
  simpa using congr(factorization $h p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ebfe9b25f9b23edaea0893f627d77efb54f86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
