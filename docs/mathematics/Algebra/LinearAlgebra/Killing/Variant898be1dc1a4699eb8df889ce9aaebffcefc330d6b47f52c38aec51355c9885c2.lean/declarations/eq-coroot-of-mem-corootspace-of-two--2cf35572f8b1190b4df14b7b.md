# eq_coroot_of_mem_corootSpace_of_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6e6efd2-6f91-b240-547e-3a5650335d8f",
  "kind": "lemma",
  "lexical_name": "eq_coroot_of_mem_corootSpace_of_two",
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
  "slug": "eq-coroot-of-mem-corootspace-of-two--2cf35572f8b1190b4df14b7b",
  "source": {
    "blob": "b84f2960e5228ecba9f15c41b2b2f21dbb934aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 484,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf35572f8b1190b4df14b7b8536963530fd628cc41d66f7c848d844da327884",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6e6efd2-6f91-b240-547e-3a5650335d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_coroot_of_mem_corootSpace_of_two (α : Weight K H L) {x : H}
    (h_mem : x ∈ corootSpace α) (h_two : α x = 2) :
    x = coroot α := by
  by_cases h₀ : α.IsZero; · simp [h₀.eq] at h_two
  replace h_mem : x ∈ K ∙ coroot α := by rwa [← coe_corootSpace_eq_span_singleton]
  obtain ⟨t, rfl⟩ := Submodule.mem_span_singleton.mp h_mem
  suffices t = 1 by simp [this]
  simpa [root_apply_coroot h₀] using h_two

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant898be1dc1a4699eb8df889ce9aaebffcefc330d6b47f52c38aec51355c9885c2.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84f2960e5228ecba9f15c41b2b2f21dbb934aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
