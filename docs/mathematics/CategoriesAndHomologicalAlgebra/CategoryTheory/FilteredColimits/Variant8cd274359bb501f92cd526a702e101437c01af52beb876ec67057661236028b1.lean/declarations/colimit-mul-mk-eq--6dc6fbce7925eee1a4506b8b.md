# colimit_mul_mk_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4978ec75be616852d21a034e39f380e14fd665b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd274359bb501f92cd526a702e101437c01af52beb876ec67057661236028b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36631518-49b0-0de0-2f22-f3c563dd2cf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4eb0655-78a9-14a3-ce24-ebdfa32b1b00",
  "kind": "lemma",
  "lexical_name": "colimit_mul_mk_eq'",
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
  "slug": "colimit-mul-mk-eq--6dc6fbce7925eee1a4506b8b",
  "source": {
    "blob": "a4978ec75be616852d21a034e39f380e14fd665b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8cd274359bb501f92cd526a702e101437c01af52beb876ec67057661236028b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dc6fbce7925eee1a4506b8b740a1293d7aecc8d9e9a65c7189fc770f0d35079",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8cd274359bb501f92cd526a702e101437c01af52beb876ec67057661236028b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4eb0655-78a9-14a3-ce24-ebdfa32b1b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colimit_mul_mk_eq' {j : J} (x y : F.obj j) :
    G.mk.{v, u} F ⟨j, x⟩ * G.mk.{v, u} F ⟨j, y⟩ = G.mk.{v, u} F ⟨j, x * y⟩ := by
  #adaptation_note /-- Prior to leanprover/lean4#12564, this was just
  `simpa using colimit_mul_mk_eq F ⟨j, x⟩ ⟨j, y⟩ j (𝟙 _) (𝟙 _)` -/
  have := colimit_mul_mk_eq F ⟨j, x⟩ ⟨j, y⟩ j (𝟙 _) (𝟙 _)
  simpa using this

/-- The "unlifted" version of taking inverses in the colimit. -/
@[to_additive /-- The "unlifted" version of negation in the colimit. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8cd274359bb501f92cd526a702e101437c01af52beb876ec67057661236028b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant8cd274359bb501f92cd526a702e101437c01af52beb876ec67057661236028b1.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4978ec75be616852d21a034e39f380e14fd665b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
