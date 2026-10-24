# eq_two_pow_mul_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02b1db279a03396574dd73533ad8ead33703e34e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:112f665c-66b6-b708-cbf1-5edca15ae656",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e304b8c0-2a18-c69f-0c7d-fc4006ecbce7",
  "kind": "theorem",
  "lexical_name": "eq_two_pow_mul_odd",
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
  "slug": "eq-two-pow-mul-odd--59f5d91790f577aa954dd5f8",
  "source": {
    "blob": "02b1db279a03396574dd73533ad8ead33703e34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59f5d91790f577aa954dd5f80c951fc7f20d72c54af107231ce412f3cec1109f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e304b8c0-2a18-c69f-0c7d-fc4006ecbce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_two_pow_mul_odd {n : ℕ} (hpos : 0 < n) : ∃ k m : ℕ, n = 2 ^ k * m ∧ ¬Even m := by
  have h := multiplicity.finite_nat_iff.2 ⟨Nat.prime_two.ne_one, hpos⟩
  cases' multiplicity.pow_multiplicity_dvd h with m hm
  use (multiplicity 2 n).get h, m
  refine' ⟨hm, _⟩
  rw [even_iff_two_dvd]
  have hg := multiplicity.is_greatest' h (Nat.lt_succ_self _)
  contrapose! hg
  rcases hg with ⟨k, rfl⟩
  apply Dvd.intro k
  rw [pow_succ', mul_assoc, ← hm]
#align theorems_100.nat.eq_two_pow_mul_odd Theorems100.Nat.eq_two_pow_mul_odd

/-- **Perfect Number Theorem**: Euler's theorem that even perfect numbers can be factored as a
  power of two times a Mersenne prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b1db279a03396574dd73533ad8ead33703e34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
