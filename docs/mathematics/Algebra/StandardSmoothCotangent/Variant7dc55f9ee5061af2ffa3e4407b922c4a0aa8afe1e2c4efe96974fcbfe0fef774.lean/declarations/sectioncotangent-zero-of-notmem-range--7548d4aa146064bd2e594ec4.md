# sectionCotangent_zero_of_notMem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f9f30f25e73ad3865fa8950332f4424d469497b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e37bbfc-78f5-bc76-6473-b6cecda9de94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4aa717a-3f57-aa8d-d4d1-8243c9cf9264",
  "kind": "lemma",
  "lexical_name": "sectionCotangent_zero_of_notMem_range",
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
  "slug": "sectioncotangent-zero-of-notmem-range--7548d4aa146064bd2e594ec4",
  "source": {
    "blob": "0f9f30f25e73ad3865fa8950332f4424d469497b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 179,
    "path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7548d4aa146064bd2e594ec49f37ec28bb4c8e73f41b3a3df288bc67b2c947df",
  "verification": {
    "reference": "docs/verification/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4aa717a-3f57-aa8d-d4d1-8243c9cf9264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sectionCotangent_zero_of_notMem_range (i : P.vars) (hi : i ∉ Set.range P.map) :
    (sectionCotangent P) (P.cotangentSpaceBasis i) = 0 := by
  classical
  contrapose hi
  rw [sectionCotangent_eq_iff] at hi
  simp only [Basis.repr_self, map_zero, Pi.zero_apply, not_forall,
    Finsupp.single_apply, ite_eq_right_iff, Classical.not_imp, exists_and_right] at hi
  obtain ⟨j, hij, _⟩ := hi
  simp only [Set.mem_range, not_exists, not_forall, not_not]
  use j
  exact hij.symm

@[deprecated (since := "2025-05-23")]
alias sectionCotangent_zero_of_not_mem_range := sectionCotangent_zero_of_notMem_range

/--
Given a submersive presentation of `S` as `R`-algebra, any indexing type `κ` complementary to
the `P.rels` in `P.vars` indexes a basis of `Ω[S⁄R]`.
See `SubmersivePresentation.basisKaehler` for the special case `κ = (Set.range P.map)ᶜ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9f30f25e73ad3865fa8950332f4424d469497b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
