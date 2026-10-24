# quasiIso_truncGEMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc11bec38b692a6f0097efb71290c7a386e1a86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99a03cc23c38cba7e82b123762936a2423f0cd0f34b71127093a90d5bbdb0dc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44f98f8d-ad7a-5587-af31-150dae97a67c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ddc1923-09d9-84ad-1edb-1750013ecedb",
  "kind": "lemma",
  "lexical_name": "quasiIso_truncGEMap_iff",
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
  "slug": "quasiiso-truncgemap-iff--3b445e518eb67302f5fa5181",
  "source": {
    "blob": "bc11bec38b692a6f0097efb71290c7a386e1a86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variant99a03cc23c38cba7e82b123762936a2423f0cd0f34b71127093a90d5bbdb0dc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b445e518eb67302f5fa5181d6b7fad4a3035c09799a4bcbd31ac92cd672c819",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variant99a03cc23c38cba7e82b123762936a2423f0cd0f34b71127093a90d5bbdb0dc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ddc1923-09d9-84ad-1edb-1750013ecedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_truncGEMap_iff :
    QuasiIso (truncGEMap φ e) ↔ ∀ (i : ι) (i' : ι') (_ : e.f i = i'), QuasiIsoAt φ i' := by
  have : ∀ (i : ι) (i' : ι') (_ : e.f i = i'),
      QuasiIsoAt (truncGEMap φ e) i' ↔ QuasiIsoAt φ i' := by
    rintro i _ rfl
    rw [← quasiIsoAt_iff_comp_left (K.πTruncGE e), πTruncGE_naturality φ e,
      quasiIsoAt_iff_comp_right]
  rw [quasiIso_iff]
  constructor
  · intro h i i' hi
    simpa only [← this i i' hi] using h i'
  · intro h i'
    by_cases hi' : ∃ i, e.f i = i'
    · obtain ⟨i, hi⟩ := hi'
      simpa only [this i i' hi] using h i i' hi
    · rw [quasiIsoAt_iff_exactAt]
      all_goals exact exactAt_of_isSupported _ e i' (by simpa using hi')

end HomologicalComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variant99a03cc23c38cba7e82b123762936a2423f0cd0f34b71127093a90d5bbdb0dc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncGEHomology/Variant99a03cc23c38cba7e82b123762936a2423f0cd0f34b71127093a90d5bbdb0dc9.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc11bec38b692a6f0097efb71290c7a386e1a86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
