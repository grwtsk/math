# Topology.IsOpenEmbedding.functor_obj_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ce8350efee4622f919accba1d1b2a8dd756ac9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5c4af7a0e44101d9bf82b93791b49bad7849792ec822b083a41bf3911603010.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee864736-ad65-b426-55ed-3ea9a2fe4001",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b98bb80-693c-9cae-ce40-03377fac0e17",
  "kind": "lemma",
  "lexical_name": "Topology.IsOpenEmbedding.functor_obj_iInf",
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
  "slug": "topology-isopenembedding-functor-obj-iinf--b888e026505b36f0b105005b",
  "source": {
    "blob": "8ce8350efee4622f919accba1d1b2a8dd756ac9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 380,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variantd5c4af7a0e44101d9bf82b93791b49bad7849792ec822b083a41bf3911603010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b888e026505b36f0b105005be9dbc333fcb6615b09fdcf98b301a872def2f093",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variantd5c4af7a0e44101d9bf82b93791b49bad7849792ec822b083a41bf3911603010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b98bb80-693c-9cae-ce40-03377fac0e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsOpenEmbedding.functor_obj_iInf {X Y : TopCat.{u}} (f : X ⟶ Y)
    (hf : Topology.IsOpenEmbedding f) {ι : Type*} [Nonempty ι] [Finite ι]
    (g : ι → TopologicalSpace.Opens X) :
    hf.functor.obj (⨅ i, g i) = ⨅ i, hf.functor.obj (g i) := by
  ext : 1
  simp only [IsOpenMap.coe_functor_obj, TopologicalSpace.Opens.coe_iInf]
  rw [Set.InjOn.image_iInter_eq]
  exact hf.injective.injOn

namespace Topology.IsInducing

/-- Given an inducing map `X ⟶ Y` and some `U : Opens X`, this is the union of all open sets
whose preimage is `U`. This is right adjoint to `Opens.map`. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variantd5c4af7a0e44101d9bf82b93791b49bad7849792ec822b083a41bf3911603010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variantd5c4af7a0e44101d9bf82b93791b49bad7849792ec822b083a41bf3911603010.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce8350efee4622f919accba1d1b2a8dd756ac9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
