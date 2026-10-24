# IsCarmichael.three_le_card_primeFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:817fb2fe-9259-0617-c206-23d968d11873",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30834cc4-8e03-3bed-9e7a-644817d5f480",
  "kind": "theorem",
  "lexical_name": "IsCarmichael.three_le_card_primeFactors",
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
  "slug": "iscarmichael-three-le-card-primefactors--1b6505661b4d78bc49784c27",
  "source": {
    "blob": "8ae7760b938a24cdab0a3825a1de25842a74d86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b6505661b4d78bc49784c277922057de0d1afc34e8194e41c6582768fa64f8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30834cc4-8e03-3bed-9e7a-644817d5f480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCarmichael.three_le_card_primeFactors (h : IsCarmichael n) :
    3 ≤ n.primeFactors.card := by
  obtain ⟨_, _, hs, h⟩ := isCarmichael_iff_korselt.mp h
  have h0 : n.primeFactors.card ≠ 0 := by grind [primeFactors_eq_empty]
  have h1 : n.primeFactors.card ≠ 1 := by
    grind [squarefree_and_prime_pow_iff_prime, isPrimePow_iff_card_primeFactors_eq_one]
  by_contra h3
  have h2 : n.primeFactors.card = 2 := by grind
  obtain ⟨p, q, pq, hp, hq, hn⟩ := (squarefree_and_primeFactors_card_eq_two_iff n).mp ⟨hs, h2⟩
  contrapose! pq
  have eq : p - 1 + (q - 1) * p = p * q - 1 := by zify; grind
  rw [← tsub_le_tsub_iff_right hp.one_le]
  refine le_of_dvd (tsub_pos_of_lt hp.one_lt) ((Nat.dvd_add_left ⟨p, rfl⟩).mp ?_)
  rw [eq, hn]
  exact h q hq (Dvd.intro_left p hn)

/-- **Korselt's criterion** stated in a form suitable for concrete calculations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variantaf5f0227bf4b3ca763d4198f8416699752760e64040c6d028fd3f14a78a34129.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae7760b938a24cdab0a3825a1de25842a74d86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
