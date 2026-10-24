# Sigma.ι_reindex_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1c7a3692df46db3452b21d48c6f658eb8c28c3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 612,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79b75b01-c2a2-7aea-d1a6-cea8b11e274f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14fc98b1-1dac-e136-7a83-a3526c53a4b7",
  "kind": "theorem",
  "lexical_name": "Sigma.ι_reindex_hom",
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
  "slug": "sigma-reindex-hom--2ca8f48e3346f6302119ff9f",
  "source": {
    "blob": "e1c7a3692df46db3452b21d48c6f658eb8c28c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ca8f48e3346f6302119ff9f5a2ec9f8059e060ed2017479ff4750d8640a8e54",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14fc98b1-1dac-e136-7a83-a3526c53a4b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sigma.ι_reindex_hom (b : β) :
    Sigma.ι (f ∘ ε) b ≫ (Sigma.reindex ε f).hom = Sigma.ι f (ε b) := by
  dsimp [Sigma.reindex]
  simp only [HasColimit.isoOfEquivalence_hom_π, Functor.id_obj, Discrete.functor_obj,
    Function.comp_apply, Discrete.equivalence_functor, Discrete.equivalence_inverse,
    Functor.comp_obj, Discrete.natIso_inv_app, Iso.refl_inv, Category.id_comp]
  have h := colimit.w (Discrete.functor f) (Discrete.eqToHom' (ε.apply_symm_apply (ε b)))
  simp only [Discrete.functor_obj] at h
  erw [← h, eqToHom_map, eqToHom_map, eqToHom_trans_assoc]
  all_goals { simp }
#align category_theory.limits.sigma.ι_reindex_hom CategoryTheory.Limits.Sigma.ι_reindex_hom

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c7a3692df46db3452b21d48c6f658eb8c28c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
