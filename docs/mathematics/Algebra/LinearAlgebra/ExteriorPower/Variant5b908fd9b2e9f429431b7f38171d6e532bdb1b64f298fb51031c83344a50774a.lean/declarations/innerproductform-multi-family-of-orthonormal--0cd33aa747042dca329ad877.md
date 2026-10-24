# innerProductForm_ιMulti_family_of_orthonormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b8acfca3889734d65056e9a88f0e6fe8c461f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c88b5c6-e5a0-9661-053f-b8d214869d77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f631d0cc-f0d1-d992-22f8-fd0b9e2fbde7",
  "kind": "lemma",
  "lexical_name": "innerProductForm_ιMulti_family_of_orthonormal",
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
  "slug": "innerproductform-multi-family-of-orthonormal--0cd33aa747042dca329ad877",
  "source": {
    "blob": "d7b8acfca3889734d65056e9a88f0e6fe8c461f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd33aa747042dca329ad87796e6a73c0f3d6df6ccf8df2430ee4cb30eee764a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f631d0cc-f0d1-d992-22f8-fd0b9e2fbde7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma innerProductForm_ιMulti_family_of_orthonormal {ι : Type*} [LinearOrder ι] {v : ι → E}
    (hv : Orthonormal ℝ v) (s t : Set.powersetCard ι n) :
    innerProductForm (ιMulti_family ℝ n v s) (ιMulti_family ℝ n v t) = if s = t then 1 else 0 := by
  simp only [ιMulti_family]
  split_ifs with h
  · subst h
    simp [gram_eq_one_iff_orthonormal.mpr (hv.comp _ (RelEmbedding.injective _))]
  · rw [innerProductForm_ιMulti_ιMulti]
    obtain ⟨x, hxt, hxs⟩ := (Set.powersetCard.exists_mem_notMem_iff_ne t s).mp (.symm h)
    simp only [Set.mem_range, not_exists,
      ← Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem] at hxs hxt
    obtain ⟨i, rfl⟩ := hxt
    exact det_eq_zero_of_row_eq_zero i (fun j ↦ hv.inner_eq_zero (hxs j))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b8acfca3889734d65056e9a88f0e6fe8c461f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
