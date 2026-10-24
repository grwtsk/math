# selbergTerms_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06ce9b70-9836-1f73-3c4b-750a00e75cf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d931b1e9-61d0-04e9-ebaf-e5f98bc6ee8b",
  "kind": "theorem",
  "lexical_name": "selbergTerms_pos",
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
  "slug": "selbergterms-pos--34e512d9cac0c90cf3e90453",
  "source": {
    "blob": "29f3dc9e9e53e9e429df6c862714cf8327a2b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 288,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34e512d9cac0c90cf3e90453ed8490605eab1a3e9544678680a270eef9ef8bed",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d931b1e9-61d0-04e9-ebaf-e5f98bc6ee8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selbergTerms_pos {l : ℕ} (hl : l ∣ s.prodPrimes) : 0 < s.selbergTerms l := by
  rw [selbergTerms_apply]
  refine mul_pos (nu_pos_of_dvd_prodPrimes hl) <| prod_pos fun p hp ↦ ?_
  rw [inv_pos]
  have hp_prime : p.Prime := prime_of_mem_primeFactors hp
  have hp_dvd : p ∣ s.prodPrimes := (Nat.dvd_of_mem_primeFactors hp).trans hl
  linarith only [s.nu_lt_one_of_prime p hp_prime hp_dvd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3dc9e9e53e9e429df6c862714cf8327a2b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
