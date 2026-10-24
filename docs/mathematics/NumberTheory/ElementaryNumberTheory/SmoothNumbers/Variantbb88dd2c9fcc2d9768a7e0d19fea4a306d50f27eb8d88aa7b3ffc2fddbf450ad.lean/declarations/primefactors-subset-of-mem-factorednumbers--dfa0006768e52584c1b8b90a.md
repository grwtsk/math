# primeFactors_subset_of_mem_factoredNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3710c099-3f15-a7eb-8555-ca4dee4cf2f2",
  "kind": "lemma",
  "lexical_name": "primeFactors_subset_of_mem_factoredNumbers",
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
  "slug": "primefactors-subset-of-mem-factorednumbers--dfa0006768e52584c1b8b90a",
  "source": {
    "blob": "751fa97f4ef7f27f3c4b9addb4c168314569c3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa0006768e52584c1b8b90a638b25b6b75637c6c546ea9343ab2d391851f7b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3710c099-3f15-a7eb-8555-ca4dee4cf2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primeFactors_subset_of_mem_factoredNumbers {s : Finset ℕ} {m : ℕ}
    (hm : m ∈ factoredNumbers s) :
    m.primeFactors ⊆ s := by
  rw [mem_factoredNumbers] at hm
  exact fun n hn ↦ hm.2 n (mem_primeFactors_iff_mem_primeFactorsList.mp hn)

/-- If `m ≠ 0` and the `Finset` of prime factors of `m` is contained in `s`, then `m`
is `s`-factored. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751fa97f4ef7f27f3c4b9addb4c168314569c3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
