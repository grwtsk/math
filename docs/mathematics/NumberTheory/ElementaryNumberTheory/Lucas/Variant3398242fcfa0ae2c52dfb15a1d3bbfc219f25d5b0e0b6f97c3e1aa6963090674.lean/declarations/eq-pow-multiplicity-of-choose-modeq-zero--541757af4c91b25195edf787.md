# eq_pow_multiplicity_of_choose_modEq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31bd1f8d0f7f96128a4942ec32890ae7c8adf169",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a3b331e-ce67-51ef-d5e8-b8f1edc1f077",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1658835-d027-fa3e-dd1d-6512b0feb629",
  "kind": "theorem",
  "lexical_name": "eq_pow_multiplicity_of_choose_modEq_zero",
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
  "slug": "eq-pow-multiplicity-of-choose-modeq-zero--541757af4c91b25195edf787",
  "source": {
    "blob": "31bd1f8d0f7f96128a4942ec32890ae7c8adf169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:541757af4c91b25195edf787ba6ab7f30acc8801f6b4628f5d6f9494a4f84c40",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1658835-d027-fa3e-dd1d-6512b0feb629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_multiplicity_of_choose_modEq_zero (hn : 0 < n)
    (h : ∀ i ∈ Icc 1 (n - 1), n.choose i ≡ 0 [ZMOD p]) : n = p ^ multiplicity p n := by
  rename_i hp
  by_contra! hn₀
  obtain ⟨m, hm⟩ := pow_multiplicity_dvd p n
  specialize h (p ^ multiplicity p n) (by grind [le_of_dvd hn (pow_multiplicity_dvd p n)])
  nth_grw 1 [← mul_one (p ^ _), hm, choose_pow_mul_pow_mul_modEq_choose, choose_one_right] at h
  suffices multiplicity p n + 1 ≤ multiplicity p n by lia
  rw [← FiniteMultiplicity.pow_dvd_iff_le_multiplicity]
  · nth_rw 2 [hm]
    simpa [pow_add] using Nat.mul_dvd_mul_left _ (dvd_iff_mod_eq_zero.mpr (by exact_mod_cast h))
  · exact finiteMultiplicity_iff.mpr ⟨hp.out.ne_one, hn⟩

/-- For primes `p` and positive integer `n`, assume that for all `i ∈ Icc 1 (n - 1)`,
`choose n i` congruent to `0` module `p`, then `n = p ^ multiplicity p n`.
Also see `eq_pow_multiplicity_of_choose_modEq_zero` for the version with `ZMOD`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bd1f8d0f7f96128a4942ec32890ae7c8adf169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
