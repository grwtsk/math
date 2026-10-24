# map_comp_heq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b69f0040493e18e2d6a29b068fd70ce64e0d9b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aed5053-ca7f-1677-6f0e-00ef177700e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19aa18ad-0e34-ee05-1018-1850d82af643",
  "kind": "theorem",
  "lexical_name": "map_comp_heq",
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
  "slug": "map-comp-heq--7871f97e8fcf2b45198d4af7",
  "source": {
    "blob": "9b69f0040493e18e2d6a29b068fd70ce64e0d9b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7871f97e8fcf2b45198d4af7ce52145ec6b5fe6bd40d247d326e412ad73793b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19aa18ad-0e34-ee05-1018-1850d82af643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_heq (hx : F.obj X = G.obj X) (hy : F.obj Y = G.obj Y) (hz : F.obj Z = G.obj Z)
    (hf : HEq (F.map f) (G.map f)) (hg : HEq (F.map g) (G.map g)) :
    HEq (F.map (f ≫ g)) (G.map (f ≫ g)) := by
  rw [F.map_comp, G.map_comp]
  congr
#align category_theory.functor.map_comp_heq CategoryTheory.Functor.map_comp_heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant01096987675fd2fed367caa737ef1fe9592f8e09bfaa1c4913c1f167357cb901.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b69f0040493e18e2d6a29b068fd70ce64e0d9b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
