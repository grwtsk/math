# Presieve.HasPairwisePullbacks.map_of_preservesPairwisePullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1357750-01f8-cb1b-e757-f4cc5e1bbfd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eef69dc9-b871-bead-5151-838747bc0829",
  "kind": "lemma",
  "lexical_name": "Presieve.HasPairwisePullbacks.map_of_preservesPairwisePullbacks",
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
  "slug": "presieve-haspairwisepullbacks-map-of-preservespairwisepullbacks--ba336f387e3a2619e13e73c8",
  "source": {
    "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba336f387e3a2619e13e73c874dc8bbc30a03eb9ebcf77b230b6530b6dcf6c2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef69dc9-b871-bead-5151-838747bc0829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Presieve.HasPairwisePullbacks.map_of_preservesPairwisePullbacks {X : C} (R : Presieve X)
    [F.PreservesPairwisePullbacks R] [R.HasPairwisePullbacks] :
    (R.map F).HasPairwisePullbacks where
  has_pullbacks {Y Z} := fun {f} ⟨hf⟩ g ⟨hg⟩ ↦ by
    have := Presieve.HasPairwisePullbacks.has_pullbacks hf hg
    have := F.preservesLimit_cospan_of_mem_presieve _ hf hg
    exact hasPullback_of_preservesPullback F _ _

namespace Precoverage

/-- Pullbacks are preserved by a functor `F : C ⥤ D` for the precoverage `J` on `C` if
`F` preserves all pairwise pullbacks of presieves in `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006d42d664f1b2fda3af3bc1ea764f08518641d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
