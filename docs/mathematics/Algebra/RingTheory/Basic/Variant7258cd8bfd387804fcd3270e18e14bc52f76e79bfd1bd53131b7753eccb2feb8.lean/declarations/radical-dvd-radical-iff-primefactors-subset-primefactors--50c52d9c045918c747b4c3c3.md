# radical_dvd_radical_iff_primeFactors_subset_primeFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9a40d6be7d894fbff62b09327a438ef68d3972a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfbb1917-51b7-a458-f06f-54e5a2242f2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e2effeb-cfa3-9942-3edb-cea14f76fe38",
  "kind": "lemma",
  "lexical_name": "radical_dvd_radical_iff_primeFactors_subset_primeFactors",
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
  "slug": "radical-dvd-radical-iff-primefactors-subset-primefactors--50c52d9c045918c747b4c3c3",
  "source": {
    "blob": "e9a40d6be7d894fbff62b09327a438ef68d3972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c52d9c045918c747b4c3c3cd4a0ac189883b4b1f3562d679ac4070c4534e8e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e2effeb-cfa3-9942-3edb-cea14f76fe38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma radical_dvd_radical_iff_primeFactors_subset_primeFactors :
    radical a ∣ radical b ↔ primeFactors a ⊆ primeFactors b := by
  classical
  rw [radical_dvd_radical_iff_normalizedFactors_subset_normalizedFactors, primeFactors,
    primeFactors, Multiset.toFinset_subset]

/-- If `a` divides `b`, then the radical of `a` divides the radical of `b`. The theorem requires
that `b ≠ 0`, since `radical 0 = 1` but `a ∣ 0` holds for every `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9a40d6be7d894fbff62b09327a438ef68d3972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
