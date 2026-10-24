# exists_le_germ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cf610099b7edd0ef4b3d67f025f522bd12c45e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06c4ba13-da26-23fe-b7bb-736741dfc257",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a807363-84c1-aadb-4861-92f91f291c47",
  "kind": "theorem",
  "lexical_name": "exists_le_germ_eq",
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
  "slug": "exists-le-germ-eq--8932f5984e805f8841acd90c",
  "source": {
    "blob": "5cf610099b7edd0ef4b3d67f025f522bd12c45e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 445,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8932f5984e805f8841acd90caafbd63f7ae2205cb79bb1ea50a511e9673ecd8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a807363-84c1-aadb-4861-92f91f291c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_germ_eq (F : X.Presheaf C) {x : X} (t : ToType (stalk.{v, u} F x))
    {V : Opens X} (hV : x ∈ V) :
    ∃ U ≤ V, ∃ (m : x ∈ U) (s : ToType (F.obj (op U))), F.germ _ x m s = t := by
  rcases F.exists_germ_eq t with ⟨U, hxU, s, rfl⟩
  refine ⟨U ⊓ V, inf_le_right, by simp [*], F.map (homOfLE inf_le_left).op s, ?_⟩
  exact germ_res_apply ..

/-- If two sections have the same germ at `x`,
then their restrictions to some open neighborhood `W` of `x` are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf610099b7edd0ef4b3d67f025f522bd12c45e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
