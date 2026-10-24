# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4e591ff-06f6-6830-efad-ac72521df370",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f236a0f0-0189-1f02-c9cc-4776a5507169",
  "kind": "lemma",
  "lexical_name": "comp_assoc",
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
  "slug": "comp-assoc--8f07e3ba0327fcb21b7cabab",
  "source": {
    "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f07e3ba0327fcb21b7cababa434649428d4d4c256d0ec71282a92507287e875",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f236a0f0-0189-1f02-c9cc-4776a5507169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_assoc {E : Type u₄} [Bicategory.{w₄, v₄} E]
    (F : StrictlyUnitaryLaxFunctor B C) (G : StrictlyUnitaryLaxFunctor C D)
    (H : StrictlyUnitaryLaxFunctor D E) :
    (F.comp G).comp H = F.comp (G.comp H) := by
  ext
  · simp
  all_goals
  · rw [heq_iff_eq]
    ext
    simp

end

end StrictlyUnitaryLaxFunctor

/-- A strictly unitary pseudofunctor (sometimes called a "normal homomorphism")
`F` between bicategories `B` and `C` is a pseudofunctor `F` from `B` to `C`
such that the structure isomorphism `map (𝟙 X) ≅ 𝟙 (F.obj X)` is in fact an
identity 2-isomorphism for every `X : B` (in particular, there is an equality
`F.map (𝟙 X) = 𝟙 (F.obj X)`). -/
@[kerodon 008R]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccf71c18312734a2b59a368bdb65fe402e24948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
