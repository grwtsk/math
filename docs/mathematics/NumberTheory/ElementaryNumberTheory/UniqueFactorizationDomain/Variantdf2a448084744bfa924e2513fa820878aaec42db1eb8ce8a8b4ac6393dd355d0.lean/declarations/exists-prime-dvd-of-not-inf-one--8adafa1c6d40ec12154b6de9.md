# exists_prime_dvd_of_not_inf_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1628,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f769fbe-f134-4213-e9e3-213b7da1b7b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33c19dcd-7610-75b4-a0be-df1dfcf4ae6e",
  "kind": "theorem",
  "lexical_name": "exists_prime_dvd_of_not_inf_one",
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
  "slug": "exists-prime-dvd-of-not-inf-one--8adafa1c6d40ec12154b6de9",
  "source": {
    "blob": "35c291d382c6d9d4e59536769a537c8fce1dfb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1649,
    "line": 1628,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8adafa1c6d40ec12154b6de92d9ef0b232fea2f2f84deea0bef7a98369d5e017",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33c19dcd-7610-75b4-a0be-df1dfcf4ae6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1628–1649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_dvd_of_not_inf_one {a b : α} (ha : a ≠ 0) (hb : b ≠ 0)
    (h : Associates.mk a ⊓ Associates.mk b ≠ 1) : ∃ p : α, Prime p ∧ p ∣ a ∧ p ∣ b := by
  have hz : factors (Associates.mk a) ⊓ factors (Associates.mk b) ≠ 0 := by
    contrapose! h with hf
    change (factors (Associates.mk a) ⊓ factors (Associates.mk b)).prod = 1
    rw [hf]
    exact Multiset.prod_zero
  rw [factors_mk a ha, factors_mk b hb, ← WithTop.coe_inf] at hz
  obtain ⟨⟨p0, p0_irr⟩, p0_mem⟩ := Multiset.exists_mem_of_ne_zero ((mt WithTop.coe_eq_coe.mpr) hz)
  rw [Multiset.inf_eq_inter] at p0_mem
  obtain ⟨p, rfl⟩ : ∃ p, Associates.mk p = p0 := Quot.exists_rep p0
  refine' ⟨p, _, _, _⟩
  · rw [← irreducible_iff_prime, ← irreducible_mk]
    exact p0_irr
  · apply dvd_of_mk_le_mk
    apply dvd_of_mem_factors' (Multiset.mem_inter.mp p0_mem).left
    apply ha
  · apply dvd_of_mk_le_mk
    apply dvd_of_mem_factors' (Multiset.mem_inter.mp p0_mem).right
    apply hb
#align associates.exists_prime_dvd_of_not_inf_one Associates.exists_prime_dvd_of_not_inf_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Variantdf2a448084744bfa924e2513fa820878aaec42db1eb8ce8a8b4ac6393dd355d0.lean#L1628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c291d382c6d9d4e59536769a537c8fce1dfb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
