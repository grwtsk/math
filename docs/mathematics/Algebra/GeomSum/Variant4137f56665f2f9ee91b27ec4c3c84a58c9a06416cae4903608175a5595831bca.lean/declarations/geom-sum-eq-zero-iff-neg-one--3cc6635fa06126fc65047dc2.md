# geom_sum_eq_zero_iff_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:114ffd0c-c4ff-f8f8-00de-d3e7b29d1cef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0b700de-0518-8802-e27e-d31b191da7dc",
  "kind": "theorem",
  "lexical_name": "geom_sum_eq_zero_iff_neg_one",
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
  "slug": "geom-sum-eq-zero-iff-neg-one--3cc6635fa06126fc65047dc2",
  "source": {
    "blob": "fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 553,
    "path": "GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cc6635fa06126fc65047dc2f12481c56553006f091fa18503f681b3dfd9a540",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b700de-0518-8802-e27e-d31b191da7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_sum_eq_zero_iff_neg_one [LinearOrderedRing α] (hn : n ≠ 0) :
    ∑ i in range n, x ^ i = 0 ↔ x = -1 ∧ Even n := by
  refine' ⟨fun h => _, @fun ⟨h, hn⟩ => by simp only [h, hn, neg_one_geom_sum, if_true]⟩
  contrapose! h
  have hx := eq_or_ne x (-1)
  cases' hx with hx hx
  · rw [hx, neg_one_geom_sum]
    simp only [h hx, ne_eq, ite_eq_left_iff, one_ne_zero, not_forall, exists_prop, and_true]
  · exact geom_sum_ne_zero hx hn
#align geom_sum_eq_zero_iff_neg_one geom_sum_eq_zero_iff_neg_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant4137f56665f2f9ee91b27ec4c3c84a58c9a06416cae4903608175a5595831bca.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe41c03ad05d99d5b7fdd3fe49f44bd1e630dd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
