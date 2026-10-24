# isThin_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7c1688ea677da7ad0a00f60f11f1f0d4583153a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0df60e95-fd8c-1c58-e1b9-8a613ad6dee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:516c1a28-1579-14d2-848b-fdf3392f1078",
  "kind": "theorem",
  "lexical_name": "isThin_iff",
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
  "slug": "isthin-iff--acc804aef2dbb130d8d7a3c9",
  "source": {
    "blob": "a7c1688ea677da7ad0a00f60f11f1f0d4583153a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc804aef2dbb130d8d7a3c97c4b22cb16a5d2c2296b6130fbae020b5f3f50b6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:516c1a28-1579-14d2-848b-fdf3392f1078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isThin_iff : Quiver.IsThin C ↔ ∀ c : C, Subsingleton (c ⟶ c) := by
  refine ⟨fun h c => h c c, fun h c d => Subsingleton.intro fun f g => ?_⟩
  have := h d
  calc
    f = f ≫ inv g ≫ g := by simp only [inv_eq_inv, IsIso.inv_hom_id, Category.comp_id]
    _ = f ≫ inv f ≫ g := by congr 1
                            simp only [inv_eq_inv, IsIso.inv_hom_id, eq_iff_true_of_subsingleton]
    _ = g := by simp only [inv_eq_inv, IsIso.hom_inv_id_assoc]

end Thin

section Disconnected

/-- A subgroupoid is totally disconnected if it only has loops. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7c1688ea677da7ad0a00f60f11f1f0d4583153a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
