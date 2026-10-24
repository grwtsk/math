# eq_app_of_locally_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35f474743c9a6c933f4c62530be23cdc92a30288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f47eeb3d-1a1c-da75-bba5-18eb68b808a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08e7f1ec-6d6e-7a03-3030-06f0249a92a1",
  "kind": "theorem",
  "lexical_name": "eq_app_of_locally_eq",
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
  "slug": "eq-app-of-locally-eq--f6be2d4ea50fd19060750677",
  "source": {
    "blob": "35f474743c9a6c933f4c62530be23cdc92a30288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 252,
    "path": "GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6be2d4ea50fd19060750677819b0ed972069a58b3e424ceb9cfd09f21acfacb",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e7f1ec-6d6e-7a03-3030-06f0249a92a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_app_of_locally_eq {V : Opens X} {G : Sheaf C X} {f : F ⟶ G}
    {s : ToType (F.1.obj (op (iSup U)))} {t : ToType (G.1.obj (op V))}
    {sf : ∀ i : ι, ToType (F.1.obj (op (U i)))} (h : IsGluing F.1 U sf s) (hV : ∀ i : ι, U i ≤ V)
    (ht : ∀ i : ι, f.1.app (op (U i)) (sf i) = G.1.map (homOfLE (hV i)).op t) :
    f.hom.app (op (iSup U)) s = G.obj.map (homOfLE (by aesop_cat)).op t := by
  refine eq_of_locally_eq G U _ _ (fun _ ↦ ?_)
  rw [← NatTrans.naturality_apply, h, ht, ← ConcreteCategory.comp_apply, ← Functor.map_comp]
  rfl

end

end Sheaf

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35f474743c9a6c933f4c62530be23cdc92a30288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
