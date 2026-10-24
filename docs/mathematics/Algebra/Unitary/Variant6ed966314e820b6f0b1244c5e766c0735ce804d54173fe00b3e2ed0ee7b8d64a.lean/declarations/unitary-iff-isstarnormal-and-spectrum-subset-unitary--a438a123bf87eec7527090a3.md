# unitary_iff_isStarNormal_and_spectrum_subset_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60d2c10a0af9111abfb09a8e84e46df90b31dfe2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8334230f-6cf3-aba3-6e93-7b0f3c7e770b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35640f78-9505-4a0b-ad78-69fe7af3df9a",
  "kind": "lemma",
  "lexical_name": "unitary_iff_isStarNormal_and_spectrum_subset_unitary",
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
  "slug": "unitary-iff-isstarnormal-and-spectrum-subset-unitary--a438a123bf87eec7527090a3",
  "source": {
    "blob": "60d2c10a0af9111abfb09a8e84e46df90b31dfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a438a123bf87eec7527090a3e25a97e5ebea196a86a8887dec800cf5e6a88c9b",
  "verification": {
    "reference": "docs/verification/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35640f78-9505-4a0b-ad78-69fe7af3df9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unitary_iff_isStarNormal_and_spectrum_subset_unitary {u : A} :
    u ∈ unitary A ↔ IsStarNormal u ∧ spectrum ℂ u ⊆ unitary ℂ := by
  rw [← and_iff_right_of_imp isStarNormal_of_mem_unitary]
  refine and_congr_right fun hu ↦ ?_
  nth_rw 1 [← cfc_id ℂ u]
  rw [cfc_unitary_iff id u, Set.subset_def]
  simp only [id_eq, RCLike.star_def, SetLike.mem_coe, unitary.mem_iff_star_mul_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unitary/Variant6ed966314e820b6f0b1244c5e766c0735ce804d54173fe00b3e2ed0ee7b8d64a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60d2c10a0af9111abfb09a8e84e46df90b31dfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
