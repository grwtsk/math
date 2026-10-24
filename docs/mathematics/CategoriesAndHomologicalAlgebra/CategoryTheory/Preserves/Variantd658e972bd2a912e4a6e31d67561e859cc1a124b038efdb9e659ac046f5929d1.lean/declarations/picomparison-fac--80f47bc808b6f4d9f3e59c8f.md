# piComparison_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3078f6d39149e41f605c65596f63474bae8555cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b43129d-7a03-fe5f-b9ba-76c0222cc3c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f767c89-20f8-eadb-df07-c3c9ac1ec4c1",
  "kind": "theorem",
  "lexical_name": "piComparison_fac",
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
  "slug": "picomparison-fac--80f47bc808b6f4d9f3e59c8f",
  "source": {
    "blob": "3078f6d39149e41f605c65596f63474bae8555cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f47bc808b6f4d9f3e59c8ffbdfab84bbca5e0ac8c244cb9b4486a99f23b785",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f767c89-20f8-eadb-df07-c3c9ac1ec4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piComparison_fac :
    have : HasCoproduct X := ⟨⟨c, hc⟩⟩
    piComparison F (fun x ↦ op (X x)) = F.map (opCoproductIsoProduct' hc (productIsProduct _)).inv ≫
    Equalizer.Presieve.Arrows.forkMap F X c.inj := by
  have : HasCoproduct X := ⟨⟨c, hc⟩⟩
  dsimp only [Equalizer.Presieve.Arrows.forkMap]
  have h : Pi.lift (fun i ↦ F.map (c.inj i).op) =
      F.map (Pi.lift (fun i ↦ (c.inj i).op)) ≫ piComparison F _ := by simp
  rw [h, ← Category.assoc, ← Functor.map_comp]
  have hh : Pi.lift (fun i ↦ (c.inj i).op) = (productIsProduct (op <| X ·)).lift c.op := by
    simp [Pi.lift, productIsProduct]
  rw [hh, ← desc_op_comp_opCoproductIsoProduct'_hom hc]
  simp

variable [(ofArrows X c.inj).HasPairwisePullbacks]

set_option backward.defeqAttrib.useBackward true in
include hc in
/--
If `F` preserves a particular product, then it `IsSheafFor` the corresponding presieve of arrows.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3078f6d39149e41f605c65596f63474bae8555cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
